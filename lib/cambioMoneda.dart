import 'package:flutter/material.dart';

class CambioMonedaPage extends StatefulWidget {
  @override
  _CambioMonedaPageState createState() => _CambioMonedaPageState();
}

class _CambioMonedaPageState extends State<CambioMonedaPage> {
  final TextEditingController _controller = TextEditingController();
  double _exchangeRateDollarCompra =
      23.5; // Tasa de cambio para la compra de dólares
  double _exchangeRateDollarVenta =
      24.5; // Tasa de cambio para la venta de dólares
  double _exchangeRateEuroCompra =
      26.5; // Tasa de cambio para la compra de euros
  double _exchangeRateEuroVenta = 27.5; // Tasa de cambio para la venta de euros
  String _selectedCurrency = 'Dólar';
  double _resultCompra = 0.0;
  double _resultVenta = 0.0;

  void _calculateExchangeRate(String value) {
    double inputValue = double.tryParse(value) ?? 0.0;
    setState(() {
      if (_selectedCurrency == 'Dólar') {
        _resultCompra = inputValue * _exchangeRateDollarCompra;
        _resultVenta = inputValue * _exchangeRateDollarVenta;
      } else {
        _resultCompra = inputValue * _exchangeRateEuroCompra;
        _resultVenta = inputValue * _exchangeRateEuroVenta;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cambio de Monedas'),
        backgroundColor: Colors.blueGrey,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            DropdownButton<String>(
              value: _selectedCurrency,
              items: <String>['Dólar', 'Euro'].map((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
              onChanged: (String? newValue) {
                setState(() {
                  _selectedCurrency = newValue!;
                  _calculateExchangeRate(_controller.text);
                });
              },
            ),
            Divider(color: Colors.blueGrey),
            Text(
              'Tasa de cambio disponible: ' +
                  (_selectedCurrency == 'Dólar'
                      ? 'Compra: $_exchangeRateDollarCompra, Venta: $_exchangeRateDollarVenta'
                      : 'Compra: $_exchangeRateEuroCompra, Venta: $_exchangeRateEuroVenta'),
              style: TextStyle(fontSize: 20.0, color: Colors.blueGrey),
            ),
            Divider(color: Colors.blueGrey),
            TextField(
              controller: _controller,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: 'Introduce la cantidad',
                border: OutlineInputBorder(),
                suffixIcon: Icon(Icons.attach_money),
              ),
              onChanged: _calculateExchangeRate,
            ),
            Divider(color: Colors.blueGrey),
            Card(
              child: ListTile(
                title: Text(
                  'Resultado Compra: $_resultCompra Lempiras',
                  style: TextStyle(fontSize: 24.0, color: Colors.blueGrey),
                ),
              ),
            ),
            Card(
              child: ListTile(
                title: Text(
                  'Resultado Venta: $_resultVenta Lempiras',
                  style: TextStyle(fontSize: 24.0, color: Colors.blueGrey),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
