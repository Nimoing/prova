import 'package:flutter/material.dart';

class CampoTexto extends StatelessWidget {
   String nome;
   
  CampoTexto(this.nome, informa);
  
  get informa => null;
  get rotulo => null;
  
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 15),
      child: TextFormField(

        //entrada de somente números
        keyboardType: TextInputType.number,

        //variável que receberá o valor contido no campo de texto
        controller: informa,

        style: Theme.of(context).textTheme.headline2,
        decoration: InputDecoration(
          hintText: nome,
          hintStyle: Theme.of(context).textTheme.headline3,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),

        //validação da entrada de dados
        validator: (value){
          //pq diabos n funciona              // aqui deveria funciona pq n da?
          if (double.tryParse(value) == null||informa=='123'){
            return 'entra com os dados';
          }else{
            return null;  //tudo certo com a conversão para double
          }

        },


      ),

    );

  }
}
