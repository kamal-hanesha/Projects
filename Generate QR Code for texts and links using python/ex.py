import pyqrcode
import cv2
text=pyqrcode.create('HI HELLO GOOD EVENING!!!!!')
url=pyqrcode.create("www.google.com")
text.png('1.png',scale=6)
url.png('2.png',scale=6)
detector=cv2.QRCodeDetector()
reval1,point,s_qr=detector.detectAndDecode(cv2.imread('1.png'))
reval2,point,s_qr=detector.detectAndDecode(cv2.imread('2.png'))
print(reval1)
print(reval2)