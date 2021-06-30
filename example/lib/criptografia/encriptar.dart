import 'package:cifrar_msg/cifrar_msg.dart';
import 'package:example/criptografia/form_widget.dart';
import 'package:flutter/material.dart';

class Encriptar extends StatefulWidget {
  const Encriptar({Key? key}) : super(key: key);

  @override
  _EncriptarState createState() => _EncriptarState();
}

class _EncriptarState extends State<Encriptar> {
  final _formKey = GlobalKey<FormState>();
  late String title;
  late String description;
  String textoEncriptado = '';
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(height: 20),
          Text(
            'Encriptar uma mensagem',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
          ),
          const SizedBox(height: 8),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: FormWidget(
              onChangedJamp: (title) {
                setState(() {
                  this.textoEncriptado = '';
                  this.title = title;
                });
              },
              onChangedDescription: (description) {
                setState(() {
                  this.textoEncriptado = '';
                  this.description = description;
                });
              },
              onSave: () {
                setState(() {
                  if (this.title.isNotEmpty && this.description.isNotEmpty) {
                    var cifraMsg = CifrarMsg(
                        textoOriginal: this.description,
                        chave: int.parse(
                          this.title,
                        ));
                    // print(cifraMsg.encriptar());
                    // print(cifraMsg.textoCifradoHex());
                    this.textoEncriptado = cifraMsg.encriptarEHex();
                  }
                });
              },
            ),
          ),
          // SizedBox(height: 2),
          Center(child: Text('Texto encriptado:')),
          SizedBox(height: 10),
          SelectableText(textoEncriptado),
        ],
      ),
    );
  }
}
