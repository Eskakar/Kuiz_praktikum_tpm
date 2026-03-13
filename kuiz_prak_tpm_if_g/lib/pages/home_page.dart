import 'package:flutter/material.dart';
import 'package:kuiz_prak_tpm_if_g/pages/about_page.dart';
import 'package:kuiz_prak_tpm_if_g/pages/login_page.dart';
import 'package:kuiz_prak_tpm_if_g/pages/order_page.dart';
import 'package:kuiz_prak_tpm_if_g/pages/listmenu.dart';


class HomePage extends StatefulWidget {
  final String username;
  const HomePage({super.key, required this.username});
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  

  void orderMenu(MenuItem item) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => OrderPage(
          nama : item.name,
          harga: item.price,
          gambar: "assets/image/piring.jfif"
        ),
      ),
    );
  }

  void logout() {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => LoginPage()),
    );
  }
  void keAbout(){
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => AboutPage(
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar( 
        title: Text( 
          "Home Page",
          style: TextStyle(
            color: Colors.white, 
            fontWeight: FontWeight.bold 
          ), 
        ), 
        backgroundColor: const Color.fromARGB(255, 34, 180, 39), 
        actions: [ 
          IconButton( 
            onPressed: logout, 
            icon: Icon(Icons.logout), 
            color: Colors.white, 
          ) 
        ], 
      ),

      body: Column(
        children: [
          Title(
            color: Colors.black, 
            child: Text(
              "Selamat Datang ${widget.username}",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: (30),
              ),
            )
          ),          
          const SizedBox(height: 10),

          ElevatedButton(
            onPressed: keAbout,
            child: Text("Klik untuk ke halaman About")
          ),

          const SizedBox(height: 10),
          Text("Daftar Menu : ",
              style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: (15),
            ),
          ),
          const SizedBox(height: 10),
          Expanded(
            child: ListView.builder(
              itemCount: menuItems.length,
              itemBuilder: (context, index) {
                var item = menuItems[index];

                return Card(
                  elevation: 5,
                  margin: const EdgeInsets.symmetric(
                    horizontal: 10,
                    vertical: 5,
                  ),
                  child: GestureDetector(
                    onTap: () => orderMenu(item),
                    child: Container(
                      padding: const EdgeInsets.all(10),
                      child: Row(
                        children: [
                          

                          // Gambar makanan (opsional)
                          
                          ClipRRect(
                            borderRadius: BorderRadius.circular(8),
                            child: Image.asset(
                              "assets/image/piring.jfif",
                              width: 80,
                              height: 80,
                              fit: BoxFit.cover,
                            ),
                          ),
                          

                          const SizedBox(width: 10),

                          // Nama dan harga
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  item.name,
                                  style: const TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),

                                const SizedBox(height: 5),

                                Text(
                                  "Rp${item.price}",
                                  style: TextStyle(
                                    color: Colors.grey[700],
                                    fontSize: 14,
                                  ),
                                ),
                              ],
                            ),
                          ),

                          // Tombol pesan
                          ElevatedButton(
                            onPressed: () => orderMenu(item),
                            style: ElevatedButton.styleFrom(
                              backgroundColor: const Color.fromARGB(255, 26, 217, 49),
                              foregroundColor: const Color.fromARGB(255, 0, 0, 0),
                              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                            ),
                            child: const Text("Pesan"),
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}