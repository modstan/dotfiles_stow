#!/usr/bin/python
import subprocess
import pickle
import time
import os
from datetime import datetime
from datetime import date

filename = "/home/modestas/working_hours/%s.file" % date.today()

def working_hours(data):
    total_time = 0
    last_time = data[0]["ts"]
    last_state = data[0]["state"]
    for i in data:
        delta = i["ts"] - last_time
        #print("d: %s ls: %s lt %s cs %s ct %s delta: %f" % (datetime.fromtimestamp(i["ts"]), last_state, last_time, i["state"], i["ts"], delta))
        if  i["state"] == last_state and i["state"] == "unlocked":
            if delta < 500:
                total_time = total_time + delta
            last_time = i["ts"]
        elif i["state"] == last_state and i["state"] == "locked":
            last_time = i["ts"]
            pass
        elif i["state"] == "locked":
            last_time = i["ts"]
            last_state = i["state"]
            #print("here need to redute total_time by 5 min")
            total_time = total_time - 300
            pass
        elif i["state"] == "unlocked":
            if delta < 500:
                total_time = total_time + delta
            last_time = i["ts"]
            last_state = i["state"]
            pass
        else:
            print("this should not happen")

        #print("total time %f" % total_time)
    return total_time

data = []
try:
    f = open(filename, "rb")
    data = pickle.load(f)
    f.close()
except:
    pass

#get current state of locker
pid = subprocess.run(["pidof", "-s", "swaylock"], capture_output=True).stdout
if pid:
    data.append({"ts": datetime.now().timestamp(), "state": "locked"})
    #print("lockintas")
else:
    data.append({"ts": datetime.now().timestamp(), "state": "unlocked"})
    #print("prie kompo")

total_time = working_hours(data)

print("Tw: %s" % (time.strftime('%H:%M', time.gmtime(total_time * 1))))

f = open(filename, 'wb')
pickle.dump(data, f)
f.close()
