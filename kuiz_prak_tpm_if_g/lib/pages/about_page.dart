import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar( 
        title: Text( 
          "About Page",
          style: TextStyle(
            color: Colors.white, 
            fontWeight: FontWeight.bold 
          ), 
        ), 
        backgroundColor: const Color.fromARGB(255, 34, 180, 39), 
      ),
      body: Column(
        children: [
          const SizedBox(height: 10),
          Center(
            child : Image.asset(
              "assets/image/customerService.png",
              height: MediaQuery.of(context).size.height * 0.23,
              width: 200,
              //fit: BoxFit.cover,
            )
          ),
          const SizedBox(height: 10),

          Title(color: Colors.black,
            child: Text("Ini Adalah Halaman About",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: (20),
              ),
            )
          ),

          const SizedBox(height: 10),
          Center(
          ),
          SingleChildScrollView(
            child: Text("Halaman About Pertanyaan Umum (FAQ) Temukan jawaban atas berbagai pertanyaan yang sering ditanyakan oleh pengguna mengenai penggunaan aplikasi ini. Dari proses pendaftaran, cara membeli barang, hingga pengaturan akun, semua jawaban ada di sini untuk mempermudah pengalaman Anda. Panduan Penggunaan Pelajari langkah demi langkah cara menggunakan fitur-fitur aplikasi kami. Panduan ini akan membantu Anda memahami bagaimana memaksimalkan penggunaan aplikasi, mulai dari mencari produk hingga menyelesaikan transaksi dengan mudah.Kontak Dukungan Jika Anda membutuhkan bantuan lebih lanjut, tim dukungan kami siap membantu. Anda dapat menghubungi kami melalui email, telepon, atau live chat. Kami berkomitmen untuk memberikan solusi terbaik bagi setiap masalah atau pertanyaan yang Anda miliki.",
            style: TextStyle(
              //textBaseline: TextBaseline,

            ),),
          ),
        ],
      ),
    );
  }
}