import 'package:bytebank/components/Editor.dart';
import 'package:bytebank/models/transferencia.dart';
import 'package:flutter/material.dart';

const _titutoAppBar = 'Criando Transferencia';
const _rotuloNumeroConta = 'Número da conta';
const _dicaNumeroConta = '0000';
const _rotuloValor = 'Valor';
const _dicaValor = '0.00';
const _buttonConfirm = 'Confirmar';

class FormularioTransferencia extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return FormularioTransferenciaState();
  }
}

class FormularioTransferenciaState extends State<FormularioTransferencia> {
  final TextEditingController _controladorCampoNumeroConta =
      TextEditingController();
  final TextEditingController _controladorCampoValor = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_titutoAppBar),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Editor(
              controlador: _controladorCampoNumeroConta,
              rotulo: _rotuloNumeroConta,
              dica: _dicaNumeroConta,
            ),
            Editor(
              controlador: _controladorCampoValor,
              rotulo: _rotuloValor,
              dica: _dicaValor,
              icone: Icons.monetization_on,
            ),
            ElevatedButton(
              child: Text(_buttonConfirm),
              onPressed: () => _criaTransferencia(context),
            )
          ],
        ),
      ),
    );
  }

  void _criaTransferencia(BuildContext context) {
    final int? numeroConta = int.tryParse(_controladorCampoNumeroConta.text);
    final double? valor = double.tryParse(_controladorCampoValor.text);
    if (numeroConta != null && valor != null) {
      final transferenciaCriada = Transferencia(valor, numeroConta);
      Navigator.pop(context, transferenciaCriada);
    }
  }
}
