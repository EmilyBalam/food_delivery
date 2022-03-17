import 'package:flutter/material.dart';

class LoginP extends StatelessWidget {
  //const HomePage({Key? key}) : super(key: key);
  final estiloTitulo = TextStyle(
    fontSize: 40.0,
    fontWeight: FontWeight.bold,
  );
  final estiloSubtitulo = TextStyle(
    fontSize: 20.0,
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.symmetric(vertical: 15.0),
      child: Center(
        child: Column(
          children: <Widget>[
            SizedBox(height: 35.0),
            _Skip(context),
            SizedBox(height: 45.0),
            _CrearImagen(),
            SizedBox(height: 40.0),
            _CrearTexto(),
            SizedBox(height: 40.0),
            _Boton(context)
          ],
        ),
      ),
    ));
  }

  Widget _Skip(BuildContext context) {
    return Container(
      alignment: Alignment.centerRight,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            primary: Colors.white, onPrimary: Colors.black, elevation: 0),
        child: Text(
          'Skip',
          style: TextStyle(fontSize: 15.0),
        ),
        onPressed: () => Navigator.pushNamed(context, 'efood'),
      ),
    );
  }

  Widget _CrearImagen() {
    return Image(
      image: NetworkImage(
          "https://www.wholesalepasalplus.com/uploads/pages/delivery-service.png"),
      width: 300,
      height: 300,
    );
  }

  Widget _CrearTexto() {
    return SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 105.0),
            child: Text(
              'Delivery To Your Home',
              textAlign: TextAlign.center,
              style: estiloTitulo,
            ),
          ),
          SizedBox(
            height: 40.0,
          ),
          Text(
            'Lorem Ipsum dolor sit amet conse te sadipscing elitr, sed diam ant',
            style: estiloSubtitulo,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }

  Widget _Boton(BuildContext context) {
    return Container(
      color: Color.fromARGB(255, 255, 255, 255),
      child: Center(
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            primary: Colors.red,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0)),
            padding: EdgeInsets.symmetric(horizontal: 150.0, vertical: 15.0),
          ),
          onPressed: () => Navigator.pushNamed(context, 'welcome'),
          child: Text(
            'Let\'s Start',
            style: TextStyle(fontSize: 20.0),
          ),
        ),
      ),
    );
  }
}
