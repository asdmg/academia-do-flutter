
import 'package:flutter/material.dart';

class DialogCustom extends Dialog{
  DialogCustom(BuildContext context, {super.key}) : super(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(12)
    ),
    child: SizedBox(
      width: 300,
      height: 300,
      child: Column(children: [
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Text('TituloX'),
        ),
        TextButton(onPressed: () => Navigator.of(context).pop(), child: Text('Fechar Dialog'))
      ],),
    )
  );  
}