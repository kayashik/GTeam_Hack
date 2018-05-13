import tkinter as tk
import tkinter.filedialog as fd
import os
from sys import exit
import warnings
warnings.simplefilter("ignore")


class ChooseFiles(tk.Frame):
    def __init__(self, panels, main_fun, master=None, title='Выбор файла(ов)'):
        super().__init__(master)
        self.pack()
        self.master.title(title)
        self.height_ = min(500 + 50 * len(panels), 1000)
        self.width_ = min(max(700, max(list(map(lambda d: len(d['label_text']) * 10 + 40, panels)))), 1000)
        self.master.geometry('{}x{}+200+100'.format(self.width_, self.height_))

        self.initialdir = os.getcwd()
        self.panels = []
        self.main_fun = main_fun
        for panel in panels:
            self.add_choose_panel(**panel)
        self.create_widgets()

    def create_widgets(self):
        self.frame_btn_ok = tk.Frame(self, bd=10, width=100)
        self.frame_btn_ok.pack(side='top')
        self.btn_ok = tk.Button(self.frame_btn_ok, width=30)
        self.btn_ok['text'] = 'OK'
        self.btn_ok['command'] = self.ok
        self.btn_ok.pack(side='top')

        self.frame_out_text = tk.Frame(self, bd=10, width=100)
        self.frame_out_text.pack(side='top')
        self.out_text = tk.Text(self.frame_out_text, state='disable')
        self.out_text.pack(side='left')
        self.scrollbar = tk.Scrollbar(self.frame_out_text)
        self.scrollbar.pack(side='left', fill='y')
        self.scrollbar['command'] = self.out_text.yview
        self.out_text['yscrollcommand'] = self.scrollbar.set

        self.master.protocol('WM_DELETE_WINDOW', self.quit)  # обработчик закрытия окна

    def quit(self):
        self.destroy()
        print('Выход из программы')
        exit()

    def ok(self):
        self.delete_out_text()
        filenames = {}
        for name in self.panels:
            filenames[name] = getattr(self, '{}_entry'.format(name)).get()

        code = self.main_fun(filenames, lambda text: self.add_text(text))
        self.add_text('Работа программы завершена. Exit code: {}'.format(code))

    def add_choose_panel(self, name='', label_text='', filetypes=(('Excelfiles', '.xls'), ('Excelfiles', '.xlsx'))):
        frame = tk.Frame(self, bd=10, width=self.width_ - 40)
        frame.pack(side='top')
        setattr(self, '{}_frame'.format(name), frame)

        self.panels.append(name)

        label = tk.Label(frame, text=label_text)
        label.pack(side='top')
        setattr(self, '{}_label'.format(name), label)

        entry = tk.Entry(frame, font="Arial 10", width=60)
        entry.pack(side='left')
        setattr(self, '{}_entry'.format(name), entry)

        btn = tk.Button(frame, text='Обзор', bg="white", fg="black", width=10)
        btn['command'] = lambda: self.choose_file(name, filetypes)
        btn.pack(side='left')
        setattr(self, '{}_btn'.format(name), btn)

    def choose_file(self, name, filetypes):
        filename = fd.askopenfilename(initialdir=self.initialdir,
                                      filetypes=filetypes,
                                      title='Выберите файл'
                                     )
        entry = getattr(self, '{}_entry'.format(name))
        entry.delete(0, 'end')
        entry.insert(0, filename)
        self.initialdir = os.path.dirname(filename)

    def add_text(self, text):
        self.out_text.configure(state='normal')
        self.out_text.insert('end', text + '\n')
        self.out_text.update()
        self.out_text.configure(state='disable')

    def delete_out_text(self):
        self.out_text.configure(state='normal')
        self.out_text.delete('1.0', 'end')
        self.out_text.configure(state='disable')


if __name__ == '__main__':
    pass




