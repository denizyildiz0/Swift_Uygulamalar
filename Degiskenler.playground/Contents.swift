import UIKit

//***************************** YAZDIRMA KOMUTLARI *****************************

var ogrenciAdi = "Deniz"
var ogrenciNo = 345
var ogrenciYasi = 23
var ogrenciBoy = 1.65

print(ogrenciAdi)
print(ogrenciNo)
print(ogrenciYasi)
print(ogrenciBoy)


var urun_id: Int = 3416
var urun_adi: String = "Muz"
var urun_kg: Int = 3
var urun_fiyat: Double = 39.90
var urun_tedarikci: String = "Snowy Hal"

print(urun_id)
print(urun_adi)
print(urun_kg)
print(urun_fiyat)
print(urun_tedarikci)


print("Ürün Adi: \(urun_adi)")
print("Ürün Fiyatı: \(urun_fiyat)")
print("Ürün Tedarikçisi: \(urun_tedarikci)")
print("\(urun_tedarikci)'den fiyatı \(urun_fiyat)₺ olan \(urun_adi)'dan \(urun_kg) kg aldım.")




//***************************** DEĞER ATAMALARI *****************************

//Örnek 1
var sayi = 5


//Örnek 2
var numara:Int?  // "?" optional anlamına gelmektedir içinde veride olabilir nil(boş) de olabilir.
numara = 10

print(numara!)   // "!" bana güvnebilirsin içerisinde değer var demektir


//Örnek 3 - Tek satırda birden fazla tanımlama
var sayi1 = 20, sayi2 = 67, kelime = "hello world", harf = "a"
print(kelime)
print(harf)
print(sayi1)
print(sayi2)


//Örnek 4 - Değişkenin değerini daha sonra değiştirme
var fiyat = 15.90
print(fiyat)

fiyat = 20.90
print(fiyat)


//Örnek 5 - Değişkenler ile işlem yaptıktan sonra tekrar bir işlem yapaılabilir.
var s1 = 90
var s2 = 100
var toplam = s1 + s2
print(toplam)


//Örnek 6 - Type Safety (Önce atadığımız değerin türü ne ise sadece aynısını atabiliriz int atandıysa string atanmaz hata verir.)
var sonuc = 100
sonuc = 50
//sonuc = "merhaba" --> hata verir



//***************************** LOCAL - GLOBAL DEĞİŞKEN KAPSAMI *****************************
// (Local her zaman globale baskındır)

class Deneme {
    var x = 10 //Global
    var y = 20 //Global
    
    func topla() {
        var x = 34 //Local
        x = x + y  // Y hala aynı kaldığı için Global
        print(x)
    }
    
    func carp() {
        x = x * y //10 * 20 -global-
        print(x)
    }
}
var d = Deneme()
d.topla()
d.carp()



//***************************** CONSTANT - SABİTLER *****************************
/*
-->Sabitler değerleri değiştirilemezler.
-->Hafızadan kazanç sağlarlar.
*/

let pi = 3.14
let klorOrani:Double = 3.54
let isim = "Ayşe"



//***************************** KAÇIŞ KARAKTERLERİ *****************************

/*
 \\ --> \ işareti
 \t --> bir tab boşluk bırakır
 \n --> bir alt satıra iner
 \" --> çift tırnak işareti
 \' --> tek tırnak işareti
 */

//Örnekler
let yazi = "Mehmet \"Nasılsın\" dedi."
print(yazi)

var yazi1 = "Merhaba bu \"ios\"\n\teğitiminde \'swift\' dilini öğrenicez."
print(yazi1)


//***************************** ARİTMATİK OPERATÖRLERİ *****************************

//Daire alanı hessaplama

let piSayi = 3.14
let yaricap = 2.0
let alan = piSayi * yaricap * yaricap

print(alan)

//F = m x a Uygulanan kuvvet(F) = Cismin kütlesi(m) x Cismin ivmesi(a)

var m = 12.5
var a = 10.0
var f = m * a
print(f)


//Ax
var v = 12.7
var v0 = 23.56
var t = 3.5

var x1 = ((v+v0)/2)*t
print(x1)

var x2 = (v0*t) + (a*t*t)/2
print(x2)


//***************************** KISALTMALAR *****************************

 var y = 10

y = y + 2
print(y)

y += 2
print(y)

y *= 3
print(y)

y -= 4
print(y)

y /= 2
print(y)



//***************************** TÜR DÖNÜŞÜMÜ *****************************

// 1- Sayısaldan sayısala dönüşüm
// 2- Sayısaldan metine dönüşüm
// 3- Metinden sayısala dönüşüm
// Int(), Float(), Double(), String()

//--- Sayısaldan Sayısala ---

var e:Int = 34
var b:Double = 27.85
var c:Float = 62.50


var sonuc1:Int = Int(b)
var sonuc2:Double = Double(e)
var sonuc3:Int = Int(c)

print(sonuc1)
print(sonuc2)
print(sonuc3)

//--- Sayısaldan Metine ---

var str1 = String(e)
var str2 = String(b)
var str3 = String(c)

print(str1)
print(str2)
print(str3)

//--- Metinden Sayısala ---

//23 , 48t , +90536 , h5467

var deger1 = "34"

/*
let deger2 = Int(deger1)
print(deger2!)  // kullanım dogru değil boşta olabilir doluda içerisine ! eklersek doğru sayılabilir

// yukardakinin yerine if let yapısı kullanmalıyız
//metinden sayısala her zaman if let yapısını kullanmalıyız
*/

if let deger1 = Int(deger1) {
    print(deger1)
}


var deger2 = "34.56"

if let deger2 = Double(deger2) {
    print(deger2)
}

var deger3 = "58"

if let deger3 = Int(deger3) {
    print(deger3)
}
    


//***************************** TUPLES *****************************

// -->Tuples class ve struct yapılarının basit halidir.
// -->Farklı türde verileri içerisinde tutabilir.
// --> Çoklu değişken gibidir.

//Kullanımı:
var kisi = ("Deniz","Yıldız")

var ad = kisi.0  //Deniz
var soyad = kisi.1  //Yıldız

print(ad)
print(soyad)


//Veri Atama
kisi.0 = "Ayşe"
print(kisi)


//İç İçe
var ogrenci:(Int,(Bool,String)) = (1234,(true,"Ahmet"))
print(ogrenci.0) //1234
print(ogrenci.1) //true,Ahmet
print(ogrenci.1.0) //true
print(ogrenci.1.1) //Ahmet
