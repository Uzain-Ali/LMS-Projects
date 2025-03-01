from tkinter import *
from PIL import Image, ImageTk
from subprocess import call


root = Tk()
root.title("Admin Dashboard")
root.resizable(False, False)
root.geometry("1200x650+80+20")


def Check():
    root.destroy()
    call(["python", "C_info.py"])

def Review():
    root.destroy()
    call(["python", "C_review.py"])

def logout():
    root.destroy()
    call(["python", "main.py"])


canv = Canvas(root, width=1200, height=180, bg='white', bd=2)
canv.pack(fill='both', expand=True)

img1 = ImageTk.PhotoImage(Image.open("i2.jpg"))
canv.create_image(0, 0, anchor=NW, image=img1)

canv.create_text(620, 70, text="Hotel Management System", font=("times new roman", 40, "bold"), fill="gold")

main_frame = Frame(root, bd=2, relief=RIDGE)
main_frame.place(x=0, y=180, width=1200, height=470)

canv = Canvas(main_frame, width=1200, height=470, bg='white')
canv.pack(fill='both', expand=True)

img2 = ImageTk.PhotoImage(Image.open("i1.jpg"))
canv.create_image(252, 0, anchor=NW, image=img2)

img3 = ImageTk.PhotoImage(Image.open("i5.jpg"))
canv.create_image(0, 225, anchor=NW, image=img3)

lbl_menu = Label(main_frame, text="MENU", font=("times new roman", 20, "bold"), bg="black", fg="gold", bd=4, relief=RIDGE)
lbl_menu.place(x=0, y=0, width=250)

btn_frame = Frame(main_frame, bd=1, relief=RIDGE)
btn_frame.place(x=0, y=40, width=250, height=170)

cust_btn = Button(btn_frame, width=20, command=Check, text="Check_Info", font=("times new roman", 15, "bold"), bg="black", fg="white")
cust_btn.grid(row=0, column=0, pady=1)

rvw_btn = Button(btn_frame, width=20, text="Review", command=Review,  font=("times new roman", 15, "bold"), bg="black", fg="white")
rvw_btn.grid(row=1, column=0, pady=1)

logout_btn = Button(btn_frame, width=20, text="Log Out", command=logout, font=("times new roman", 15, "bold"), bg="black", fg="white")
logout_btn.grid(row=3, column=0, pady=1)


root.mainloop()
