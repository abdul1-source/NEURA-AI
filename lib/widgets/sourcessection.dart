import 'package:flutter/material.dart';
import 'package:semester_project/services/chat_web.dart';
import 'package:semester_project/theme/colors.dart';

class SourcesSection extends StatefulWidget {
  const SourcesSection({super.key});

  @override
  State<SourcesSection> createState() => _SourcesSectionState();
}

class _SourcesSectionState extends State<SourcesSection> {
  List searchResults = [];
  //  [
  //   {
  //     'title': 'Ind vs Aus Live Score 4th Test',
  //     'url':
  //         'https://www.moneycontrol.com/sports/cricket/ind-vs-aus-live-score-4th-test-shubman-gill-dropped-australia-win-toss-opt-to-bat-liveblog-12897631.html',
  //   },
  //   {
  //     'title': 'Ind vs Aus Live Boxing Day Test',
  //     'url':
  //         'https://timesofindia.indiatimes.com/sports/cricket/india-vs-australia-live-score-boxing-day-test-2024-ind-vs-aus-4th-test-day-1-live-streaming-online/liveblog/116663401.cms',
  //   },
  //   {
  //     'title': 'Ind vs Aus - 4 Australian Batters Score Half Centuries',
  //     'url':
  //         'https://economictimes.indiatimes.com/news/sports/ind-vs-aus-four-australian-batters-score-half-centuries-in-boxing-day-test-jasprit-bumrah-leads-indias-fightback/articleshow/116674365.cms',
  //   },
  // ];
  @override
  void initState(){
    super.initState();
    ChatWebService().connect();
    ChatWebService().searchResultStream.listen((data){
      setState(() {
        searchResults =data['data'];
      });
      
    });
  }


  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Icon(Icons.source_outlined,color: Colors.white,),
            SizedBox(width: 8,),
            Text("Sources",style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold
            ),)
          ],
        ),
        SizedBox(height: 16,),
        Wrap(
          spacing: 16,
          runSpacing: 16,
          children: searchResults.map((res){
            return Container(
              padding: EdgeInsets.all(16),
              width: 150,
              decoration: BoxDecoration(
                color: AppColors.cardColor,
                borderRadius: BorderRadius.circular(8),
              ),
              child: Column(
                children: [
                  Text(
                    res['title'],
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                    ),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                  const SizedBox(height: 8,),
                  Text(
                    res['url'],
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 12,
                    ),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  )

                ],
              ),
            );

          }).toList(),
        )
      ],

    );
      
    
  }
}