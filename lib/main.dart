import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: PreferredSize(
            preferredSize: Size.fromHeight(53),
            child: AppBar(
              backgroundColor: Colors.white,
              elevation: 0,
              title: Padding(
                padding: const EdgeInsets.fromLTRB(15, 12, 0, 0),
                child: Text('덕부름', style: TextStyle(color: Color(0xff3C88FA), fontFamily: "Changwon", fontSize: 24),
                ),
              ),
            ),
          ),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                width: 335,
                height: 40,
                margin: EdgeInsets.fromLTRB(20, 8, 20, 20),
                decoration: BoxDecoration(
                  color: Color(0xFFF8F8F8),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        margin: EdgeInsets.fromLTRB(14.0, 10.0, 0.0, 10.0),
                        child: Text('공지', style: TextStyle(color: Colors.black, fontWeight: FontWeight.w800),),
                      ),
                      Container(
                        margin: EdgeInsets.fromLTRB(10.0, 10.0, 0.0, 10.0),
                        child: Text('덕부름에 새로운 기능이 추가됐어요.', style: TextStyle(color: Color(0xFF1F1F21)),),
                      ),
                    ]
                ),
              ),
              Stack(
                children: <Widget>[
                  Container(
                    height: 172,
                    width: 335,
                    child: ClipRRect( //image에 borderRadius 적용하려면 써야돼
                      borderRadius: BorderRadius.circular(12),
                      child: Image.asset('assets/images/tbz-img.jpg',fit: BoxFit.fitWidth),
                    ),
                  ),
                  Positioned(
                    left: 20,
                    top: 32,
                    child: Text('EVENT',style: TextStyle(fontSize: 19, color: Colors.white)) ,
                  ),
                  Positioned(
                      left: 20,
                      top: 58,
                      child: Text('THE BOYZ Photo', style: TextStyle(
                          fontWeight: FontWeight.w800,
                          fontSize: 22,
                          color: Colors.white),)
                  ),
                  Positioned(
                      left: 20,
                      top: 90,
                      child: Text('지금 이벤트 참가하고 더보이즈 굿즈 받기', style: TextStyle(color: Colors.white,fontSize: 12))
                  ),
                  Positioned(
                      left: 24,
                      bottom: 24,
                      child: Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.fromLTRB(0,0,9,0),
                            child: Icon(Icons.circle, size: 7, color: Color(0xFFF8F8F8)),
                          ),
                          Padding(
                            padding: EdgeInsets.fromLTRB(0,0,9,0),
                            child: Icon(Icons.circle, size: 7, color: Color(0x7FF8F8F8)),
                          ),
                          Padding(
                            padding: EdgeInsets.fromLTRB(0,0,9,0),
                            child: Icon(Icons.circle, size: 7, color: Color(0x7FF8F8F8)),
                          ),
                          Padding(
                            padding: EdgeInsets.fromLTRB(0,0,9,0),
                            child: Icon(Icons.circle, size: 7, color: Color(0x7FF8F8F8)),
                          ),
                        ],
                      ),
                  )
                ],
              ),
              Container(
                width: 335,
                height: 80,
                margin: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Stack(
                    children: <Widget>[
                      Positioned(
                          left: 18,
                          top: 20,
                          child: Text('심부름 신청하러 가기', style: TextStyle(
                                  fontWeight: FontWeight.w800,
                                  fontSize: 16,
                                  color: Colors.white)
                          ),),
                      Positioned(
                          left: 18,
                          top: 44,
                          child: Text('덕질 관련 심부름을 신청해 보세요!', style: TextStyle(color: Colors.white, fontSize: 14),
                          )
                      ),
                      Positioned(
                          left: 271,
                          top: 20,
                          child: Container(
                            height: 40,
                            width: 40,
                            decoration: BoxDecoration(color: Color(0xFF3E3E40), borderRadius: BorderRadius.circular(100),),
                            child: Icon(Icons.east , size: 19,color: Color(0xFFFFFFFF), ),
                          ))
                    ]
                )
              ),
              Container(//최근 등록된 심부름
                  width: 335,
                  height: 40,
                  child: Row(
                  children: <Widget>[
                    Text('최근 등록된 심부름', style:TextStyle(fontSize: 16, fontWeight: FontWeight.w800,),),
                    Spacer(),
                    Text('더보기', style: TextStyle(fontSize: 13, color: Color(0xFFB1B1B4),)),
                    Icon(Icons.arrow_forward_ios, size: 13,color: Color(0xFFB1B1B4), ),
                  ]
                )
              ),
              Container(
                child: Row(
                  children: [
                    Container(
                      width: 139,
                      height: 144,
                      margin: EdgeInsets.fromLTRB(20, 14, 12, 29),
                      decoration: BoxDecoration(
                        border: Border.all(color: Color(0xFFF1F1F1)),
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(14),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: 58,
                            height: 23,
                            margin: EdgeInsets.fromLTRB(14.0, 14.0, 0.0, 10.0),
                            padding: EdgeInsets.fromLTRB(6, 5, 0, 0),
                            child: Text('시급 1만원', style: TextStyle(fontSize: 11, fontWeight: FontWeight.w800, color: Colors.lightBlue),),
                            decoration: BoxDecoration(color: Color.fromRGBO(4, 188, 214, 200), borderRadius: BorderRadius.circular(6),),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(18, 0, 0, 0),
                            child: Text('서울 광진구', style: TextStyle(fontWeight: FontWeight.w800, fontSize: 14, color: Colors.black),),
                          ),
                          Row(
                            children: [
                              Container(
                                width: 81,
                                height: 30,
                                margin : EdgeInsets.fromLTRB(10, 8, 6, 0),
                                padding: const EdgeInsets.fromLTRB(10, 8, 0, 10),
                                decoration: BoxDecoration(
                                  color: Color(0xFFF8F8F8),
                                  borderRadius: BorderRadius.circular(16),
                                 ),
                                child: Text('팬싸 대리응모', style: TextStyle(fontWeight: FontWeight.w800, fontSize: 12, color: Color(0xFF3C88FA)),
                                ),
                              ),

                              Container(
                                  width:  26,
                                  height: 26,
                                  margin: EdgeInsets.fromLTRB(0, 8, 6, 0),
                                  padding: EdgeInsets.fromLTRB(3, 5, 0, 0),
                                  child: Text('+2', style: TextStyle(fontWeight: FontWeight.w800,color: Color(0xFFF8F8F8)),),
                                  decoration: BoxDecoration(color: Color(0xFF3C88FA), borderRadius: BorderRadius.circular(100),),
                                ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(14, 10, 20, 0),
                            child: Text('8/6 오후 8:00', style: TextStyle(fontSize: 12,color: Color(0xFFB1B1B4)),),
                          ),

                        ],
                      ),
                    ),
                    Container(
                      width: 139,
                      height: 144,
                      margin: EdgeInsets.fromLTRB(20, 14, 12, 29),
                      decoration: BoxDecoration(
                        border: Border.all(color: Color(0xFFF1F1F1)),
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(14),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: 58,
                            height: 23,
                            margin: EdgeInsets.fromLTRB(14.0, 14.0, 0.0, 10.0),
                            padding: EdgeInsets.fromLTRB(6, 5, 0, 0),
                            child: Text('시급 1만원', style: TextStyle(fontSize: 11, fontWeight: FontWeight.w800, color: Color(0xFF8F5BFF),)),
                            decoration: BoxDecoration(color: Color(0xFFF0E9FF), borderRadius: BorderRadius.circular(6),),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(18, 0, 0, 0),
                            child: Text('서울 광진구', style: TextStyle(fontWeight: FontWeight.w800, fontSize: 14, color: Colors.black),),
                          ),
                          Row(
                            children: [
                              Container(
                                width: 92,
                                height: 30,
                                margin : EdgeInsets.fromLTRB(10, 8, 6, 0),
                                padding: const EdgeInsets.fromLTRB(10, 8, 0, 10),
                                decoration: BoxDecoration(
                                  color: Color(0xFFF8F8F8),
                                  borderRadius: BorderRadius.circular(16),
                                ),
                                child: Text('팬싸 대리줄서기', style: TextStyle(fontWeight: FontWeight.w800, fontSize: 12, color: Color(0xFF3C88FA)),),
                              ),

                              
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(14, 10, 20, 0),
                            child: Text('8/6 오후 8:00', style: TextStyle(fontSize: 12,color: Color(0xFFB1B1B4)),),
                          ),

                        ],
                      ),
                    )
                  ],

                ),

              ),
              Stack(
                  children: <Widget>[
                    Container(
                      width: 335,
                      height: 86,
                      margin: EdgeInsets.fromLTRB(20, 0, 0, 0),
                      decoration: BoxDecoration(
                        color: Color(0xFFF7FFE7),
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                    Container(
                      width:  48,
                      height: 48,
                      margin: EdgeInsets.fromLTRB(18, 19, 0, 0),
                      padding: EdgeInsets.fromLTRB(10, 13, 0, 0),
                      child: Text('Tip!', style: TextStyle(fontSize: 16,fontWeight: FontWeight.w800,color: Color(0xFF1F1F21)),),
                      decoration: BoxDecoration(color: Color(0xFFDBFFAC),
                        borderRadius: BorderRadius.circular(100),
                      ),
                    ),
                    Positioned(
                      left: 84,
                      top: 24,
                      child: Text('덕부름 이용 방법',style: TextStyle(fontWeight: FontWeight.w800, fontSize: 16, color: Color(0xFF1F1F21))) ,
                    ),
                    Positioned(
                      left: 84,
                      top: 48,
                      child: Text('덕부름의 이용 방법을 알아보세요!',style: TextStyle(fontSize: 13,
                          color: Color(0xFF3E3E40))) ,
                    ),
                    Positioned(
                      left: 258,
                      top: 52,
                      child: Icon(Icons.arrow_forward_ios, size: 9,color: Color(0xFF6C6C6C), ),
                    ),

                  ]
              )

            ],
          )
      ),
      theme: ThemeData(fontFamily: 'Pretendard'),
    );
  }
}
