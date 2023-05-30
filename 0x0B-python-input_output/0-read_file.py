#!/usr/bin/python3

filename = input("Select a file:")

with open(filename, 'r', encoding = 'utf-8') as f:
    output =  f.read()
    print(output)

