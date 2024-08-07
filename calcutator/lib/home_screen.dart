import 'package:calcutator/componants/my_button.dart';
import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';
class home_screen extends StatefulWidget {

  const home_screen({Key? key} ): super(key: key);

  @override
  State<home_screen> createState() => _State();
}

class _State extends State<home_screen> {
  var userInput = '';
  var result = '';
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      home: Scaffold(
        backgroundColor: Colors.black ,
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              children: [
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Align(
                        alignment: Alignment.bottomRight,
                      child: Text(userInput.toString(),style: TextStyle(fontSize: 30, color: Colors.white)),),
                      SizedBox(height: 15,),

                      Align(
                        alignment: Alignment.bottomRight,
                        child:Text(result.toString(),style: TextStyle(fontSize: 30, color: Colors.white)),
                      )
                    ],
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Column(
                    children: [
                      Row(
                        children: [
                          MyButton(title: 'AC',onpress: (){
                            userInput ='';
                            result ='';
                            setState(() {

                            });
                          },),
                          MyButton(title: '+/-',onpress: (){
                            userInput +='=/-';
                            setState(() {

                            });
                          },),
                          MyButton(title: '%',onpress: (){
                            userInput +='%';
                            setState(() {

                            });
                          },),
                          MyButton(title: '/',color: Colors.orange,onpress: (){
                            userInput +='/';
                            setState(() {

                            });
                          },),
                        ],
                      ),
                      Row(
                        children: [
                          MyButton(title: '7',onpress: (){
                            userInput +='7';
                            setState(() {

                            });
                          },),
                          MyButton(title: '8',onpress: (){
                            userInput +='8';
                            setState(() {

                            });
                          },),
                          MyButton(title: '9',onpress: (){
                            userInput +='9';
                            setState(() {

                            });
                          },),
                          MyButton(title: '*',color: Colors.orange,onpress: (){
                            userInput +='*';
                            setState(() {

                            });
                          },),
                        ],
                      ),
                      Row(
                        children: [
                          MyButton(title: '4',onpress: (){
                            userInput +='4';
                            setState(() {

                            });
                          },),
                          MyButton(title: '5',onpress: (){
                            userInput +='5';
                            setState(() {

                            });
                          },),
                          MyButton(title: '6',onpress: (){
                            userInput +='6';
                            setState(() {

                            });
                          },),
                          MyButton(title: '-',color: Colors.orange,onpress: (){
                            userInput +='-';
                            setState(() {

                            });
                          },),
                        ],
                      ),
                      Row(
                        children: [
                          MyButton(title: '1',onpress: (){
                            userInput +='1';
                            setState(() {

                            });
                          },),
                          MyButton(title: '2',onpress: (){
                            userInput +='2';
                            setState(() {

                            });
                          },),
                          MyButton(title: '3',onpress: (){
                            userInput +='3';
                            setState(() {

                            });
                          },),
                          MyButton(title: '+',color: Colors.orange,onpress: (){
                            userInput +='+';
                            setState(() {

                            });
                          },),
                        ],
                      ),
                      Row(
                        children: [
                          MyButton(title: '0',onpress: (){
                            userInput +='0';
                            setState(() {

                            });
                          },),
                          MyButton(title: '.',onpress: (){
                            userInput +='.';
                            setState(() {

                            });
                          },),
                          MyButton(title: 'DEl',onpress: (){
                            userInput = userInput.substring(0,userInput.length-1);
                            setState(() {

                            });
                          },),
                          MyButton(title: '=',color: Colors.orange,onpress: (){
                            equalpress();
                            setState(() {

                            });
                          },),
                        ],
                      )
                    ],
                  ),
                )


              ],
            ),
          ),
        ),
      ),
    );

  }
  void equalpress()
  {
    Parser p =Parser();
    Expression expression = p.parse(userInput);
    ContextModel contextModel=ContextModel();

    double eval =expression.evaluate(EvaluationType.REAL, contextModel);
    result=eval.toString();
  }
}


