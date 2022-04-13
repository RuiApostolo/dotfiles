#!/usr/bin/python3
#  import re
#  import itertools
#  import numpy as np
#  from math import floor
#  from collections import defaultdict
#  from copy import deepcopy


def part1(data):
    result = 0
    return result


def part2(data):
    result = 0
    return result


if __name__ == '__main__':
    with open("input", "r") as f:
        # several lines to list
        data = f.readlines()
        # entire file to one string
        #  data = f.read().strip()
        # to dict:
        #  data_dict = {}
        #  for line in f:
        #      key, values = line.split()
        #      data_dict[key] = values
    # one per line to list of ints:
    data = list(map(int, data))
    # one per line to list of strings
    #  data = list(map(lambda l: l.rstrip("\n"), data))
    # one comma separated line to ints
    #  data = list(map(int, data.split(',')))
    # one comma separated line to str
    #  data = list(map(str, data.split(',')))
    respart1 = part1(data)
    print(f"Part 1 result:    {respart1}")
    respart2 = part2(data)
    print(f"Part 2 result:    {respart2}")
