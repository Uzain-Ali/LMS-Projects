import MySQLdb as m

db = m.connect(host = "localhost", user="root", passwd="uzain", db="election")
cur = db.cursor()

cur.execute("Create table countvotes (name varchar(50), count int)")
cur.execute("commit;")
cur.execute("Insert into countvotes(name,count) Values('PTI',0)")
cur.execute("commit;")
cur.execute("Insert into countvotes(name,count) Values('PMLN',0)")
cur.execute("commit;")
cur.execute("Insert into countvotes(name,count) Values('MQM',0)")
cur.execute("commit;")
cur.execute("Insert into countvotes(name,count) Values('PPP',0)")
cur.execute("commit;")
cur.execute("Insert into countvotes(name,count) Values('JPI',0)")
cur.execute("commit;")
cur.execute("Insert into countvotes(name,count) Values('PSZ',0)")
cur.execute("commit;")
