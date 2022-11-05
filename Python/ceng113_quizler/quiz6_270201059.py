file = "members.txt"
a = open(file,"r")
lines = a.readline()
dicti = dict()
while lines != "":
    name = lines.split(":")
    dicti[name[0]] = lines
    lines = a.readline()
    if lines == "":
      break