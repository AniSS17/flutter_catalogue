import 'package:flutter/material.dart';
import 'package:flutter_catalogue/pages/home_page.dart';
import 'package:flutter_catalogue/utils/routes.dart';
class LoginPage extends StatefulWidget {
  const LoginPage({ Key? key }) : super(key: key); 
  @override
  State<LoginPage> createState() => _LoginPageState();
}
class _LoginPageState extends State<LoginPage> {
  String name="";
  bool changeButton=false;
  final _formKey=GlobalKey<FormState>();
  movetoHome(BuildContext context)async{
    if(_formKey.currentState!.validate()){
      setState(() {
          changeButton=true;
          });
          await Future.delayed(Duration(seconds: 1));// await mtlb rukna
          await Navigator.pushNamed(context, MyRoutes.homeRoute);
          // ye button click krne se home page pr jaayega screen
          setState(() {
            changeButton=false;
          });
    }    
  }
  @override
  Widget build(BuildContext context) {
    return Material(
      // child: Center(  //agar 1 wid ke andar ek aur wid aa skta h to child dena h.
      //   child: Text("Login", //  Multiple hue to children dena h
      //   style: TextStyle(
      //     fontSize: 30,
      //     color: Colors.black,
      //     fontWeight: FontWeight.bold,
      //   ),),
      //   ),
      color: Colors.white,
      child: SingleChildScrollView( // screen scroll kr skte h
        child: Form(
          key: _formKey ,
            child: Column(
            children: [
              Image.asset("assets/images/login_img.png",
              fit: BoxFit.cover,),
              SizedBox(
                height: 20,
                // child: Text("Gaand mara"), fig aur welcome ke beech ka text
              ),
              Text("Welcome",
              style: TextStyle(
                // backgroundColor: Colors.blue, 
                color: Colors.black,
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20,horizontal: 16),
                child: Column(children: [
                  TextFormField(
                  decoration: InputDecoration(
                    hintText: "Username",
                    labelText: "Username",
                  ),
                  validator: (String? value) {
                    if(value!.isEmpty){
                      return "Maa Baap ne naam nhi diya kya madarchod";
                    }
                    return null;
                  },
                  onChanged:((value) {
                    name=value;
                    // setState() sirf stful wid m hota h
                    setState(() {}); // ye build ko dobara call krta h. pure app ka UI build se chlta h
                  }),
                ),
                TextFormField(
                  obscureText: true,
                  obscuringCharacter: "*",
                  decoration: InputDecoration(
                    hintText: "Enter password",
                    labelText: "Password",
                  ),
                  validator: (String? value) {
                    if (value!.isEmpty){
                      return "Password teri gf daalegi kya";
                    }
                    return null;
                  },
                ),
                SizedBox(
                height: 40,
              ),
                Material(
                  // color: Color.fromARGB(217, 9, 37, 197), 
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(25),
                  // ripple effect aata h aisa krke
                  child: InkWell(
                    onTap: () => movetoHome(context),
                    child: AnimatedContainer(
                    duration: Duration(milliseconds: 500),
                    width:changeButton?110:150,
                    height:50,
                    // color: Color.fromARGB(255, 14, 93, 228),
                    alignment: Alignment.center,
                    child:changeButton?Icon(Icons.done,color: Colors.white,):Text("Login",style: TextStyle(color: Colors.white,fontSize: 19,fontWeight: FontWeight.bold),),
                    decoration: BoxDecoration(// ripple effect nhi aayega agar aise kre to
                      // shape: BoxShape.circle, ya to ye ya borderRadius wala daalna h 
                      // color: Color.fromARGB(255, 31, 164, 31),
                      // color: Colors.black,  
                      //color: Color.fromARGB(217, 9, 37, 197),
                      //borderRadius: BorderRadius.circular(25),
                    ),
                  ),
                ),
              )
            ],),
            )
            ],
          ),
        ),
      ),
    );
  }
}
