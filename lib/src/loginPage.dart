import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  //InputPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginState();
}

class _LoginState extends State<LoginPage> {
  String _numero = '';
  bool _bloquearCheck = false;
  String _password = "";

  TextEditingController _inputFieldDateController = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
          padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 20.0),
          children: <Widget>[
            SizedBox(height: 120.0),
            _Imagen(),
            _Titulo(),
            SizedBox(height: 20.0),
            _CrearNum(),
            Divider(),
            _CrearPassword(),
            _crearAcciones(),
            SizedBox(height: 20.0),
            _Boton(context),
            _createAccount()
          ]),
    );
  }

  Widget _Imagen() {
    return Image(
      image: NetworkImage(
          "https://www.wholesalepasalplus.com/uploads/pages/delivery-service.png"),
      width: 250,
      height: 250,
    );
  }

  Widget _CrearNum() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
      child: Expanded(
        child: TextField(
          //autofocus: true,
          textCapitalization: TextCapitalization.sentences,
          decoration: InputDecoration(
            border:
                OutlineInputBorder(borderRadius: BorderRadius.circular(10.0)),
            hintText: 'Mobile Number',
            labelText: 'Mobile Number',
            //helperText: 'Mobile Number',
          ),
          onChanged: (valor) {
            //print(_nombre);
            setState(() {
              _numero = valor;
            });
          },
        ),
      ),
    );
  }

  Widget _CrearPassword() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
      child: Row(
        children: [
          Expanded(
            child: TextField(
              obscureText: true,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0)),
                hintText: 'Password',
                labelText: 'Password',
              ),
              onChanged: (_bloquearCheck)
                  ? null
                  : (valor) {
                      setState(() {
                        _password = valor;
                      });
                    },
            ),
          ),
        ],
      ),
    );
  }

  Widget _Titulo() {
    return Text(
      "Login",
      textAlign: TextAlign.center,
      style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold),
    );
  }

  Widget _crearAcciones() {
    return Container(
      child: Row(
        children: <Widget>[
          Expanded(child: _accionCheck()),
          Expanded(child: _accionRem()),
        ],
      ),
    );
  }

  Widget _accionCheck() {
    return Column(
      children: [
        CheckboxListTile(
          value: _bloquearCheck,
          onChanged: (valor) {
            setState(() {
              _bloquearCheck = valor!;
            });
          },
          title: Text('Remember me'),
        ),
      ],
    );
  }

  Widget _accionRem() {
    return Column(
      children: [
        Container(
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
                primary: Colors.white, onPrimary: Colors.black, elevation: 0),
            child: Text(
              'Forget Password?',
              style: TextStyle(fontSize: 15.0),
            ),
            onPressed: () {},
          ),
        ),
      ],
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
            child: Text(
              'Login',
              style: TextStyle(fontSize: 20.0),
            ),
            onPressed: () {}),
      ),
    );
  }

  Widget _createAccount() {
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("Create in account?",
              style: TextStyle(fontSize: 10.0, color: Colors.grey)),
          Container(
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    primary: Colors.white,
                    onPrimary: Colors.black,
                    elevation: 0),
                child: Text(
                  'singup',
                  style: TextStyle(fontSize: 10.0),
                ),
                onPressed: () {}),
          ),
        ],
      ),
    );
  }
}
