import 'package:flutter/material.dart';
import '../../components/MyDialog.dart';



class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Column(

      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,

      children: <Widget>[

        RaisedButton(

          child: Text('跳转到date测试页面'),
          onPressed: (){

            Navigator.pushNamed(context, '/dateDemo');
          },
        ),

        SizedBox(height: 20,),

        RaisedButton(

          child: Text('跳转到Diolog演示页面'),
          onPressed: (){

            Navigator.pushNamed(context, '/diolog');
          },
        ),

        SizedBox(height: 20,),

        RaisedButton(

          child: Text('自定义dialog演示'),
          onPressed: (){

            showDialog(
              context: context,
              builder: (context){
                return MyDialog(title: '关于我们', content: '这是文本');
              }
            );
          },
        )
      ],
    );
  }
}