import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:semester_project/pages/chatpage.dart';
import 'package:semester_project/services/chat_web.dart';
import 'package:semester_project/theme/colors.dart';
import 'package:semester_project/widgets/searchbarbutton.dart';

class Searchsection extends StatefulWidget {
  const Searchsection({super.key});

  @override
  State<Searchsection> createState() => _SearchsectionState();
}

class _SearchsectionState extends State<Searchsection> {
  final queryController= TextEditingController();

 @override
  void dispose(){
    super.dispose();
    queryController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text('where knowledge beigns',
        style: GoogleFonts.ibmPlexMono(fontSize: 40,
        fontWeight:FontWeight.w400)
        ),
        const SizedBox(height: 32,),
        Container(
          width: 700,
          decoration: BoxDecoration(
            color: AppColors.searchBar,
            borderRadius: BorderRadius.circular(8),
            border: Border.all(
              color: AppColors.searchBarBorder,
              width: 1.5,
            )
          ),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: TextField(
                  controller: queryController,
                  decoration: InputDecoration(
                    hintText: 'search anything ...',
                    hintStyle: TextStyle(
                      color: AppColors.textGrey,
                      fontSize: 16,
                    ),
                    border: InputBorder.none,
                    isDense: true,
                    contentPadding: EdgeInsets.zero,

                  ),
                
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  children: [
                    Searchbarbutton(
                      icon : Icons.auto_awesome_outlined,
                      text:'Focus',
                    ),
                    const SizedBox(width: 12),
                    Searchbarbutton(
                       icon : Icons.add_circle_outlined,
                      text:'Attach',
                    ),
                    const Spacer(),
                    GestureDetector(
                      onTap: () {
                        ChatWebService().chat(queryController.text.trim());
                        Navigator.of(context).push(MaterialPageRoute(builder: (context) => ChatPage(question: queryController.text.trim())));
                      },
                      child: Container(
                        padding: EdgeInsets.all(9),
                        decoration: BoxDecoration(
                          color: AppColors.submitButton,
                          borderRadius: BorderRadius.circular(40),
                                      
                        ),
                        child: const Icon(Icons.arrow_forward,color: AppColors.background,size: 16,),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),

        )
      ],
    );
  }
}