import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:novoprojetoflutter/widgets/app_button.dart';
import 'package:novoprojetoflutter/widgets/app_text.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();
  final _tEntrar = TextEditingController();
  final _tSenha = TextEditingController();
  final _focusSenha = FocusNode();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Carros",
        ),
      ),
      body: _body(),
    );
  }

  _body() {
    return Form(
      key: _formKey,
      child: Container(
        padding: EdgeInsets.all(16),
        child: ListView(
          children: <Widget>[
            AppText(
              "Usuario",
              "Digite seu usuario",
              controller: _tEntrar,
              validator: _validateEntrar,
              keyboardType: TextInputType.emailAddress,
              nextFocus: _focusSenha,
              textInputAction: TextInputAction.next,
            ),
            SizedBox(
              height: 10,
            ),
            AppText(
              "senha",
              "Digite sua senha",
              controller: _tSenha,
              password: true,
              validator: _validateSenha,
              focusNode: _focusSenha,
              keyboardType: TextInputType.number,
            ),
            SizedBox(
              height: 20,
            ),
            AppButton(
              "Entrar",
              onPressed: _onClickEntrar,
            ),
          ],
        ),
      ),
    );
  }


  _onClickEntrar() {
    if (!_formKey.currentState.validate()) {
      return;
    }

    String entrar = _tEntrar.text;
    String senha = _tSenha.text;

    print("Entrar: $entrar, Senha: $senha");
  }

  String _validateEntrar(String text) {
    if (text.isEmpty) {
      return "Digite o e-mail";
    }
    return null;
  }

  String _validateSenha(String text) {
    if (text.isEmpty) {
      return "Digite a senha";
    }
    if (text.length < 6) {
      return "A senha deve ter pelo menos 6 caracteres";
    }
    return null;
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }
}
//teste