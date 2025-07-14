import 'package:flutter/material.dart';
import 'package:semester_project/theme/colors.dart';

class Searchbarbutton extends StatefulWidget {
  final IconData icon;
  final String text;

  const Searchbarbutton({super.key,required this.icon,required this.text});

  @override
  State<Searchbarbutton> createState() => _Searchbarstate();
}

class _Searchbarstate extends State<Searchbarbutton> {
  bool ishover=false;
  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter:(event) {
        setState(() {
          ishover=true;
        });
      } ,
      onExit: (event) {
        setState(() {
          ishover=false;
        });
      },
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 8,vertical: 4) ,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(6),
          color: ishover? AppColors.proButton: Colors.transparent,
        ),
        child: Row(
          children: [
            Icon(widget.icon,
            color:AppColors.iconGrey,
            size: 20,),
            SizedBox(width:8),
            Text(widget.text,
            style: TextStyle(
              color: AppColors.textGrey,
            ),
            )
          ],
        ),
      ),
    );
  }
}