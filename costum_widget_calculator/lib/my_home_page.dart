import 'dart:ffi';

import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  _MyHomePage createState() => _MyHomePage();
}

class _MyHomePage extends State<MyHomePage> {
  int result = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Container(
              color: Theme.of(context).primaryColor,
              child: Align(
                child: Text(
                  '$result',
                  style: Theme.of(context)
                      .textTheme
                      .headline3!
                      .copyWith(color: Colors.white),
                ),
              ),
            ),
          ),
          GridView.count(
            crossAxisCount: 4,
            shrinkWrap: true,
            padding: const EdgeInsets.all(0),
            children: <Widget>[
              CalculatorButton(
                backgroundColor: Theme.of(context).primaryColorLight,
                foregroundColor: Theme.of(context).primaryColorDark,
                text: 'C',
                onTap: () {
                  setState(() {
                    result = 0;
                  });
                },
              ),
              CalculatorButton(
                backgroundColor: Theme.of(context).primaryColorLight,
                foregroundColor: Theme.of(context).primaryColorDark,
                text: '+/-',
                onTap: () {
                  setState(() {
                    result *= -1;
                  });
                },
              ),
              CalculatorButton(
                backgroundColor: Theme.of(context).primaryColorLight,
                foregroundColor: Theme.of(context).primaryColorDark,
                text: '%',
                onTap: () {
                  setState(() {
                    result = result ~/ 100;
                  });
                },
              ),
              CalculatorButton.Icon(
                backgroundColor: Theme.of(context).primaryColorDark,
                foregroundColor: Theme.of(context).primaryColorLight,
                text: 'BackSpace',
                icon: Icons.backspace,
                onTap: () {},
              ),
              CalculatorButton(
                backgroundColor: Theme.of(context).secondaryHeaderColor,
                foregroundColor: Theme.of(context).primaryColorDark,
                text: '7',
                onTap: () {
                  setState(() {
                    String number = result.toString() + '7';
                    result = int.parse(number);
                  });
                },
              ),
              CalculatorButton(
                backgroundColor: Theme.of(context).secondaryHeaderColor,
                foregroundColor: Theme.of(context).primaryColorDark,
                text: '8',
                onTap: () {
                  setState(() {
                    String number = result.toString() + '8';
                    result = int.parse(number);
                  });
                },
              ),
              CalculatorButton(
                backgroundColor: Theme.of(context).secondaryHeaderColor,
                foregroundColor: Theme.of(context).primaryColorDark,
                text: '9',
                onTap: () {
                  setState(() {
                    String number = result.toString() + '9';
                    result = int.parse(number);
                  });
                },
              ),
              CalculatorButton(
                backgroundColor: Theme.of(context).primaryColorLight,
                foregroundColor: Theme.of(context).primaryColorDark,
                text: '/',
                onTap: () {},
              ),
              CalculatorButton(
                backgroundColor: Theme.of(context).secondaryHeaderColor,
                foregroundColor: Theme.of(context).primaryColorDark,
                text: '4',
                onTap: () {
                  setState(() {
                    String number = result.toString() + '4';
                    result = int.parse(number);
                  });
                },
              ),
              CalculatorButton(
                backgroundColor: Theme.of(context).secondaryHeaderColor,
                foregroundColor: Theme.of(context).primaryColorDark,
                text: '5',
                onTap: () {
                  setState(() {
                    String number = result.toString() + '5';
                    result = int.parse(number);
                  });
                },
              ),
              CalculatorButton(
                backgroundColor: Theme.of(context).secondaryHeaderColor,
                foregroundColor: Theme.of(context).primaryColorDark,
                text: '6',
                onTap: () {
                  setState(() {
                    String number = result.toString() + '6';
                    result = int.parse(number);
                  });
                },
              ),
              CalculatorButton(
                backgroundColor: Theme.of(context).primaryColorLight,
                foregroundColor: Theme.of(context).primaryColorDark,
                text: 'X',
                onTap: () {},
              ),
              CalculatorButton(
                backgroundColor: Theme.of(context).secondaryHeaderColor,
                foregroundColor: Theme.of(context).primaryColorDark,
                text: '1',
                onTap: () {
                  setState(() {
                    String number = result.toString() + '1';
                    result = int.parse(number);
                  });
                },
              ),
              CalculatorButton(
                backgroundColor: Theme.of(context).secondaryHeaderColor,
                foregroundColor: Theme.of(context).primaryColorDark,
                text: '2',
                onTap: () {
                  setState(() {
                    String number = result.toString() + '2';
                    result = int.parse(number);
                  });
                },
              ),
              CalculatorButton(
                backgroundColor: Theme.of(context).secondaryHeaderColor,
                foregroundColor: Theme.of(context).primaryColorDark,
                text: '3',
                onTap: () {
                  setState(() {
                    String number = result.toString() + '3';
                    result = int.parse(number);
                  });
                },
              ),
              CalculatorButton(
                backgroundColor: Theme.of(context).primaryColorLight,
                foregroundColor: Theme.of(context).primaryColorDark,
                text: '-',
                onTap: () {},
              ),
              CalculatorButton(
                backgroundColor: Theme.of(context).secondaryHeaderColor,
                foregroundColor: Theme.of(context).primaryColorDark,
                text: '0',
                onTap: () {
                  setState(() {
                    String number = result.toString() + '0';
                    result = int.parse(number);
                  });
                },
              ),
              CalculatorButton(
                backgroundColor: Theme.of(context).secondaryHeaderColor,
                foregroundColor: Theme.of(context).primaryColorDark,
                text: '.',
                onTap: () {},
              ),
              CalculatorButton(
                backgroundColor: Theme.of(context).primaryColorLight,
                foregroundColor: Theme.of(context).primaryColorDark,
                text: '=',
                onTap: () {},
              ),
              CalculatorButton(
                backgroundColor: Theme.of(context).primaryColorLight,
                foregroundColor: Theme.of(context).primaryColorDark,
                text: '+',
                onTap: () {},
              ),
            ],
          )
        ],
      ),
    );
  }
}

class CalculatorButton extends StatelessWidget {
  final Color backgroundColor;
  final Color foregroundColor;
  final String text;
  IconData? icon;

  final Function() onTap;

  CalculatorButton({
    required this.backgroundColor,
    required this.foregroundColor,
    required this.text,
    required this.onTap,
  });
  CalculatorButton.Icon({
    required this.backgroundColor,
    required this.foregroundColor,
    required this.text,
    required this.icon,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        color: backgroundColor,
        child: Center(
            child: icon == null
                ? Text(
                    text,
                    style: Theme.of(context)
                        .textTheme
                        .headline4!
                        .copyWith(color: foregroundColor),
                  )
                : Icon(
                    icon,
                    color: foregroundColor,
                  )),
      ),
    );
  }
}
