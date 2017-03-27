#!/usr/bin/env python3
import sys
import i3

def focus_num(switch_to_num):
    parent = i3.parent(i3.filter(focused=True)[0]['id'])

    print(parent)
    if len(parent['nodes']) >= switch_to_num:
        switch_to_cont = parent['nodes'][switch_to_num]
        i3.focus(con_id=switch_to_cont['id'])
        while i3.focus('child')[0]:
            pass

if __name__ == "__main__":
    switch_to_num = int(sys.argv[1]) - 1
    focus_num(switch_to_num)
