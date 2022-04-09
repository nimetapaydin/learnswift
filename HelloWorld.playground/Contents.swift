import UIKit

var greeting = "Hello, playground"

var karisikDizimiz = [100,200,"Atıl",true,false] as [Any]

//as -> casting , any -> any object

var yeniDegisken = karisikDizimiz[2] as! String

karisikDizimiz.append("Zeynep")

karisikDizimiz.count

karisikDizimiz[karisikDizimiz.count - 1]

karisikDizimiz.last

var numaralarDizisi = [5,2,1,6,9,10]

numaralarDizisi.sort()

var harflerDizisi = ["a","j","b","o","d"]

harflerDizisi.sort()

//Set

var numaralar = [1,1,1,1,2,3,4,5,6]

var numaraSeti : Set = [1,1,1,1,2,3,4,5,6]
numaraSeti.remove(3)

numaraSeti

var siparislerDizisi = ["Istanbul","Istanbul","Istanbul","Ankara","Adana"]

siparislerDizisi.count

var siparişlerSeti = Set(siparislerDizisi)

siparişlerSeti.count

let birinciSet : Set = [40,50,60]
let ikinciSet : Set = [50,60,70]

let birlesimSeti = birinciSet.union(ikinciSet)

//Dictionary

//key-value pairing - anahtar kelime - değer eşleşmesi

var meyveKaloriDictionary = ["Armut":100, "Muz": 150, "Elma":120, "Karpuz":300]

meyveKaloriDictionary["Armut"]
meyveKaloriDictionary.keys
meyveKaloriDictionary.values
meyveKaloriDictionary["Muz"] = 200

//for

var myArray = ["Atıl","Mahmut","Mehmet","Zeynep"]

for isim in myArray{
    print(isim.uppercased())
}

for yeniNumara in 1 ... 10{
    print(yeniNumara)
}

func ornekFonksiyon(){
    print("ornek")
}

ornekFonksiyon()

func myFunction(a : String)
{
    print(a)
}

myFunction(a: "atıl")

//output , return

func toplama(x: Int, y:Int){
    print(x+y)
}

toplama(x: 10, y: 20)

func carpma(a: Int, b: Int) -> Int{
    return a * b
}

var carpmaSonucu = carpma(a: 5, b: 8)
print(carpmaSonucu)

func logicFunction(x: Int, y: Int) -> Bool{
    if x>y {
        return true
        
    }else{
        return false
    }
}

logicFunction(x: 1, y: 3)


//Opsiyoneller (Optionals)
//data tanımlanıyor ama değer atamadan önce işlem yapıyorsa patlamaması için opsiyonelleri kullanıyoruz. Data çekerken kullanılıyor daha çok

var benimIsim : String?

benimIsim?.uppercased()
benimIsim = "Atıl"
benimIsim?.uppercased()

var kullaniciNumarasi = "10"

//force unwrapping
//var sonuc = Int(kullaniciNumarasi)! * 5

//kitlenme yaşanmasın diye eğer kullaniciNumarasi nill yani boş gelirse default olarak 1 değerini verki uygulama patlamasın

var sonuc = (Int(kullaniciNumarasi) ?? 1 ) * 5

// if let eğer bunu yapabilirsen eğer bunu tanımlayabilirsen demek eğer yapılmıyorsa yapılmaz

if let yeniSonuc = Int(kullaniciNumarasi){
    yeniSonuc * 5
} else{
    print("yanlış girdin rakam gir lütfen")
}

