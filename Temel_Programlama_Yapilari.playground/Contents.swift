import UIKit


import UIKit

// ********************* KARŞILAŞTIRMA OPERATÖRÜ *********************

// Eşittir ==
// Eşit Değil !=
// Büyüktür >
// Küçüktür <
// Büyük Eşit >=
// Küçük Eşit <=


// ********************* MANTIKSAL OPERATÖRLER *********************

// --> AND (&&) : Her iki koşulda sağlanıyorsa true olur.
// --> OR (||) : İki koşuldan biri sağlanıyorsa true olur.
// --> NOT (!) : Var olmayan durumun tersine dönüştürür.

var s1 = 60
var s2 = 40

var y1 = 90
var y2 = 120

print(s1 == s2) //false
print(s1 > s2) //true
print(s1 >= s2) //true
print(s1 < s2) //false
print(s1 <= s2) // false
print(s1 != s2) // true

print(s1 > s2 || y1 > y2) // true
print(s1 > s2 && y1 > y2) // false


// ********************* KOŞULLU İFADELER *********************

// Örnek 1
var yas = 18
if yas >= 18 {
    print("Reşitsiniz")
}


// Örnek 2 : ELSE
if yas >= 18 {
    print("Reşitsiniz")
}else{
    print("Reşit Değilsiniz")
}


// Örnek 3 : String Kıyaslama
var isim = "Ahmet"

if isim == "Ahmet" {
    print("Merhaba Ahmet")
}else{
    print("Tanınmayan Kişi")
}


// Örnek 4 : Else if
var ad = "Mehmet"

if ad == "Ahmet" {
    print("Merhaba Ahmet")
}
else if ad == "Mehmet"{
    print("Merhaba Mehmet")
}
else{
    print("Tanınmayan kişi")
}


// Örnek 5 : Çoklu Şartlar
var kullaniciAdi = "Admin"  //tüm koşullar saglanmalı aksi takdirde false döner
var sifre = 1234

if kullaniciAdi == "Admin" && sifre == 1234 {
    print("Başarılı Giriş")
}
else{
    print("Hatalı kullanıcı")
}


// Örnek 6 : Çoklu Şart OR

var sinif = 10   //bir koşulu sağlaması yeterli

if sinif == 9 || sinif == 10 || sinif == 11 || sinif == 12
{
    print("YKS Sınavına hazırlanabilirsiniz")
}


// Örnek 7 : Ternary Conditional - Üçlü Şart

var k = 20
var b = 30

k == b ? print("Değerler eşit") : print("Değerler eşit değil")


// ****************** IF ALAN HESABI ******************

print("Dikdörtgen alanı (1)")
print("Çember alanı (2)")
let secim = 1
let kisakenar = 10
let uzunkenar = 20
let yaricap = 4

print("Seçiminiz: \(secim)")

if secim == 1 {
    print("Dikdörtgen Alanı")
    print("Kısa kenar \(kisakenar)")
    print("Uzun kenar \(uzunkenar)")
    let alan = kisakenar * uzunkenar
    print("Sonuç: \(alan)")
}

if secim == 2 {
    print("Çember Alanı")
    print("Yarıçap: \(yaricap)")
    let alan = 3.14 * Double(yaricap) * Double(yaricap)
    print("Sonuc: \(alan)")
}

// ****************** DÖRT İŞLEM ******************

print("Toplama (1)")
print("Fark (2)")
print("Çarpma (3)")
print("Bölme (4)")

let tercih = 2
let sayi1 = 98
let sayi2 = 45

print("Tercihiniz: \(tercih)")

if tercih == 1{
    print("Toplam: \(sayi1 + sayi2)")
} else if tercih == 2 {
    print("Fark: \(sayi1 - sayi2)")
} else if tercih == 3 {
    print("Çarpım: \(sayi1 * sayi2)")
}else if tercih == 4 {
    print("Bölüm: \(sayi1/sayi2)")
}


// ****************** SWİTCH CASE ******************

let gunler = 4

switch gunler {
    case 1:
        print("Pazartesi")
    case 2:
        print("Salı")
    case 3:
        print("Çarşamba")
    case 4:
        print("Perşembe")
    case 5:
        print("Cuma")
    case 6:
        print("Cumartesi")
    case 7:
        print("Pazar")
    default:
        print("Geçersiz gün!")
    
}


// ****************** SWİTCH CASE DÖRT İŞLEM ******************

print("Toplama (1)")
print("Fark (2)")
print("Çarpma (3)")
print("Bölme (4)")
 
let tercihim = 2
let num1 = 67
let num2 = 34

print("Tercihiniz: \(tercihim)")

switch tercihim {
    case 1:
        print("Toplama : \(sayi1+sayi2)")
    case 2:
        print("Çıkarma : \(sayi1-sayi2)")
    case 3:
        print("Çarpma : \(sayi1*sayi2)")
    case 4:
        print("Bölme : \(sayi1/sayi2)")
    default:
        print("Böyle bir işlem yok")
}


// ****************** TEK ÇİFT SAYI ******************

var sayi = 10
var sonuc = 10 % 2

if sonuc == 1 {
    print("Tek sayıdır")
}
if sonuc == 2{
    print("Çift sayıdır")
}

//------------

var rakam = 8
var sonucu = 8 % 2

switch sonucu {
    case 0:
        print("Çift sayıdır")
    case 1:
        print("Tek sayıdır")
    default:
        print("Belirli değil")
}



// ****************** DÖNGÜLER ******************

// --> Döngüler belirli kodları tekrarlı çalıştırma amaçlı yapılardır.
// --> Türleri;
// --> for in (baştan kaç kere döneceği belli ise for kullanırız.)
// --> while (şarta bağlı çalışır,kaç kere döneceği belli değil ise while kullanırız.)

for i in 1...5 {
    print(i)
    print("Merhaba")
}

//5 ile 25 arasında 5'er
var baslangic = 5
var bitis = 25
var artis = 5

for a in stride(from: baslangic, through: bitis, by: artis) {
    print(a)
}

//20'den 2 ye geriye doğru
var baslangic1 = 20
var bitis1 = 2
var artis1 = -2

for x in stride(from: baslangic1, through:bitis1, by:artis1) {
    print(x)
}


var sayac = 1

while sayac <= 3 {
    print(sayac)
    sayac += 1
}


// ****************** DÖNGÜ SINIR DEĞERİ ******************

// 3 ile 6 arasında
for i in 3...6{
    print("Döngü 1: \(i)")
}

var sayacc = 3

while sayacc < 7{
    print("Döngü 2: \(sayacc)")
    sayacc += 1
}

// 0 ile 8 arasında
for c in stride(from: 0, to: 10, by: 2)
{
    print("Döngü 3: \(c)")
}

var sayac1 = 0
while sayac1 < 10{
    print("Döngü 4: \(sayac1)")
    sayac1 += 2
}

// 14 ile 0 arasında 2'şer azalsın
for m in stride(from: 14, through: 0, by: -2){
    print("Döngü 5: \(m)")
}

var sayac2 = 20
while sayac2 > -1{
    print("Döngü 6: \(sayac2)")
    sayac2 -= 2
}


// ****************** İSİM TEKRARLAMA ******************

var name = "Deniz"
var son = 100

for n in 1...son {    //deger kadar tekrarlama
    print("\(n). \(name)")
}

for f in 1...name.count{  // name'in karakter sayısı kadar tekrarlama
    print("\(f). \(name)")
}

// ****************** VERİ İŞLEME MANTIĞI ******************

var veri = 5
while veri > 0 {
    print("\(veri).veri")
    veri -= 1
}

// ****************** BREAK - CONTİNUE ******************

//break
for b in 1...5 {   //break komutu 3'ü görünce dur - direk bitirir.
    if b == 3 {
        break
    }
    print("Döngü 1: \(b)")
}

//continue
for z in 1...5 {   //continue komutu 3'görünce atla ve diğerlerini çalıştırmaya devam et - adımı pas geçer.
    if z == 3 {
        continue
    }
    print("Döngü: \(z)")
}


// ****************** HAZIR KOMUTLAR ******************

//Rastgele Sayı
for _ in 1...15 {
    let rastgeleSayi = Int(arc4random_uniform(15)) // 15'e kadar rastgele sayılar üretir
    print(rastgeleSayi)
}


//Matematiksel İşlemler
let c = ceil(6.6) // bir üst sayıya yuvarlama işlemi yapar
print(c)

let f = floor(8.3) // bir alt sayıya yuvarlama işlemi yapar
print(f)

let s = sqrt(4.0) // köklü sayı çevirme işlemi
print(s)

let d = pow(2.0, 3.0)  //üslü sayı çevirme işlemi
print(d)

let a = abs(-10)  //mutlak değer çevirme işlemi
print(a)

let mx = max(10, 20, 30, 40, 50)  //max değer bulma işlemi
print(mx)

let mn = min(10, 20, 30, 40, 50)  //min değer bulma işlemi
print(mn)


//Tarihsel İşlemler

let tarih = Date()
let takvim = Calendar.current

let yil = takvim.component(.year, from: tarih)
let ay = takvim.component(.month, from: tarih)
let gun = takvim.component(.day, from: tarih)
let saat = takvim.component(.hour, from: tarih)
let dakika = takvim.component(.minute, from: tarih)
let saniye = takvim.component(.second, from: tarih)

print("Yıl: \(yil)")
print("Ay: \(ay)")
print("Gün: \(gun)")
print("Saat: \(saat)")
print("Dakika: \(dakika)")
print("Saniye: \(saniye)")


//Ölçü Birimleri

let metre = Measurement.init(value: 50, unit: UnitLength.meters) //50m
print(metre)
let kilometre = Measurement.init(value: 1, unit: UnitLength.kilometers) //1 km
print(kilometre)

let sonuccc = metre + kilometre
print(sonuccc)


let a1 = sonuccc.converted(to: .kilometers)
print(a1)

let a2 = sonuccc.converted(to: .miles)
print(a2)

let frekans = Measurement.init(value: 1000, unit: UnitFrequency.kilohertz) //1000khz

let c1 = frekans.converted(to: .gigahertz)
print(c1)

let sicaklik = Measurement.init(value: 30, unit: UnitTemperature.celsius) //30 derece

let d1 = sicaklik.converted(to: .fahrenheit)
print(d1)

