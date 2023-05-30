#!/usr/bin/python3


def readFile(filename):

    with open(filename, 'r', encoding = 'utf-8') as f:
        output =  f.read()
        print(output)
readFile("README.md")
