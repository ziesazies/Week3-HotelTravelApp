//
//  HatelModel.swift
//  Hotel&Travel-UI
//
//  Created by Phincon on 02/03/23.
//

import Foundation

struct HotelStruct {
    var image : String
    var name : String
    var price : Int
    var address : String
    var rating : Double
    var desc : String
    var room : [RoomStruct]
}

struct RoomStruct {
    var image : String
    var name : String
    var type : String
}

public struct HotelProvider{
    static func all() -> [HotelStruct]{
        return [
            HotelStruct(
                image: "satu",
                name: "Alila Purnama Hotel",
                price: 50000,
                address: "CBD Ciledug",
                rating: 4.9,
                desc: "Apa jadinya ya bila suatu hotel berada di kapal pesiar? Ya, itulah yang disuguhkan oleh Alila Purnama Hotel. Sebuah hotel mewah bintang lima dengan konsep unik, dimana tamu hotel bisa merasakan sensasi menginap dalam kapal pesiar. Dengan suguhan panorama alam khas timur Indonesia, seperti Pulau Komodo, Raja Ampat, dan Cendrawasih Bay.Alila Purnama dengan segala kemewahannya bakal membuat kamu betah berlama-lama untuk menginap, terlebih karena salah satu rekomendasi nama hotel di Indonesia ini menyuguhkan layanan dan fasilitas mewah seperti privat restoran, bar and lounge, perpustakaan, spa, layanan antar-jemput bandara, dan free wifi.",
                room: [
                    RoomStruct(image: "kamar1", name: "Main bedroom", type: "Deluxe"),
                    RoomStruct(image: "kamar2", name: "Second bedroom", type: "Niceu")]),
            HotelStruct(
                image: "dua",
                name: "Four Season Resort Sayan",
                price: 60000,
                address: "Kebayoran",
                rating: 4.3,
                desc: "Hotel yang terletak di Jalan Raya Sayan, Kecamatan Ubud ini pantas masuk dalam rekomendasi nama hotel di Indonesia versi CekAja.Betapa tidak, Four Season Resort Sayan berhasil masuk dalam jajaran 100 hotel terbaik dunia versi majalah Travel + Leisure.Hotel ini menawarkan kemewahan dan panorama alam yang memukau, dimana pengunjungya bakal dimanjakan dengan beragam fasilitas menarik seperti kolam renang outdoor, spa dan sauna, private dining venues, layanan fitness 24 jam, area bermain arum jeram, dan masih banyak lagi.",
                room: [
                    RoomStruct(image: "kamar3", name: "Main bedroom", type: "Deluxe"),
                    RoomStruct(image: "kamar4", name: "Outdoor bedroom", type: "Deluxe")]),
            HotelStruct(
                image: "tiga",
                name: "Mandapa A Ritz Carlton Reserve",
                price: 500000,
                address: "Tanah Abang",
                rating: 4.4,
                desc: "Masih dari kawasan Bali, tepatnya di Jalan Raya Kedewatan Ubud terdapat pula hotel mewah dengan kualitas bintang lima yang memiliki konsep desain unik, yakni Mandapa A Ritz Carlton Reserve. Salah satu rekomendasi nama hotel di Indonesia ini juga tak kalah menarik dari segi fasilitas dan layanan yang disuguhkan. Mulai dari restoran, kolam renang outdoor, spa, hingga kelas yoga dan gym, bisa dinikmati oleh pengunjung hotel. Hebatnya lagi, hotel yang berhasil meraih penghargaan bergengsi yaitu About World Travel Awards ini juga memiliki layanan untuk mengedukasi para pengunjung terkait budaya yang ada di Bali, salah satunya seperti tur ke Desa Bali dan Ubud History Tjampuhan.",
                room: [
                    RoomStruct(image: "kamar5", name: "Main mewah", type: "Mewahhh")]),
            HotelStruct(
                image: "empat",
                name: "Amanjiwo Resort Borobudur",
                price: 50000,
                address: "Bali",
                rating: 4.9,
                desc: "Rindangnya pepohonan di Amanjiwo Resort Borobudur, membuat hotel ini selalu diserbu oleh para wisatawan saat musim liburan tiba. Bagaimana tidak, hotel yang terletak di Desa Majaksingi, Kecamatan Borobudur ini memiliki desain bangunan yang sangat mencolok dan terkenal akan kemegahannya. Sehingga pantas saja bila memilih Amanjiwo Resort Borobudur sebagai rekomendasi nama hotel di Indonesia dengan kualitas bintang lima versi CekAja.",
                room: [
                    RoomStruct(image: "kamar6", name: "Main bedroom", type: "Deluxe"),
                    RoomStruct(image: "kamar7", name: "Second bedroom", type: "Niceu")]),
            HotelStruct(
                image: "lima",
                name: "DoubleTree",
                price: 60000,
                address: "Sudirman",
                rating: 4.3,
                desc: "DoubleTree Hotel juga termasuk dalam rekomendasi nama hotel di Indonesia yang memiliki kualitas bintang lima. Hotel yang terletak di Jalan Pegangsaan Timur Nomor 17 Cikini, Jakarta ini mengusung konsep modern style dengan balutan warna cokelat dan putih pada tiap sudut interiornya. Di DoubleTree hotel pun kamu akan disuguhkan dengan hidangan welcome guest berupa cookies hangat di bagian lobby yang biasanya jarang sekali kita temukan pada beberapa hotel ternama di Jakarta. eninggalkan area lobby, kamu bakal disambut dengan suasana berbeda, salah satunya pada area executive lounge.",
                room: [
                    RoomStruct(image: "kamar8", name: "Main bedroom", type: "Deluxe"),
                    RoomStruct(image: "kamar9", name: "Second bedroom", type: "Deluxe")])
        ]
    }
}
