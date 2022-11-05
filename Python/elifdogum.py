import tkinter as tk
import datetime 
import random

class Application(tk.Frame):
    
    def __init__(self, master=None):
        
        super().__init__(master)
        self.master = master
        self.pack()
        self.create_widgets()
        self.mesajlar =  ["İyi ki doğdun!",
                          "İyi ki varsın!",
                          "Gördüğüm en sevimli kızsın!",
                          "Çok güzel gözlerin var!","İngilizceyi senin kadar güzel konuşan görmedim!",
                          "Harikasın.. şey .. her açıdan!","Aynaya bakarken yüzünün kızardığı oluyor mu?",
                          "YaWru","Çökertme kebabına benziyorsun","Karamel dolgulu çikolata mısın mübarek",
                          "Nazar duası:\nاَعُوذُ بِكَلِماَتِ اللهِ التَّآمّةُ مِنْ كُلِّ شَيْطَاَنِ وَ هآمَّةِ وَمِنْ كُلِّ عَيْنٍ لاَمَّ","Pü Maşallah süpanallahhh"]

    def dogumgunumesajı(self):
        print( self.mesajlar[random.randint(0,len(self.mesajlar)-1)])
        
    def sanakekyaptım(self):
        mum = 19
        for a in range(1,mum+1):
            if a==19:
                print("🕯")
            else:
                print("🕯",end="")

        
    def create_widgets(self):
        self.dgko = tk.Button(self)
        self.dgko["text"] = "İltifat zamanı, bas anam bas!!"
        self.dgko["command"] = self.dogumgunumesajı
        self.dgko.pack(side="bottom")

        
        
        self.söyle_saat = tk.Button(self)
        self.söyle_saat["text"] = "🤠İyi doğdun Elif!🤠\nKaç saniye oldu biliyor musun?(Öğrenmek için tıkla)\n İstediğin kadar 🦸"
        self.söyle_saat["command"] = self.say_saniye
        self.söyle_saat.pack(side="top")
    
    def say_saniye(self):

        now = datetime.datetime.now()
        tarih = datetime.datetime(2002, 4, 15,10,30,0,0)
        print(str((now-tarih).seconds)+" saniyedir Dünya seninle güzelleşiyor!")
        self.sanakekyaptım()
        
        
root = tk.Tk()
root.title("Doğum günü kızı")
app = Application(master=root)
app.mainloop()
