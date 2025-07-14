import 'package:flutter/material.dart';
import 'package:semester_project/pages/texttovoice.dart'; 
import 'package:semester_project/services/chat_web.dart';
import 'package:semester_project/theme/colors.dart';
import 'package:semester_project/widgets/searchsection.dart';
import 'package:semester_project/widgets/sidebar.dart';
import 'package:semester_project/pages/imagegenerator.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  String finalresponse = "";

  @override
  void initState() {
    super.initState();
    ChatWebService().connect();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Row(
          children: [
            // Sidebar(), // Uncomment if needed
            Expanded(
              child: Column(
                children: [
                  Expanded(child: Searchsection()),
                  
                  // Two buttons section
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => Promp_screen()),
                            );
                          },
                          child: Text("Go to Image Generator"),
                        ),
                        SizedBox(width: 20),
                        ElevatedButton(
                          onPressed: () {
                             Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => Texttovoice()),
                            );
                          },
                          child: Text("Second Button"),
                        ),
                      ],
                    ),
                  ),

                  // Footer section
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 16),
                    child: Wrap(
                      children: [
                        _footerItem("Pro"),
                        _footerItem("Enterprise"),
                        _footerItem("Store"),
                        _footerItem("Blog"),
                        _footerItem("Careers"),
                        _footerItem("English (english)"),
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _footerItem(String title) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 12),
      child: Text(
        title,
        style: TextStyle(
          fontSize: 14,
          color: AppColors.footerGrey,
        ),
      ),
    );
  }
}




// import 'package:flutter/material.dart';
// import 'package:semester_project/services/chat_web.dart';
// import 'package:semester_project/theme/colors.dart';
// import 'package:semester_project/widgets/searchsection.dart';
// import 'package:semester_project/widgets/sidebar.dart';
// import 'package:semester_project/pages/imagegenerator.dart';

// class Homepage extends StatefulWidget {
//   const Homepage({super.key});

//   @override
//   State<Homepage> createState() => _HomepageState();
// }

// class _HomepageState extends State<Homepage> {

//   String finalresponse="";
// @override
// void initState(){
//   super.initState();
//   ChatWebService().connect();
// }


//   @override
//   Widget build(BuildContext context) {
//     return  Scaffold(
//       body: Padding(
//         padding: const EdgeInsets.all(20.0),
//         child: Row(
//           children: [
//            // Sidebar(),
            
//             Expanded(
//               child: Column(
//                 children: [
//                   Expanded(child: Searchsection()),
//                    Padding(
//           padding: const EdgeInsets.all(12.0),
//           child: ElevatedButton(
//             onPressed: () {
//               Navigator.push(
//                 context,
//                 MaterialPageRoute(builder: (context) => Promp_screen()),
//               );
//             },
//             child: Text("Go to Image Generator"),),
//             Container(
//             ElevatedButton(
//             onPressed: () {
//               Navigator.push(
//                 context,
//                 MaterialPageRoute(builder: (context) => Promp_screen()),
//               );
//             },
//             child: Text("Go to Image Generator"),)),
//                    ),
              
//                    Container(
//                     padding: EdgeInsets.symmetric(vertical: 16),
//                     child: Wrap(
//                       children: [
//                         Padding(padding: EdgeInsets.symmetric(horizontal: 12),
//                         child:Text(
//                           "pro",
//                           style:TextStyle(
//                             fontSize: 14,
//                             color: AppColors.footerGrey,
//                           )
//                         ),),
//                          Padding(padding: EdgeInsets.symmetric(horizontal: 12),
//                         child:Text(
//                           "Enterprise",
//                           style:TextStyle(
//                             fontSize: 14,
//                             color: AppColors.footerGrey,
//                           )
//                         ),),
//                          Padding(padding: EdgeInsets.symmetric(horizontal: 12),
//                         child:Text(
//                           "Store",
//                           style:TextStyle(
//                             fontSize: 14,
//                             color: AppColors.footerGrey,
//                           )
//                         ),),
//                          Padding(padding: EdgeInsets.symmetric(horizontal: 12),
//                         child:Text(
//                           "Blog",
//                           style:TextStyle(
//                             fontSize: 14,
//                             color: AppColors.footerGrey,
//                           )
//                         ),),
//                          Padding(padding: EdgeInsets.symmetric(horizontal: 12),
//                         child:Text(
//                           "Carrers",
//                           style:TextStyle(
//                             fontSize: 14,
//                             color: AppColors.footerGrey,
//                           )
//                         ),),
//                          Padding(padding: EdgeInsets.symmetric(horizontal: 12),
//                         child:Text(
//                           "English (english)",
//                           style:TextStyle(
//                             fontSize: 14,
//                             color: AppColors.footerGrey,
//                           )
//                         ),)
//                       ],
//                     ),
//                   )
                  
//                 ],
//               ),
//             )
//           ],
//         ),
//       ),

//     );
//   }
// }