#!/usr/bin/env python
import sys
import sqlite3
import zlib
from message_pb2 import PBEventArray


syscallList = ['listen', 'file_open', 'file_close', 'proc_exe']


def iterdb(fname):
    conn = sqlite3.connect(fname)
    cur = conn.cursor()
    r = cur.execute("select * from  events")
    cnt = 0
    try:
        while True:
            cnt += 1
            id_, seq, time_delta, ts, agent_id, host_id, buf = r.next()
            payload = zlib.decompress(buf)
            msg = PBEventArray()
            msg.ParseFromString(payload)

            for ev in msg.event:
                syscallDump(ev, ['listen', 'bind'])

            if cnt % 1000 == 0:
                print "%d processed" % cnt
    except StopIteration:
        print "%d rows.. going out" % cnt


def syscallDump(event, scallLst):
    for scallName in scallLst:
        if event.processEvent.HasField(scallName):
            print "== Syscall %s found ==" % scallName
            print "Event:", event

if __name__ == '__main__':
    iterdb(sys.argv[1])
