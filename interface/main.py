from tkinter import *
from PIL import ImageTk, Image
import pandas as pd
from tkinter import ttk
import os
import numpy as np
import datetime
import warnings
warnings.simplefilter('ignore')
from sklearn.ensemble import GradientBoostingRegressor
from Part1 import part1
from Part2 import part2

def Recomendations():

    def PilotRaiting_Emy():
        aircraft_id = listbox1.get()
        aircraft_id = int(aircraft_id)

        datetime = day_time.get()
        # weather = wather.get()
        print(weather, datetime, aircraft_id, traveltime)
        text = part2(weather, datetime, aircraft_id, traveltime, threshold=65)
        pilots_list = Text(frame1)
        # pilots_list.grid_bbox(column=0, row=4, col2=2, row2=1)

        pilots_list.grid(row=5, column=0, columnspan=3)
        pilots_list.insert(1.0, text)
        # workspace.mainloop()

    traveltime = 1
    def newscale(newnum):
        traveltime = int(newnum)

    values =value=listbox.get()

    # родительский элемент
    workspace = Tk()
    # устанавливаем название окна
    workspace.title("Рекомендованные к полету пилоты")
    # устанавливаем минимальный размер окна
    workspace.minsize(500, 500)
    # выключаем возможность изменять окно
    workspace.resizable(width=False, height=False)
    #гененрируем фрейм
    frame0 = Frame(workspace)
    frame0.grid()
    lable0 = Label(frame0, height=2, width=30, text="Заполните поля:").grid()

    def sel():
        weather = wather.get()
        print(wather.get())

    frame1 = Frame(workspace)
    frame1.grid()
    lable1 = Label(frame1, height=2, width=30, text="Погодные условия").grid(row=0, column=0 )
    wather = StringVar()
    raito1 = Radiobutton(frame1, text='Хорошие', variable=wather, value='Хорошие', command=sel)
    raito1.grid(row=0, column=1)
    raito2 = Radiobutton(frame1, text='Плохиие', variable=wather, value='Плохие', command=sel)
    raito2.grid(row=0, column=2)

    lable2 = Label(frame1, height=2, width=30, text="Время полета").grid(row=1, column=0 )
    # travel_time = Scale(frame1, from_=90, to=600, orient=HORIZONTAL, command=newscale).grid(row=1, column=1 )

    lable3 = Label(frame1, height=2, width=30, text="Время суток").grid(row=2, column=0 )

    day_time = StringVar()
    raito3 = Radiobutton(frame1, text='Светоле время', variable=day_time, value='Светлое')
    raito3.grid(row=2, column=1)
    raito4 = Radiobutton(frame1, text='Темное время', variable=day_time, value='Темное')
    raito4.grid(row=2, column=2)

    lable4 = Label(frame1, height=2, width=30, text="Тип самолета").grid(row=3, column=0 )
    # Считывание пилотов
    aircrafts = pd.read_excel('Aircrafts.xlsx')
    aircrafts_id = aircrafts.index.values

    # Выводим список пилотов
    listbox1 = ttk.Combobox(frame1, values=str(aircrafts_id)[1:-1])
    listbox1.grid(row=3, column=1 )

    # Вызываем функцию эмиля

    pilot_raiting = Button(frame1, text="Оценить", command=PilotRaiting_Emy)
    pilot_raiting.grid(row=4, column=0)

    workspace.mainloop()


def By_pylot_actions():
    value=listbox.get()
    #Вызываем функцию Эмиля
    part1(int(value))
    os.system('"' + os.getcwd() + '/results.xlsx"')

def PilotRaiting():
    value=listbox.get()
    value = int(value)

    # родительский элемент
    workspace2 = Tk()
    # устанавливаем название окна
    workspace2.title("Оценка готовности пилота к полету")
    # устанавливаем минимальный размер окна
    workspace2.minsize(500, 500)
    # выключаем возможность изменять окно
    workspace2.resizable(width=False, height=False)
    # гененрируем фрейм
    frame00 = Frame(workspace2)
    frame00.grid()
    lable00 = Label(frame00, height=2, width=30, text="Заполните поля:").grid()

    frame10 = Frame(workspace2)
    frame10.grid()
    lable10 = Label(frame10, height=2, width=30, text="Погодные условия").grid(row=0, column=0)
    wather0 = IntVar()
    Radiobutton(frame10, text='Хорошие', variable=wather0, value=0).grid(row=0, column=1)
    Radiobutton(frame10, text='Плохиие', variable=wather0, value=1).grid(row=0, column=2)

    lable20 = Label(frame10, height=2, width=30, text="Время полета").grid(row=1, column=0)
    travel_time0 = Scale(frame10, from_=90, to=600, orient=HORIZONTAL).grid(row=1, column=1)

    lable30 = Label(frame10, height=2, width=30, text="Время суток").grid(row=2, column=0)
    day_time0 = IntVar()
    Radiobutton(frame10, text='Светоле время', variable=day_time0, value=0).grid(row=2, column=1)
    Radiobutton(frame10, text='Темное время', variable=day_time0, value=1).grid(row=2, column=2)

    lable40 = Label(frame10, height=2, width=30, text="Тип самолета").grid(row=3, column=0)
    # Считывание пилотов
    aircrafts = pd.read_excel('Aircrafts.xlsx')
    aircrafts_id = aircrafts.index.values

    # Выводим список пилотов
    listbox1 = ttk.Combobox(frame10, values=str(aircrafts_id)[1:-1]).grid(row=3, column=1)

    # Вызываем функцию эмиля
    # text = Emily2(value)

    pilots_list = Text(frame10, height=10)
    # pilots_list.grid_bbox(column=0, row=4, col2=2, row2=1)
    pilots_list.grid(row=4, column=0, columnspan=3)
    pilots_list.insert(1.0, text)

    workspace2.mainloop()
    # Вызываем функцию эмиля
    # Emily2(value)

# родительский элемент
root = Tk()
# устанавливаем название окна
root.title("Генератор отчетов AMONIC")
# устанавливаем минимальный размер окна
root.minsize(500, 600)
# выключаем возможность изменять окно
root.resizable(width=False, height=False)
# добавляем изображене
image = ImageTk.PhotoImage(Image.open("images/Main_image.png"))
label = Label(root, image=image)
label.pack()
#создаем рабочую область
frame = Frame(root)
frame.pack()
#Создаем кнопки
Lepestk = Button(frame, text="Поведенческая модель члена летного состава", command=By_pylot_actions).pack(side = 'bottom')
recomendations = Button(frame, text="Рекомендованные к полету пилоты", command=Recomendations).pack(side = 'bottom')
pilot_raiting = Button(frame, text="Оценка готовности пилота к полету", command=PilotRaiting).pack(side = 'bottom')

#Выводим заголовок
heder_for_listbox = Label(frame, height=2, width=30, text="Выберите пилота")
heder_for_listbox.pack(side='top')

#Считывание пилотов
pilots = pd.read_excel('Pilots.xlsx')
pilots_id = pilots.index.values

#Выводим список пилотов
listbox = ttk.Combobox(frame, values=str(pilots_id)[1:-1])
listbox.pack(side = 'top')



#Выводим список пилотов
# listbox = Listbox(frame)
# listbox.pack(side = 'top')
# for item in pilots_id:
#     listbox.insert(END, item)

# Chouse_pilot = Button(frame, text="Построить график для выбранного пилота",
#                       command=get_ot).pack(side = 'top')


#хэдер
# frame_head = Frame(root)
# frame_head.pack()
# Main = Button(frame_head, text="Главная",).pack(side = 'left')
# создаем рабочую область

# Pilot1 = Button(frame, text="").pack(side = 'left')

# поле для ввода первого аргумента уравнения (a)
# a = Entry(frame, width=3)
# a.grid(row=1, column=1, padx=(10, 0))

# текст после первого аргумента
# a_lab = Label(frame, text="x**2+").grid(row=1, column=2)

# поле для ввода второго аргумента уравнения (b)
# b = Entry(frame, width=3)
# b.grid(row=1, column=3)
# текст после второго аргумента
# b_lab = Label(frame, text="x+").grid(row=1, column=4)

# поле для ввода третьего аргумента уравнения (с)
# c = Entry(frame, width=3)
# c.grid(row=1, column=5)
# текст после третьего аргумента
# c_lab = Label(frame, text="= 0").grid(row=1, column=6)

# кнопка решить
# but = Button(frame, text="Solve").grid(row=1, column=7, padx=(10, 0))

# место для вывода решения уравнения
# output = Text(frame, bg="lightblue", font="Arial 12", width=35, height=10)
# output.grid(row=2, columnspan=8)

# запускаем главное окно
root.mainloop()