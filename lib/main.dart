import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String _result = "";
  String _evaluate = "";
  final ScrollController _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    _scrollToEnd(); // Automatically scroll to the end when the widget is built
  }

  void _scrollToEnd() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _scrollController.jumpTo(_scrollController.position.maxScrollExtent);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('Calculator')),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Expanded(
              flex: 20,
              child: Container(
                padding: const EdgeInsets.all(5),
                alignment: Alignment.centerRight,
                decoration: const BoxDecoration(
                  border: Border(
                    top: BorderSide(
                        color: Color.fromARGB(255, 201, 201, 201), width: 2.0),
                  ),
                ),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Text(
                    _result,
                    style: const TextStyle(
                      fontSize: 48,
                    ),
                    textAlign: TextAlign.right,
                    overflow: TextOverflow.clip,
                    maxLines: 1,
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 15,
              child: Container(
                padding: const EdgeInsets.all(10),
                alignment: Alignment.centerRight,
                decoration: const BoxDecoration(
                  border: Border(
                    top: BorderSide(
                        color: Color.fromARGB(255, 201, 201, 201), width: 2.0),
                  ),
                ),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  controller: _scrollController,
                  child: Text(
                    _evaluate,
                    style: const TextStyle(
                      fontSize: 48,
                    ),
                    textAlign: TextAlign.right,
                    overflow: TextOverflow.clip,
                    maxLines: 1,
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 63,
              child: Container(
                padding: const EdgeInsets.all(5),
                alignment: Alignment.center,
                child: Column(children: [
                  Expanded(
                    flex: 80,
                    child: Column(
                      children: [
                        Expanded(
                          flex: 25,
                          child: Row(
                            children: [
                              Expanded(
                                child: SizedBox.expand(
                                  child: ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                        backgroundColor: Colors.white,
                                        foregroundColor: Colors.black,
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(5.0),
                                          side: const BorderSide(
                                              color: Color.fromARGB(
                                                  255, 201, 201, 201),
                                              width: 1.5),
                                        ),
                                      ),
                                      onPressed: () {
                                        setState(() {
                                          _evaluate += '7';
                                        });
                                        _scrollToEnd();
                                      },
                                      child: const Text('7',
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 48,
                                          ))),
                                ),
                              ),
                              Expanded(
                                child: SizedBox.expand(
                                  child: ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                        backgroundColor: Colors.white,
                                        foregroundColor: Colors.black,
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(5.0),
                                          side: const BorderSide(
                                              color: Color.fromARGB(
                                                  255, 201, 201, 201),
                                              width: 1.5),
                                        ),
                                      ),
                                      onPressed: () {
                                        setState(() {
                                          _evaluate += '8';
                                        });
                                        _scrollToEnd();
                                      },
                                      child: const Text('8',
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 48,
                                          ))),
                                ),
                              ),
                              Expanded(
                                child: SizedBox.expand(
                                  child: ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                        backgroundColor: Colors.white,
                                        foregroundColor: Colors.black,
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(5.0),
                                          side: const BorderSide(
                                              color: Color.fromARGB(
                                                  255, 201, 201, 201),
                                              width: 1.5),
                                        ),
                                      ),
                                      onPressed: () {
                                        setState(() {
                                          _evaluate += '9';
                                        });
                                        _scrollToEnd();
                                      },
                                      child: const Text('9',
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 48,
                                          ))),
                                ),
                              ),
                              Expanded(
                                child: SizedBox.expand(
                                  child: ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                        backgroundColor: Colors.white,
                                        foregroundColor: Colors.black,
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(5.0),
                                          side: const BorderSide(
                                              color: Color.fromARGB(
                                                  255, 201, 201, 201),
                                              width: 1.5),
                                        ),
                                      ),
                                      onPressed: () {
                                        setState(() {
                                          _evaluate += '/';
                                        });
                                        _scrollToEnd();
                                      },
                                      child: const Text('/',
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 48,
                                          ))),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          flex: 25,
                          child: Row(
                            children: [
                              Expanded(
                                child: SizedBox.expand(
                                  child: ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                        backgroundColor: Colors.white,
                                        foregroundColor: Colors.black,
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(5.0),
                                          side: const BorderSide(
                                              color: Color.fromARGB(
                                                  255, 201, 201, 201),
                                              width: 1.5),
                                        ),
                                      ),
                                      onPressed: () {
                                        setState(() {
                                          _evaluate += '4';
                                        });
                                        _scrollToEnd();
                                      },
                                      child: const Text('4',
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 48,
                                          ))),
                                ),
                              ),
                              Expanded(
                                child: SizedBox.expand(
                                  child: ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                        backgroundColor: Colors.white,
                                        foregroundColor: Colors.black,
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(5.0),
                                          side: const BorderSide(
                                              color: Color.fromARGB(
                                                  255, 201, 201, 201),
                                              width: 1.5),
                                        ),
                                      ),
                                      onPressed: () {
                                        setState(() {
                                          _evaluate += '5';
                                        });
                                        _scrollToEnd();
                                      },
                                      child: const Text('5',
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 48,
                                          ))),
                                ),
                              ),
                              Expanded(
                                child: SizedBox.expand(
                                  child: ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                        backgroundColor: Colors.white,
                                        foregroundColor: Colors.black,
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(5.0),
                                          side: const BorderSide(
                                              color: Color.fromARGB(
                                                  255, 201, 201, 201),
                                              width: 1.5),
                                        ),
                                      ),
                                      onPressed: () {
                                        setState(() {
                                          _evaluate += '6';
                                        });
                                        _scrollToEnd();
                                      },
                                      child: const Text('6',
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 48,
                                          ))),
                                ),
                              ),
                              Expanded(
                                child: SizedBox.expand(
                                  child: ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                        backgroundColor: Colors.white,
                                        foregroundColor: Colors.black,
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(5.0),
                                          side: const BorderSide(
                                              color: Color.fromARGB(
                                                  255, 201, 201, 201),
                                              width: 1.5),
                                        ),
                                      ),
                                      onPressed: () {
                                        setState(() {
                                          _evaluate += 'X';
                                        });
                                        _scrollToEnd();
                                      },
                                      child: const Text('X',
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 48,
                                          ))),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          flex: 25,
                          child: Row(
                            children: [
                              Expanded(
                                child: SizedBox.expand(
                                  child: ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                        backgroundColor: Colors.white,
                                        foregroundColor: Colors.black,
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(5.0),
                                          side: const BorderSide(
                                              color: Color.fromARGB(
                                                  255, 201, 201, 201),
                                              width: 1.5),
                                        ),
                                      ),
                                      onPressed: () {
                                        setState(() {
                                          _evaluate += '1';
                                        });
                                        _scrollToEnd();
                                      },
                                      child: const Text('1',
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 48,
                                          ))),
                                ),
                              ),
                              Expanded(
                                child: SizedBox.expand(
                                  child: ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                        backgroundColor: Colors.white,
                                        foregroundColor: Colors.black,
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(5.0),
                                          side: const BorderSide(
                                              color: Color.fromARGB(
                                                  255, 201, 201, 201),
                                              width: 1.5),
                                        ),
                                      ),
                                      onPressed: () {
                                        setState(() {
                                          _evaluate += '2';
                                        });
                                        _scrollToEnd();
                                      },
                                      child: const Text('2',
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 48,
                                          ))),
                                ),
                              ),
                              Expanded(
                                child: SizedBox.expand(
                                  child: ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                        backgroundColor: Colors.white,
                                        foregroundColor: Colors.black,
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(5.0),
                                          side: const BorderSide(
                                              color: Color.fromARGB(
                                                  255, 201, 201, 201),
                                              width: 1.5),
                                        ),
                                      ),
                                      onPressed: () {
                                        setState(() {
                                          _evaluate += '3';
                                        });
                                        _scrollToEnd();
                                      },
                                      child: const Text('3',
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 48,
                                          ))),
                                ),
                              ),
                              Expanded(
                                child: SizedBox.expand(
                                  child: ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                        backgroundColor: Colors.white,
                                        foregroundColor: Colors.black,
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(5.0),
                                          side: const BorderSide(
                                              color: Color.fromARGB(
                                                  255, 201, 201, 201),
                                              width: 1.5),
                                        ),
                                      ),
                                      onPressed: () {
                                        setState(() {
                                          _evaluate += '-';
                                        });
                                        _scrollToEnd();
                                      },
                                      child: const Text('-',
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 48,
                                          ))),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          flex: 25,
                          child: Row(
                            children: [
                              Expanded(
                                child: SizedBox.expand(
                                  child: ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                        backgroundColor: Colors.white,
                                        foregroundColor: Colors.black,
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(5.0),
                                          side: const BorderSide(
                                              color: Color.fromARGB(
                                                  255, 201, 201, 201),
                                              width: 1.5),
                                        ),
                                      ),
                                      onPressed: () {
                                        setState(() {
                                          _evaluate += '.';
                                        });
                                        _scrollToEnd();
                                      },
                                      child: const Text('.',
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 48,
                                          ))),
                                ),
                              ),
                              Expanded(
                                child: SizedBox.expand(
                                  child: ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                        backgroundColor: Colors.white,
                                        foregroundColor: Colors.black,
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(5.0),
                                          side: const BorderSide(
                                              color: Color.fromARGB(
                                                  255, 201, 201, 201),
                                              width: 1.5),
                                        ),
                                      ),
                                      onPressed: () {
                                        setState(() {
                                          _evaluate += '0';
                                        });
                                        _scrollToEnd();
                                      },
                                      child: const Text('0',
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 48,
                                          ))),
                                ),
                              ),
                              Expanded(
                                child: SizedBox.expand(
                                  child: ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                        backgroundColor: Colors.white,
                                        foregroundColor: Colors.black,
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(5.0),
                                          side: const BorderSide(
                                              color: Color.fromARGB(
                                                  255, 201, 201, 201),
                                              width: 1.5),
                                        ),
                                      ),
                                      onPressed: () {
                                        setState(() {
                                          _evaluate += '00';
                                        });
                                        _scrollToEnd();
                                      },
                                      child: const Text('00',
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 45,
                                          ))),
                                ),
                              ),
                              Expanded(
                                child: SizedBox.expand(
                                  child: ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                        backgroundColor: Colors.white,
                                        foregroundColor: Colors.black,
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(5.0),
                                          side: const BorderSide(
                                              color: Color.fromARGB(
                                                  255, 201, 201, 201),
                                              width: 1.5),
                                        ),
                                      ),
                                      onPressed: () {
                                        setState(() {
                                          _evaluate += '+';
                                        });
                                        _scrollToEnd();
                                      },
                                      child: const Text('+',
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 48,
                                          ))),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 20,
                    child: Row(
                      children: [
                        Expanded(
                          child: SizedBox.expand(
                            child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.white,
                                  foregroundColor: Colors.black,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(5.0),
                                    side: const BorderSide(
                                        color:
                                            Color.fromARGB(255, 201, 201, 201),
                                        width: 1.5),
                                  ),
                                ),
                                onPressed: () {
                                  setState(() {
                                    _evaluate = '';
                                  });
                                  _scrollToEnd();
                                },
                                child: const Text('CLEAR',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 45,
                                    ))),
                          ),
                        ),
                        Expanded(
                          child: SizedBox.expand(
                            child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.white,
                                  foregroundColor: Colors.black,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(5.0),
                                    side: const BorderSide(
                                        color:
                                            Color.fromARGB(255, 201, 201, 201),
                                        width: 1.5),
                                  ),
                                ),
                                onPressed: () {
                                  try {
                                    // Replace X with * for multiplication
                                    String expression = _evaluate;
                                    expression =
                                        expression.replaceAll('X', '*');

                                    // Create a parser and evaluate the expression
                                    Parser p = Parser();
                                    Expression exp = p.parse(expression);
                                    ContextModel cm = ContextModel();
                                    double eval =
                                        exp.evaluate(EvaluationType.REAL, cm);

                                    setState(() {
                                      _result = eval.toString();
                                    }); // Return the result as a string
                                  } catch (e) {
                                    setState(() {
                                      _result = 'Error';
                                    });
                                  }
                                },
                                child: const Text('=',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 48,
                                    ))),
                          ),
                        ),
                      ],
                    ),
                  )
                ]),
              ),
            ),
          ],
        ));
  }
}
