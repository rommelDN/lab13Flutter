import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
   
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  late Color myColor ;
  late Size mySize;

  @override
  Widget build(BuildContext context) {
    myColor = Theme.of(context).primaryColor;
    mySize = MediaQuery.of(context).size;
    return Container(
      decoration: BoxDecoration( 
        color: myColor,
        image: DecorationImage(
          image: const AssetImage("assets/images/b5f9bed6b56607d8bd2a53ffdf938f36.jpg"),
          fit: BoxFit.cover,
          colorFilter: ColorFilter.mode(myColor.withOpacity(0.4), BlendMode.dstATop))
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Stack(
          children: [
            Positioned(
              top: 50,
              child: _parteSuperior()),
            Positioned(bottom: 0, child: _parteInferior())

          ],
        )
      ),
    );
  }

  Widget _parteSuperior(){
    return  SizedBox(
      width: mySize.width,
      child: const Column(
        children: [
          Icon(Icons.location_on,color: Colors.white,size: 100,),
          Text('Datos de Prueba',
            style: TextStyle(
                color: Colors.white,
                fontSize: 20),),

        ],
      ),
    );
    
  }

  Widget _parteInferior(){
    return SizedBox(
      width: mySize.width,
      child:  Card(
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30) ,
            topRight:Radius.circular(30) ,
          )
        ),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: _miFormulario(),
        )
      ),
    );
  }

  Widget _miFormulario(){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Welcome',
          style: TextStyle(
            color: myColor,
            fontSize: 40,
            fontWeight: FontWeight.bold

          )),
        _tipoTextoPlomo("Please login with your information"),
        const SizedBox(height: 40,),
        _tipoTextoPlomo("Email "),
        _tipoInputField(),
        const SizedBox(height: 40,),
        _tipoTextoPlomo("Password "),
        _tipoInputField(),
        const SizedBox(height: 40,),
        _botonLogin(),
        const SizedBox(height: 30,),
        _listaImagenesCirculares()


        
      ],
    );
  }

  Widget _tipoTextoPlomo(String texto){
    return Text(
      texto,
      style: const TextStyle(color:Colors.grey),
    );
  }

  Widget _tipoInputField(){
    return const TextField(
      decoration: InputDecoration(
        suffixIcon: Icon(Icons.done)
      ),
    );
  }
  Widget _botonLogin() {
    return ElevatedButton(
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(Colors.indigo),
        minimumSize: MaterialStateProperty.all(Size(double.infinity, 50)),
        padding: MaterialStateProperty.all(EdgeInsets.all(15)),
      ),
      onPressed: () {
        // Lógica de inicio de sesión
      },
      child: Text('Login',style: TextStyle(color: Colors.white,fontSize: 15),),
    );
  }



  Widget _listaImagenesCirculares() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _imagenCircular1(),
        _imagenCircular2(),
        _imagenCircular3(),
      ],
    );
  }

  Widget _imagenCircular1() {
    return Container(
      width: 30,
      height: 30,
      decoration: const BoxDecoration(
        shape: BoxShape.circle,
        image: DecorationImage(
          image: AssetImage('assets/images/facebook-icon-preview-1.png'),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
  Widget _imagenCircular2() {
    return Container(
      width: 30,
      height: 30,
      decoration: const BoxDecoration(
        shape: BoxShape.circle,
        image: DecorationImage(
          image: AssetImage('assets/images/25231.png'),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
  Widget _imagenCircular3() {
    return Container(
      width: 30,
      height: 30,
      decoration: const BoxDecoration(
        shape: BoxShape.circle,
        image: DecorationImage(
          image: AssetImage('assets/images/x-logo-twitter-transparent-logo-download-3.png'),
          fit: BoxFit.cover,
        ),
      ),
    );
  }

}