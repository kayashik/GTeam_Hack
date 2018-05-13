from tkinter import *
from PIL import ImageTk, Image
import pandas as pd
from tkinter import ttk

def Recomendations():
    inx = 0
    values = [listbox.get(inx) for inx in listbox.curselection()]

    # родительский элемент
    workspace = Tk()
    # устанавливаем название окна
    workspace.title("Поведенческая модель члена летного состава")
    # устанавливаем минимальный размер окна
    workspace.minsize(500, 500)
    # выключаем возможность изменять окно
    workspace.resizable(width=False, height=False)
    #гененрируем фрейм
    frame0 = Frame(workspace)
    frame0.grid()
    lable0 = Label(frame0, height=2, width=30, text="Заполните поля,").grid()


    frame1 = Frame(workspace)
    frame1.grid()
    lable1 = Label(frame1, height=2, width=30, text="Погодные условия").grid(row=0, column=0 )
    v = IntVar()
    Radiobutton(frame1, text='Хорошие', variable=v, value=3).grid(row=0, column=1)
    Radiobutton(frame1, text='Плохиие', variable=v, value=2).grid(row=0, column=2)

    lable2 = Label(frame1, height=2, width=30, text="Время полета").grid(row=1, column=0 )
    v2 = Scale(frame1, from_=90, to=600, orient=HORIZONTAL).grid(row=1, column=1 )

    lable3 = Label(frame1, height=2, width=30, text="Оценка за тренажеры").grid(row=2, column=0 )
    lable4 = Label(frame1, height=2, width=30, text="Психическое состояние").grid(row=3, column=0 )
    lable5 = Label(frame1, height=2, width=30, text="Физическое состояние").grid(row=4, column=0 )



    workspace.mainloop()
    # Вызываем функцию эмиля
    # Emily2(value)
#
# def By_pylot_actions():
#
#     #получение имени пилота
#     def get_ot():
#         inx = 0
#         values = [listbox.get(inx) for inx in listbox.curselection()]
#         #Вызываем функцию эмиля
#         #Emily(value)
#
#     # родительский элемент
#     workspace = Tk()
#     # устанавливаем название окна
#     workspace.title("Поведенческая модель члена летного состава")
#     # устанавливаем минимальный размер окна
#     workspace.minsize(500, 500)
#     # выключаем возможность изменять окно
#     workspace.resizable(width=False, height=False)
#     #гененрируем фрейм
#     frame1 = Frame(workspace)
#     frame1.pack()
#
#     #Считывание пилотов
#     pilots = pd.read_excel('Pilots.xlsx')
#     pilots_id = pilots.index.values
#
#     #Выводим список пилотов
#     listbox = Listbox(frame1)
#     listbox.pack(side = 'top')
#     for item in pilots_id:
#         listbox.insert(END, item)
#
#     Chouse_pilot = Button(frame1, text="Построить график для выбранного пилота",
#                           command=get_ot).pack(side = 'top')
#
#     # Main = Button(frame1, text="Главная").pack(side = 'left')
#     workspace.mainloop()
#
#
#     print(values, inx, listbox.curselection())
#
# def change_otch():
#     Back = Button(root, text="Назад").pack(side='left')
#     root.mainloop()

def By_pylot_actions():
    inx = 0
    values = [listbox.get(inx) for inx in listbox.curselection()]
    #Вызываем функцию эмиля
    os.system('"'+os.getcwd()+'\Pilots.xlsx"')
    #Emily(value)

def By_trends():
    inx = 0
    values = [listbox.get(inx) for inx in listbox.curselection()]
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
Trends = Button(frame, text="Рекомендации к полету", command=Recomendations).pack(side = 'bottom')

#Выводим заголовок
heder_for_listbox = Label(frame, height=2, width=30, text="Выберите пилота")
heder_for_listbox.pack(side='top')
# heder_for_listbox.insert(END, "Выберите пилота")


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