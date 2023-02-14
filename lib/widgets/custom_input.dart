import 'package:flutter/material.dart';


class CustomTextField extends StatefulWidget {
  final IconData icono;
  final String placeHolder;
  final TextEditingController textController;
  final TextInputType keyboardType;
  final bool isPassWord;
  

  const CustomTextField({
    Key? key, required this.icono, required this.placeHolder, required this.textController, required this.keyboardType,required this.isPassWord,
  }) : super(key: key);

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  bool _isVisible=false;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top:5,left: 5,bottom: 5,right: 20),
      margin: const EdgeInsets.only(bottom: 20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
        border:Border.all(color: Colors.black),
        boxShadow: <BoxShadow>[
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            offset: Offset(0, 5),
            blurRadius: 5
          )
        ]
      ),
      child: 
      (this.widget.isPassWord==false)?
      TextField(
        controller: this.widget.textController,
        autocorrect: false,
        keyboardType: widget.keyboardType,
        obscureText: this.widget.isPassWord,
        decoration: InputDecoration(
          hintText: widget.placeHolder,
          prefixIcon: Padding(
            padding: const EdgeInsets.only(bottom:8.0),
            child: Icon(widget.icono, size: 25,),
          ),
          focusedBorder: InputBorder.none,
          border: InputBorder.none
        ),
      )
      :TextField(
        controller: this.widget.textController,
        autocorrect: false,
        keyboardType: widget.keyboardType,
        obscureText: !_isVisible,
        decoration: InputDecoration(
          hintText: widget.placeHolder,
          prefixIcon: Padding(
            padding: const EdgeInsets.only(bottom:8.0),
            child: Icon(widget.icono, size: 25,),
          ),
          suffixIcon: IconButton(onPressed: (){
            print('tap');
            setState(() {
              print('el valor es: $_isVisible');
              _isVisible=!_isVisible;
              print('el valor nuevo es: $_isVisible');
            });

          }, icon: Icon(
            _isVisible
              ? Icons.visibility
              : Icons.visibility_off)),
          focusedBorder: InputBorder.none,
          border: InputBorder.none
        ),
      )
      );
  }
}