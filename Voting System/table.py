import MySQLdb as m

db = m.connect(host="localhost", user="root", passwd="uzain", db="election")

cur = db.cursor()

cur.execute("Create table results (name varchar(50), cnic varchar(12), age varchar(3), gender varchar(6), vote varchar(30))")
cur.execute("commit;")
