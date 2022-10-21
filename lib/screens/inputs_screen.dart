import 'package:fl_components/widgets/widget.dart';
import 'package:flutter/material.dart';

class InputScreen extends StatelessWidget {
   
  const InputScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
  
    final GlobalKey<FormState> myFormKey = GlobalKey<FormState>();

    final Map<String, String> formValues = {
      'first_name'  : 'Brayan',
      'last_name'   :  'Ramos',
      'email'       : 'brayan@gmail.com',
      'password'    : '1234567',
      'role'        : 'Admin'
    };

    return  Scaffold(
      appBar: AppBar(
        title: const  Text('Inputs y Forms'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Form(
            key: myFormKey,
            child: Column(
              children:  [
          
                CustomInputField(
                  labelText: 'Nombre',
                  helperText: 'Nombre del usuario', 
                  formProperty: 'first_name', 
                  formValues: formValues,
                ),
                const SizedBox(height: 30,),
                CustomInputField(
                  labelText: 'Apellido',
                  helperText: 'Apellido del usuario',
                  formProperty: 'last_name', 
                  formValues: formValues,
                ),
                const SizedBox(height: 30,),
          
                CustomInputField(
                  labelText: 'Correo',
                  helperText: 'Correo del usuario',
                  keyboardType: TextInputType.emailAddress,
                  formProperty: 'email', 
                  formValues: formValues,
                ),
                const SizedBox(height: 30,),
          
                CustomInputField(
                  labelText: 'Contraseña',
                  helperText: 'Contraseña del usuario',
                  obscureText: true,
                  formProperty: 'password', 
                  formValues: formValues,
                ),
                const SizedBox(height: 30,),

                DropdownButtonFormField<String>(
                  value: 'Admin',
                  items: const [
                    DropdownMenuItem(
                      value: 'Admin',
                      child: Text('Admin'),
                    ),
                    DropdownMenuItem(
                      value: 'SuperUser',
                      child: Text('SuperUser'),
                    ),
                    DropdownMenuItem(
                      value: 'Developer',
                      child: Text('Developer'),
                    ),
                    DropdownMenuItem(
                      value: 'Jr. Devloper',
                      child: Text('Jr. Devloper'),
                    ),
                  ],
                  onChanged: (value){
                    print(value);
                    formValues['rule'] = value ?? 'Admin';
                  },
                ),
          
                ElevatedButton(
                  child: const SizedBox(
                    width: double.infinity,
                    child: Center(child: Text('Guardar'))),
                  onPressed: (){
                    //para esconder el teclado, una ves tocado el boton
                    FocusScope.of(context).requestFocus(FocusNode());


                    if(!myFormKey.currentState!.validate()){
                      print('Formulario no valido');
                      return;
                    }



                    print(formValues);
                  }, 
                  
                )
          
              ]
            ),
          ),
        ),
      )
    );
  }
}
