import 'package:flutter/material.dart';
import 'package:kuiz_prak_tpm_if_g/pages/home_page.dart';


class LoginPage extends StatelessWidget {
  final TextEditingController _usernameCon = TextEditingController();
  final TextEditingController _passwordCon = TextEditingController();
  LoginPage({super.key});

  //fungsi
  void _loginCon(BuildContext context) {
    if(_usernameCon.text.isEmpty || _passwordCon.text.isEmpty){
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text("Masukkan Username atau Password",
            style: TextStyle(
              color: Colors.black
          )),
          backgroundColor: const Color.fromARGB(255, 255, 247, 0),
        ),
      );
    }
    else if (_usernameCon.text.trim() == "Admin" && _passwordCon.text.trim() == "123") {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => HomePage(username: _usernameCon.text,)),
      );
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text("Username atau Password salah"),
          backgroundColor: Colors.red,
        ),    
      );
    }
  }


  //ui
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      ),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: SingleChildScrollView(
          child: Column(
            children: [
              //atas card login
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.05,
              ),

              //===================
              SizedBox(
                width: MediaQuery.of(context).size.width,
                //-- bagian login card --
                child: Card(
                  color: const Color.fromARGB(255, 123, 152, 82),
                  elevation: 10,
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      children: [
                        //-- gambar --
                        
                        Image.asset('assets/image/upnLogo.png'),
                        
                        const SizedBox(height: 30),

                        Text("Login", 
                          style: TextStyle(
                            color: const Color.fromARGB(255, 0, 0, 0),
                            fontWeight: FontWeight.bold
                          ),
                        ),
                        
                        const SizedBox(height: 20),

                        //-- username --
                        TextField(
                          controller: _usernameCon,
                          decoration: InputDecoration(
                              hintText: 'Username',
                              hintStyle: TextStyle(
                                color: const Color.fromARGB(255, 0, 0, 0),
                              ),
                              filled: true,
                              fillColor: const Color.fromARGB(255, 255, 255, 255),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(40),
                              )
                          ),
                        ),

                        const SizedBox(height: 20),

                        //-- password --
                        TextField(
                          controller: _passwordCon,
                          obscureText: true,
                      
                          decoration: InputDecoration(
                              hintText: 'Password',
                              hintStyle: TextStyle(
                                color: const Color.fromARGB(255, 0, 0, 0),
                              ),
                              filled: true,
                              fillColor: const Color.fromARGB(255, 255, 255, 255),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(40)
                              )
                          ),
                        ),

                        const SizedBox(height: 24),
                        // login button
                        SizedBox(
                          width: double.infinity,
                          child: ElevatedButton(
                              style: ButtonStyle(
                                backgroundColor: WidgetStateProperty.all<Color>(const Color.fromARGB(255, 88, 188, 7)),
                              ),
                              onPressed: (){
                                _loginCon(context);
                              },
                              child: const Text('Login')
                          ),
                        ),
                        const SizedBox(height: 24),
                    
                      ],
                    ),
                  ),
                ),               
              ),
            ],
          ),
        ),
      ),
    );
  }
}