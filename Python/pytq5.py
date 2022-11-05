import sys
from PyQt5 import QtWidgets

def Window():
    app=QtWidgets.QApplication(sys.argv)#uygulama oluşturma
    
    
    window=QtWidgets.QWidget()#pencere oluşumu için widget kullanma
    
    
    
    window.setWindowTitle("Welcome")#pencerenin başlığını yazma
    window.setGeometry(800, 700, 600, 500)
    
    
    
    
    
    window.show()#gösterme
    
    
    
    
    
    
    sys.exit(app.exec_())#çıkış




Window()
