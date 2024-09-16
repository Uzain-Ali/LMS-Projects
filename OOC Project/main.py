import tkinter as tk
from tkinter import *
from tkinter import ttk#Import Functions from tkinter library''
import sqlite3  #'Database library Imported from C language''
from tkinter.messagebox import showinfo
import mysql.connector as sql

class LoginSignup(tk.Tk,ttk.Frame):

    def __init__(page):
        super().__init__()
 
        #Main Page 
        page.title("OOC Project(Login and Sign Up Process)")
        page.iconbitmap(r'key_rhm_icon.ico')
        page.geometry("450x150")
        page.configure(background='#f2f8fd')
        page.label=tk.Label(page,text="OOC Project",font="Algerian 30",foreground="black",background="#f2f8fd").pack()
        page.button = Button(page,text='Login',width=30,font="Times 11 bold",borderwidth=5,bg="#f2f8fd",command=page.Login_Page).pack()
        page.button = tk.Button(page, text='SignUp',width=30,font="Times 11 bold",borderwidth=5,bg="#f2f8fd",command=page.SignUp_Page).pack()


    def SignUp_Page(page):
                        page.destroy()
                        signup_page=Tk()
                        signup_page.geometry("700x370")
                        signup_page.iconbitmap(r'signup_034_icon.ico')
                        signup_page.configure(background='#f2f8fd')
                        page.bilal= Label(signup_page, text="Sign Up:", font="Bodoni 40 bold italic underline",background='#f2f8fd',fg='#5291a9')
                        page.bilal.grid(row=1, column=5)
                        page.munim=Label(signup_page,text="Name:  ",font="times 20 bold",background='#f2f8fd')
                        page.munim.grid(row=3,column=7)
                        page.munim1=Label(signup_page,text="Username: ",font="times 20 bold",background='#f2f8fd')
                        page.munim1.grid(row=4,column=7)
                        page.bilal1=Label(signup_page,text="Email:",font="times 20 bold",background='#f2f8fd')
                        page.bilal1.grid(row=5,column=7)
                        page.m=Label(signup_page,text="Password:",font="times 20 bold",background='#f2f8fd')
                        page.m.grid(row=9,column=7)
                        page.b=Label(signup_page,text="Retype Password:",font="times 20 bold",background='#f2f8fd')
                        page.b.grid(row=10,column=7)
                        page.m1=Label(signup_page,text="Phone:",font="times 20 bold",background='#f2f8fd')
                        page.m1.grid(row=11,column=7)
                        
                        


                        name_text=StringVar()
                        page.t1=Entry(signup_page,textvariable=name_text)
                        page.t1.grid(row=3,column=8)
                        username_text=StringVar()
                        page.t2=Entry(signup_page,textvariable=username_text)
                        page.t2.grid(row=4,column=8)
                        email_text=StringVar()
                        page.t3=Entry(signup_page,textvariable=email_text)
                        page.t3.grid(row=5,column=8)
                        password_text=StringVar()
                        page.t4=Entry(signup_page,textvariable=password_text)
                        page.t4.grid(row=9,column=8)
                        re_password_text=StringVar()
                        page.t5=Entry(signup_page,textvariable=re_password_text)
                        page.t5.grid(row=10,column=8)
                        phone_text=StringVar()
                        page.t6=Entry(signup_page,textvariable=phone_text)
                        page.t6.grid(row=11,column=8)
                        
                        


                        page.b1=Button(signup_page,text="Sign Up",width=20,command=page.Signup_Button,font="Times 10 bold",bg="#e5f1fb",borderwidth=5)
                        page.b1.grid(row=12,column=8)
    def Signup_Button(page):

            conn=sqlite3.connect("1.db")
            cur=conn.cursor()
            cur.execute("CREATE TABLE IF NOT EXISTS test(id INTEGER PRIMARY KEY, username text, email text, password text)")
            cur.execute("INSERT INTO test Values(Null,?,?,?)",(page.t2.get(),page.t3.get(),page.t4.get()))
            conn1=sqlite3.connect("2.db")
            cur1=conn1.cursor()
            cur1.execute("CREATE TABLE IF NOT EXISTS test(id INTEGER PRIMARY KEY,name text,retype text,phone text)")
            cur1.execute("INSERT INTO test Values(Null,?,?,?)",(page.t1.get(),page.t5.get(),page.t6.get()))
            showinfo(title="information",message="Account Created")
            conn.commit()
            conn.close()
            conn1.commit()
            conn1.commit()
            
        
        

    def Login_Page(page):
                        page.destroy()
                        login_page=Tk()
                        login_page.geometry("600x250")
                        login_page.iconbitmap(r'log_in_9Hc_icon.ico')
                        login_page.configure(background='#f2f8fd')
                        page.bilal=Label(login_page,text="Log In",font="Bodoni 40 bold italic underline",background='#f2f8fd',fg='#5291a9')
                        page.bilal.grid(row=1,column=1)
                        page.munim=Label(login_page,text="E-mail",font="times 20 bold",background='#f2f8fd')
                        page.munim.grid(row=2,column=4)
                        page.bilal1=Label(login_page,text="Password",font="times 20 bold",background='#f2f8fd')
                        page.bilal1.grid(row=3,column=4)
                        page.munim1=Label(login_page,font="times 20",background='#f2f8fd')
                        page.munim1.grid(row=5,column=5)

                        email_text=StringVar()
                        page.t1=Entry(login_page,textvariable=email_text)
                        page.t1.grid(row=2,column=5)
                        password_text=StringVar()
                        page.t2=Entry(login_page,textvariable=password_text)
                        page.t2.grid(row=3,column=5)

                        page.b1=Button(login_page,text="login",width=20,command=page.Login_Button,bg="#e5f1fb",borderwidth=5)
                        page.b1.grid(row=4,column=5)

    def Login_Button(page): 
            conn=sqlite3.connect("1.db")
            cur=conn.cursor()
            cur.execute("SELECT * FROM test WHERE email=? AND password=?",(page.t1.get(),page.t2.get()))
            row=cur.fetchall()
            conn.close()
            print(row)
            if row!=[]:    
                    page.user_name=row[0][1]
                    try:##Exceptional Handling
                         page.munim1.config(text="Username found \n with name: "+page.user_name)
                    except:
                            page.munim1.config(text="There is no Data Entry",fg="red")
            else:
                    page.munim1.config(text="User not found ")



if __name__=="__main__":
    app= LoginSignup()
    app.mainloop()



