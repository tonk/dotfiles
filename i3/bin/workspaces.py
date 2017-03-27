#!/usr/bin/python
# -*- coding: utf-8 -*-

# Copyright (C) René 'Necoro' Neumann

#
# Some helper functions for managing workspaces in i3.
#

import sys
from os.path import realpath, dirname, join, basename

cwd = realpath(dirname(__file__))
sys.path.insert(1, join(cwd, "libs"))

import i3
import sh
from functools import partial

DEFAULT = "switch"

def nag(msg, **kwargs):
    sh.i3_nagbar(m = "%s: %s" % (basename(sys.argv[0]), msg), **kwargs)

switch = i3.workspace
move   = partial(i3.move, "container to workspace")

def new_ws(cmd, args):
    """Create a new workspace by using the first free number > 0."""
    nums = (w["num"] for w in i3.get_workspaces())
    nums = filter(lambda n: n is not None and n >= 0, nums)

    try:
        exe = args[args.index("--exec")+1]
    except (IndexError, ValueError):
        exe = None

    i = -1 # fallback if `nums` happens to be empty
    for i,n in enumerate(sorted(nums)):
        if i != n:
            cmd(str(i))
            break
    else:
        cmd(str(i+1))

    if exe:
        # We use i3.exec_ here instead of sh.Command, as we do not want the
        # exe to be a child of this script's process
        # Also we get startup notification support for free :-)
        if sh.which(exe): # i3 exec always yields 'success'
            i3.exec_(exe)
        else:
            nag("Command '%s' not found!" % exe)

def to_ws(cmd, prompt, args):
    """Use `dmenu` to switch or move to a workspace."""
    ws = sorted(w["name"] for w in i3.get_workspaces())

    try:
        sel = sh.dmenu(b = True, p = prompt, _in = "\n".join(ws)).strip()
    except sh.ErrorReturnCode:
        sel = None

    if sel:
        cmd(sel)

def rename(args):
    cur_ws = i3.filter(i3.get_workspaces(), focused = True)[0]
    input = sh.i3_input.bake(P = "Rename workspace: ")

    if "--keep-num" in args and cur_ws["num"]:
        input(F = ('rename workspace to "%d: %%s"' % cur_ws["num"]))
    else:
        input(F = 'rename workspace to "%s"')

if __name__ == "__main__":
    try:
        arg = sys.argv[1]
        args = sys.argv[1:]
    except IndexError:
        arg = DEFAULT
        args = []

    if arg == "switch":
        to_ws(switch, "Switch to:", args)
    elif arg == "move":
        to_ws(move, "Move to:", args)
    elif arg == "new":
        new_ws(switch, args)
    elif arg == "move_new":
        new_ws(move, args)
    elif arg == "rename":
        rename(args)
    else:
        nag("Unknown arg: %s" % arg)
        sys.exit(1)

