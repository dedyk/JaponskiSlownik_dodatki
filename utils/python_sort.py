import sys

f = open(sys.argv[1], "r")

lines = [line[0 : len(line) - 1] for line in f if line.strip()]

f.close()

lines.sort()

for currentLine in lines:
    print currentLine