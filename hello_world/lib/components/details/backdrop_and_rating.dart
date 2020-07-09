import 'package:flutter/material.dart';
import 'package:hello_world/models/movie_ex.dart';
import 'package:flutter_svg/svg.dart';

class BackdropAndRating extends StatelessWidget {
  const BackdropAndRating({
    Key key,
    @required this.size,
    @required this.movie,
  }) : super(key: key);

  final Size size;
  final Movie movie;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size.height * 0.4,
      // color: Colors.black,
      child: Stack(
        children: [
          Container(
            height: size.height * 0.4 - 50,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(50),
                bottomRight: Radius.circular(10),
              ),
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(movie.backdrop),
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            right: 0,
            child: Container(
              width: size.width * 0.9,
              height: 100,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(50),
                  topLeft: Radius.circular(50),
                ),
                boxShadow: [
                  BoxShadow(
                    offset: Offset(0, 5),
                    blurRadius: 50,
                    color: Color(0xFF12153D).withOpacity(0.2),
                  ),
                ],
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SvgPicture.asset('assets/icons/star_fill.svg'),
                      SizedBox(height: 20 / 4),
                      RichText(
                        text: TextSpan(
                          style: TextStyle(color: Colors.black),
                          children: [
                            TextSpan(
                              text: "${movie.rating}/",
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.w600),
                            ),
                            TextSpan(text: "10\n"),
                            TextSpan(
                              text: "150,212",
                              style: TextStyle(color: Colors.black38),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                  RateThis(),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        padding: EdgeInsets.all(6),
                        decoration: BoxDecoration(
                          color: Color(0xFF51CF66),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Text(
                          '${movie.metascoreRating}',
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20 / 4,
                      ),
                      Text(
                        "메타스코어",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Text(
                        "62 개 비평 리뷰들",
                        style: TextStyle(color: Colors.black38),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
          SafeArea(
            child: BackButton(),
          )
        ],
      ),
    );
  }
}

class RateThis extends StatefulWidget {
  const RateThis({
    Key key,
  }) : super(key: key);

  @override
  _RateThisState createState() => _RateThisState();
}

class _RateThisState extends State<RateThis> {
  bool rated = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          rated = !rated;
        });
      },
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          rated
              ? SvgPicture.asset("assets/icons/star_fill.svg")
              : SvgPicture.asset("assets/icons/star.svg"),
          SizedBox(height: 20 / 4),
          Text(
            "여기 점수주기",
            style: TextStyle(
              color: Colors.black45,
            ),
          )
        ],
      ),
    );
  }
}
