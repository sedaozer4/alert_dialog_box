import 'package:flutter/material.dart';

class AlertDialogPage extends StatefulWidget {
  const AlertDialogPage({super.key});

  @override
  State<AlertDialogPage> createState() => _AlertDialogPageState();
}

class _AlertDialogPageState extends State<AlertDialogPage> {

  Future<void> showAlertDialog() async{
    return showDialog(context: context, 
        builder: (BuildContext context) {
          return AlertDialog(
            backgroundColor: Colors.grey[800],
            title: Text('Basit Uyarı İletişim Kutusu', style: TextStyle(color: Colors.white),),
            content: SingleChildScrollView(
              child: ListBody(
                children: [
                  Text('Uyarı Kutusuna Hoşgeldiniz',
                    style: TextStyle(color: Colors.white),),
                ],
              ),
            ),
            actions: [
              TextButton(onPressed: () {
                Navigator.of(context).pop();
              }, child: Text('OK', style: TextStyle(
                  color: Colors.green, fontWeight: FontWeight.bold
              ),),),
            ],
          );
        }
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[800],
      appBar: AppBar(backgroundColor: Colors.green,
      title: Text('Uyarı İletişim Kutusu', style: TextStyle(color: Colors.white),),),
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 200,),
            ElevatedButton(
                onPressed: (){
                  showAlertDialog();
                },
                style: ElevatedButton.styleFrom(backgroundColor: Colors.green),
                child: Text('Basit Uyarı İletişim Kutusunu Görüntüle', style: TextStyle(color: Colors.white),)),
            SizedBox(height: 20,),
            ElevatedButton(
                onPressed: (){
                  showDialog(context: context, builder: (BuildContext context){
                    return DisplayAdvanceCustomAlertDialog();
                  });
                },
                style: ElevatedButton.styleFrom(backgroundColor: Colors.green),
                child: Text('Özel Uyarı İletişim Kutusunu Görüntüle', style: TextStyle(color: Colors.white),)
            ),
          ],
        ),
      ),
    );
  }
}

class DisplayAdvanceCustomAlertDialog extends StatelessWidget {
  const DisplayAdvanceCustomAlertDialog({super.key});



  @override
  Widget build(BuildContext context) {
    return Dialog(
      backgroundColor: Colors.grey[800],
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(4.0),
      ),
      child: Stack(
        clipBehavior: Clip.none,
        alignment: Alignment.topCenter,
        children: [
          Container(
            height: 180,
            child: Padding(padding: EdgeInsets.fromLTRB(10, 70, 10, 10),
              child: Column(
                children: [
                  Text('Uyarı Kutusuna Hoşgeldiniz', style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                  ),
                  SizedBox(height: 15,),
                  ElevatedButton(onPressed: (){
                    Navigator.of(context).pop();
                  },
                      style: ElevatedButton.styleFrom(backgroundColor: Color(0xff2f8d46)),
                      child: Text('OK', style: TextStyle(color: Colors.white),),)
                ],
              ),
            ),
          ),
          Positioned(
            top: -60,
            child: CircleAvatar(
              backgroundColor: Color(0xff2f8d46),
              radius: 50,
                //child: Image.network(
              //'https://www.google.com/imgres?q=yaz%C4%B1l%C4%B1m%20logo%2070x70&imgurl=https%3A%2F%2Flookaside.fbsbx.com%2Flookaside%2Fcrawler%2Fmedia%2F%3Fmedia_id%3D100088851725771&imgrefurl=https%3A%2F%2Fwww.facebook.com%2Fkodveracom%2F&docid=Ue9slFJo9jKYIM&tbnid=mMQQssjqenU76M&vet=12ahUKEwisw5eUpsqHAxWm-gIHHTQNJRMQM3oECBgQAA..i&w=400&h=400&hcb=2&ved=2ahUKEwisw5eUpsqHAxWm-gIHHTQNJRMQM3oECBgQAA',
              //height: 70,
              //width: 70,
              //),
          ),),
        ],
      ),
    );
  }
}

























