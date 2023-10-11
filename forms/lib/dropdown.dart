
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:forms/auto_slider.dart';

class DropDown extends StatefulWidget {
  const DropDown({super.key});

  @override
  State<DropDown> createState() => _DropDownState();
}

class _DropDownState extends State<DropDown> {
  bool? _ischecked=false;
  bool _mode=false;
  String? drop="";
  List<String> coll=["Aditya Engineering College","Aditya College of Engineering & Technology","Aditya College of Engineering"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          CheckboxMenuButton(
              value: _ischecked,
              onChanged: (val){
                setState(() {
                  _ischecked=val;
                });
              },
              child: Text("Save the Credentials"),
              trailingIcon: Icon(Icons.save),
          ),
          SwitchListTile(value: _mode, onChanged:(val){
            setState(() {
              _mode=val;
            });
          },
            visualDensity: VisualDensity(
              horizontal: 4,
              vertical: 4
            ),
            title: Text("Allow Notifications"),


          ),
          DropdownMenu(
              hintText: "Select College",
              dropdownMenuEntries:
              coll.map<DropdownMenuEntry<String>>((e) {
                return DropdownMenuEntry(value: e, label: e);
              }).toList(),
              onSelected: (val){
                setState(() {
                  drop=val;
                });
              },
          ),
          SizedBox(
            height: 40,
          ),

          _ischecked==true && _mode  && drop!.isNotEmpty?
          ElevatedButton(onPressed: (){
            if(_ischecked==true){
              print("Verified");
              print(drop);
            }
            else{
              print("Not Verified");
            }
          }, child: Text("Check")): Text(""),
          SizedBox(
            height:20
          ),
          MaterialButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=> MyAutoSlider()));
          },
          child:Text("Auto Slider")
          ),
          CupertinoButton.filled(
              child: Text("open online pdf",style: TextStyle(
            fontWeight: FontWeight.bold
          ),), onPressed: (){

          })
        ],
      ),
    );
  }
}
