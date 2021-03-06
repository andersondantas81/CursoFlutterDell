import 'package:exercicio_mobx/widgets/custom_icon_button.dart';
import 'package:exercicio_mobx/widgets/custom_text_field.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'login_screen.dart';

class ListScreen extends StatefulWidget {

  @override
  _ListScreenState createState() => _ListScreenState();
}

class _ListScreenState extends State<ListScreen>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset:  false,
      body: Container(
        margin: const EdgeInsets.fromLTRB(32, 0, 32, 32),
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 2),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    'Taferas',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w900,
                      fontSize: 32
                    ),
                  ),
                  IconButton(
                    onPressed: (){
                      Navigator.of(context).pushReplacement(
                          MaterialPageRoute(builder: (context) => LoginScreen())
                      );
                    },
                    icon: Icon(Icons.exit_to_app),
                    color: Colors.white,
                  ),
                ],
              ),
            ),
            Expanded(child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
              ),
              elevation: 16,
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  children: <Widget>[
                    CustomTextField(
                      hint: 'Tarefa',
                      onChanged: (todo){

                      },
                      suffix: CustomIconButton(
                        radius: 32,
                        iconData: Icons.add,
                        onTap: (){

                        },
                      ),
                    ),
                    const SizedBox(height: 8,),
                    Expanded(
                        child: ListView.separated(
                            itemCount: 10,
                            itemBuilder: (_, index){
                              return ListTile(
                                title: Text(
                                  'Item $index',
                                ),
                                onTap: (){

                                },
                              );
                            },
                            separatorBuilder: (_, __){
                              return Divider();
                            }
                        )
                    )
                  ],
                ),
              ),
            )),
          ],
        ),
      ),
    );
  }
}