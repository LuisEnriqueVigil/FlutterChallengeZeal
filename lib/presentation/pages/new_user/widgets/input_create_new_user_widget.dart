import 'package:challenge_app/presentation/common/Theme/colors_theme.dart';
import 'package:flutter/material.dart';

class InputCreatNewUserWidget extends StatelessWidget {
  final String hintext;
  final bool ? isFromEdit;
  final String?initValue;
  final Function(String value) onChange;

  const InputCreatNewUserWidget({
    super.key,
    required this.hintext,
    this.isFromEdit = false,
    this.initValue = "",
    required this.onChange,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      child: TextFormField(
          //controller: _model.fieldEmailController,
          autofocus: false,
          initialValue: (isFromEdit == true)? 
            initValue:null,
          keyboardType: TextInputType.name,
          obscureText: false,
          validator: (value) {
            return ((value ?? "").length > 3)
                ? null
                : "Escribe al menos 3 caracteres";
          },
          onChanged: onChange,
          decoration:  InputDecoration(
            hintText: hintext,
            enabledBorder:const  UnderlineInputBorder(
              borderSide: BorderSide(
                color: ColorApp.colorPrincipalApp,
                width: 1.0,
              ),
              borderRadius:   BorderRadius.only(
                topLeft: Radius.circular(4.0),
                topRight: Radius.circular(4.0),
              ),
            ),
            focusedBorder:  const UnderlineInputBorder(
              borderSide: BorderSide(
                color: ColorApp.colorPrincipalApp,
                width: 1.0,
              ),
              borderRadius:   BorderRadius.only(
                topLeft: Radius.circular(4.0),
                topRight: Radius.circular(4.0),
              ),
            ),
            errorBorder: const  UnderlineInputBorder(
              borderSide: BorderSide(
                color: ColorApp.colorPrincipalApp,
                width: 1.0,
              ),
              borderRadius:   BorderRadius.only(
                topLeft: Radius.circular(4.0),
                topRight: Radius.circular(4.0),
              ),
            ),
          )),
    );
  }
}
