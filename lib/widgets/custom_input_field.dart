import 'package:flutter/material.dart';

class CustomInputField extends StatelessWidget {
  const CustomInputField({
    Key? key, this.hintText, this.labelText, this.helperText, this.suffixIcon, this.icon,
  }) : super(key: key);

        final String? hintText;
        final String? labelText;
        final String? helperText;
        final IconData? suffixIcon;
        final IconData? icon;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      autofocus: true,
      initialValue: '',
      textCapitalization: TextCapitalization.words,
      onChanged: (value) {
        print('value: $value');
      },
      validator: (value) {
        if( value == null) return 'Este campo es requerido';
        return value.length < 3 ? 'Hola mundo' : null;
      },
      autovalidateMode: AutovalidateMode.onUserInteraction,
      decoration:  InputDecoration(
        hintText: hintText,
        labelText: labelText,
        helperText: helperText,
        //prefixIcon: Icon(Icons.verified_user_outlined),
        suffixIcon : suffixIcon == null ? null : Icon(Icons.grade_outlined),
        icon:icon == null ? null :Icon(icon),
        
      ),
    );
  }
}