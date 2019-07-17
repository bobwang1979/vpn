import 'package:flutter/material.dart';


class VPNForm extends StatefulWidget
{
  @override

  VPNFormState createState() =>  VPNFormState();
}


class VPNFormState extends State<VPNForm>
{

  final _formKey = GlobalKey<FormState>();

  @override

  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: _formKey,
        child: ListView(
          padding: EdgeInsets.symmetric(horizontal: 22.0),
          children: <Widget>[
            SizedBox(
              height: kToolbarHeight,
            ),
            buildTitle(),
            buildTitleLine(),
            SizedBox(height: 70.0),
            buildVPNNameTextField(),
            SizedBox(height: 30.0),
            buildPasswordTextField(context),
            buildForgetPasswordText(context),
            SizedBox(height: 60.0),
            buildLoginButton(context),
            SizedBox(height: 30.0),
            buildOtherLoginText(),
            buildOtherMethod(context),
            buildRegisterText(context),
          ],
        ),
      ),
    );
  }

  TextFormField buildVPNNameTextField() {
    return TextFormField(
      decoration: InputDecoration(
        labelText: 'Name',
      ),
      validator: (String value) {
        var emailReg = RegExp(
            r"[a-z,A-Z]?");
        if (!emailReg.hasMatch(value)) {
          return '请输入正确的VPN name';
        }
      },
      onSaved: (String value) => _email = value,
    );
  }

  TextFormField buildAuthenticationTypeSelectField() {
    return Select(
      decoration: InputDecoration(
        labelText: 'Name',
      ),
      validator: (String value) {
        var emailReg = RegExp(
            r"[a-z,A-Z]?");
        if (!emailReg.hasMatch(value)) {
          return '请输入正确的VPN name';
        }
      },
      onSaved: (String value) => _email = value,
    );
  }

  Padding buildTitleLine() {
    return Padding(
      padding: EdgeInsets.only(left: 12.0, top: 4.0),
      child: Align(
        alignment: Alignment.bottomLeft,
        child: Container(
          color: Colors.black,
          width: 40.0,
          height: 2.0,
        ),
      ),
    );
  }

  Padding buildTitle() {
    return Padding(
      padding: EdgeInsets.all(8.0),
      child: Text(
        'Edit VPN profile',
        style: TextStyle(fontSize: 42.0),
      ),
    );
  }
}