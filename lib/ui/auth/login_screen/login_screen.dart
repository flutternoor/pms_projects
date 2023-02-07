import 'package:flutter/material.dart';
import 'package:pms_projects/constants/constants.dart';
import 'package:pms_projects/ui/home_page/home_page.dart';

import '../../../widgets/signin_login_btn_widget.dart';


class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}


DropdownMenuItem<String> buildMenuItem(String item) =>
    DropdownMenuItem(value: item, child: Text(item,style: const TextStyle(fontSize: 20,color: Colors.black),));

late VoidCallback onChanged;
class _LoginScreenState extends State<LoginScreen> {
  final item = ['item1', 'item2', 'item3'];
  String? value;
  int _groupValue = -1;
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool _obscuredText = true;
  final _formKey = GlobalKey<FormState>();

  _toggle() {
    setState(() {
      _obscuredText = !_obscuredText;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 18.0,vertical: 10),
            child: Column(
              children: [
                ///Image
                SizedBox(
                  height: 250,
                  width: double.infinity,
                  child: Image.asset('assets/images/login_logo_img.png'),
                ),
                const SizedBox(height: 10,),
                ///Direct Access not Allowed Container
                Container(
                  height: 30,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: kAppColor,
                  ),
                  child: const Center(
                    child: Text(
                      'Direct Access not Allowed',
                      style: TextStyle(color: Colors.white, fontSize: 14),
                    ),
                  ),
                ),
                const SizedBox(height: 10,),
                ///DropDownButton
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 5),
                  decoration: const BoxDecoration(
                    color: kTextFieldColor,
                  ),
                  child: DropdownButton<String>(
                    elevation: 0,
                    underline: Container(),
                    value: value,
                    hint: const Text('Select Campus'),
                    isExpanded: true,
                    iconSize: 30,
                    icon: const Icon(Icons.keyboard_arrow_down_rounded,color: kAppColor,),
                    items: item.map(buildMenuItem).toList(),
                    onChanged: (value) {
                      setState(() {
                        this.value = value;
                      });
                    },
                  ),

                ),
                Row(
                  children: const <Widget>[
                    Flexible(
                      child: Divider(
                        thickness: 3,
                        color: Colors.black45,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 7.0,vertical: 5),
                      child: Text('Select Role',style: TextStyle(fontSize: 20,color: Colors.black45),),
                    ),
                    Flexible(
                      child: Divider(
                        thickness: 3,
                        color: Colors.black45,
                      ),
                    ),
                  ],
                ),


                const SizedBox(height: 10,),

                Form(
                    key: _formKey,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          padding: const EdgeInsets.only(left: 30,right: 30),
                          margin: const EdgeInsets.all(5),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Flexible(
                                child: RadioListTile(
                                  value: 0,
                                  groupValue: _groupValue,
                                  title: const Text("Student",),
                                  onChanged: ( newValue) =>
                                      setState(() {
                                        _groupValue =
                                            int.parse(newValue.toString());
                                      }),
                                  activeColor: kAppColor,
                                  selected: false,
                                ),
                              ),
                              Flexible(
                                child: RadioListTile(
                                  value: 1,
                                  groupValue: _groupValue,
                                  title: const Text("Faculty and Other"),
                                  onChanged: (newValue) =>
                                      setState(() => _groupValue =int.parse( newValue.toString())),
                                  activeColor: kAppColor,
                                  selected: false,
                                ),
                              ),
                            ],
                          ),
                        ),
                        ///email
                        TextFormField(
                          keyboardType: TextInputType.emailAddress,
                          controller: emailController,
                          cursorColor: kAppColor,
                          decoration: const InputDecoration(
                            contentPadding: EdgeInsets.symmetric(
                                vertical: 20, horizontal: 10),
                            border: InputBorder.none,
                            fillColor: kTextFieldColor,
                            filled: true,
                            hintText: 'Email / Username',
                          ),
                          validator: (value) {
                            if (value!.isEmpty || !value.contains('@')) {
                              return "Please enter a valid email address.";
                            } else {
                              return null;
                            }
                          },
                        ),
                        const SizedBox(height: 25),

                        ///password
                        TextFormField(
                          obscureText: _obscuredText,
                          controller: passwordController,
                          cursorColor: kAppColor,
                          decoration:  InputDecoration(
                            contentPadding: const EdgeInsets.symmetric(
                                vertical: 20, horizontal: 10),
                            border: InputBorder.none,
                            hintText: 'Password',
                            fillColor: kTextFieldColor,
                            filled: true,
                            suffixIcon: TextButton(
                              onPressed: _toggle,
                              child: Icon(Icons.remove_red_eye,
                                  color: _obscuredText
                                      ? Colors.black12
                                      : Colors.black54),
                            ),
                          ),
                          onChanged: (value) {
                            setState(() {
                            });
                          },
                          validator: (value) {
                            if (value!.isEmpty || value.length < 6) {
                              return "Please enter 6 character long password";
                            } else {
                              return null;
                            }
                          },
                        ),
                        const SizedBox(height: 10,),

                        Align(
                            alignment: Alignment.topLeft,
                            child: TextButton(onPressed: (){}, child: const Text('Forgot your Password?',style: TextStyle(color: Colors.black),))),
                        const SizedBox(height: 20,),
                        signIn_login_Btn_widget(
                          onTap: () {
                            if (_formKey.currentState!.validate()) {
                              if(_groupValue != -1){
                                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>const HomePage()));

                              }else
                                {
                                  final snackBar = SnackBar(
                                    content: const Text('Please select type '),
                                    backgroundColor: kAppColor,
                                    action: SnackBarAction(
                                      label: 'dismiss',
                                      textColor: Colors.white,
                                      onPressed: () {},
                                    ),
                                  );
                                  ScaffoldMessenger.of(context)
                                      .showSnackBar(snackBar);
                                }
                            }
                          },
                          containerText: 'LOGIN',
                        )
                      ],
                    ),
                ),

              ],
            ),
          ),
        ));
  }
}
