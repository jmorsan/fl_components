import 'package:flutter/material.dart';
import 'package:fl_components/widgets/widgets.dart';

class InputsScreen extends StatelessWidget {
   
  const InputsScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {

    final GlobalKey<FormState> myFormKey = GlobalKey<FormState>();

    final Map<String, String> formValues = {
      'first_name' : 'Fernando',
      'last_name' : 'Herrera',
      'email' : 'fernando@google.com',
      'password' : '123456',
      'role' : 'Admin',
    };

    return  Scaffold(
      appBar: AppBar(
        title: const Text('Inputs y Forms'),
        ),
      body: SingleChildScrollView(
         child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 20,
            vertical: 10
          ),
          
          child: Form(
            key: myFormKey,
            child: Column(
              children:  [
                 CustomInputField( 
                  formProperty: 'first_name',
                  formValues: formValues,
                  labelText: 'Nombre' , 
                  hintText: 'Nombre del usuario'),
                const SizedBox(height: 30),
          
                CustomInputField(
                  formProperty: 'last_name',
                  formValues: formValues, 
                  labelText: 'Apellido' , 
                  hintText: 'Apellido del usuario'),
                const SizedBox(height: 30),
          
                CustomInputField(
                  formProperty: 'email',
                  formValues: formValues, 
                  labelText: 'Correo' , 
                  hintText: 'Correo del usuario', 
                  keyboardType: TextInputType.emailAddress,),
                const SizedBox(height: 30),
          
                CustomInputField(
                  formProperty: 'password',
                  formValues: formValues, 
                  labelText: 'Contraseña' , 
                  hintText: 'Contraseña del usuario', 
                  obscureText: true),
                const SizedBox(height: 30),

                

                DropdownButtonFormField(
                  items: const[
                    DropdownMenuItem(value:'Admin',child: Text('Admin')),
                    DropdownMenuItem(value:'Superuser',child: Text('Superuser')),
                    DropdownMenuItem(value:'Developer',child: Text('Developer')),
                    DropdownMenuItem(value:'Host',child: Text('Host')),
                  ] ,
                   onChanged: (value){
                    print(value);
                    formValues['role'] = value?? 'Admin';
                   }
                ),
          
                ElevatedButton(
                  child:const  SizedBox(
                    width: double.infinity,
                    child: Center(child: Text('Guardar'))),
                  onPressed: (){
                    
                    FocusScope.of(context).requestFocus(FocusNode());
                    if(!myFormKey.currentState!.validate()){
                      print(formValues);
                      return;
                    }
                      // Todo: imprimir valores del formulario
                     
                  }, 
                  )
          
          
              ],
            ),
          ),
         ),
      ),
    );
  }
}

