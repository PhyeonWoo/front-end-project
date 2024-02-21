import 'package:aet/AET/widgets/action_Button.dart';
import 'package:flutter/material.dart';
import '../components/custom_appbar_sports.dart';

class sports_appbar extends StatelessWidget implements PreferredSizeWidget {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(25),
          )
      ),
      // leading: leading_Button(),
      actions: <Widget>[
        action_Button(),
      ],
      elevation: 0,
      title: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            "짐보따리",
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
      backgroundColor: Colors.green,
      flexibleSpace: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          SizedBox(height: 10.0),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                buildCircularContainer('https://gongu.copyright.or.kr/gongu/wrt/cmmn/wrtFileImageView.do?wrtSn=9047194&filePath=L2Rpc2sxL25ld2RhdGEvMjAxNC8yMS9DTFM2L2FzYWRhbFBob3RvXzU0MDVfMjAxNDA0MTY=&thumbAt=Y&thumbSe=b_tbumb&wrtTy=10004'
                    ,"축구"),
                buildCircularContainer('https://www.lottehotel.com/content/dam/lotte-hotel/lotte/jeju/facilities/fitness/tennis-court/221018-06-1440-fac-LTJE.jpg.thumb.1024.1024.jpg'
                    ,"테니스"),
                buildCircularContainer('https://stadium.seoul.go.kr/files/2016/11/facility_jamsil_baseball.jpg'
                    ,"야구"),
                buildCircularContainer('https://www.mediagunpo.co.kr/imgdata/mediagunpo_co_kr/201510/2015100735034387.png'
                    ,"스쿼시"),
                buildCircularContainer('E',"1234"),
                buildCircularContainer('F',"스포츠6"),
                buildCircularContainer('G',"스포츠7"),
                buildCircularContainer('H',"스포츠8"),
                buildCircularContainer('I',"스포츠9"),
                buildCircularContainer('J',"스포츠10"),
                buildCircularContainer('K',"스포츠11"),
                buildCircularContainer('L',"스포츠12"),
                buildCircularContainer('M',"스포츠13"),
                buildCircularContainer('N',"스포츠14"),
                buildCircularContainer('O',"스포츠15"),
                buildCircularContainer('P',"스포츠16"),
              ],
            ),
          ),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(150.0);
}
