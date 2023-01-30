import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:obatala/core/utils/app_url.dart';
import 'package:obatala/core/utils/math_utils.dart';
import 'package:obatala/theme/app_style.dart';
import 'dart:math' as math;





class CombiDealCard extends StatefulWidget {
  String? productName;
  String? productPrice;
  String? Delivery;
  String? productImage;
  String? productOfferPrice;
  String? productRating;
  String? stockIndicator;
  String? stockIndicatorDescription;
  String? featureHighlight1;
  String? featureHighlight2;
  String? featureHighlight3;
  String? featureHighlight4;
  int? imageHeight;
  int? imageWidth;
  String? offerLabel;
  bool? homePage;
  bool ? checkbox;

  CombiDealCard({ required this.productName, this.Delivery,this.productOfferPrice,this.productImage,this.productPrice,this.productRating,
    this.stockIndicator,
    this.homePage,
    this.featureHighlight1,
    this.featureHighlight2,
    this.featureHighlight3,
    this.featureHighlight4,
    this.stockIndicatorDescription,
    this.imageHeight,
    this.imageWidth,
    this.offerLabel,
    this.checkbox,
  });

  @override
  State<CombiDealCard> createState() => _CombiDealCardState();
}

class _CombiDealCardState extends State<CombiDealCard> {
  // RxBool checkbox= true.obs;
  @override
  Widget build(BuildContext context) {
    return  Opacity(
      opacity:widget.checkbox==true?1: 0.3, //from 0-1, 0.5 = 50% opacity

      child: Padding(
        padding: const EdgeInsets.only(top:8.0,bottom: 8),
        child: Container(
          padding: EdgeInsets.all(8),
          decoration: BoxDecoration(
            border: Border.all(color: Colors.grey),

          ),
          child: Column(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top:8.0),
                    child: Stack(
                      children: [
                        // Positioned(
                        //     top:0,
                        //     left: 0,
                        //     child:
                        // ),
                        SizedBox(
                          height: 80,
                          width: 80,
                          child: Image.network(
                            widget.productImage==null?"":
                            APPURL.imageBaseUrl+ widget.productImage.toString(),
                            height:widget.imageHeight==null?80: widget.imageHeight!.toDouble(),
                            width:widget.imageWidth==null?80:  widget.imageWidth!.toDouble(),
                          ),
                        ),
                        Positioned(
                          top:1,
                          child: Container(
                            height: 40,
                            width: 40,
                            child: ClipPath(
                              clipper: StarClipper(14),
                              child: Container(
                                height: 100,
                                color: Colors.lightBlue,
                                child: Center(child: Text(widget.offerLabel.toString(), style: TextStyle(fontSize: 14,color: Colors.white),)),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [

                      Row(
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width *0.50,
                            child: Text(
                              widget.productName.toString()==null?"":widget.productName.toString(),
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              style: AppStyle.textStyleRobotoromanmedium14
                                  .copyWith(fontSize: getFontSize(18)),
                            ),

                          ),
                          widget.checkbox==true? Icon(Icons.check_box,color: Colors.black54): Icon(Icons.check_box_outline_blank),

                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),

                      widget.productRating.toString()=="null"?SizedBox(): Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(right: 2.0),
                            child: Container(
                              height: 25,
                              width: 25,
                              color: Colors.cyan,
                              child: Center(
                                child: Icon(
                                  Icons.star,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 2.0),
                            child: Container(
                              height: 25,
                              width: 25,
                              color: Colors.cyan,
                              child: Center(
                                child: Icon(
                                  Icons.star,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 2.0),
                            child: Container(
                              height: 25,
                              width: 25,
                              color: Colors.cyan,
                              child: Center(
                                child: Icon(
                                  Icons.star,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 2.0),
                            child: Container(
                              height: 25,
                              width: 25,
                              color: Colors.cyan,
                              child: Center(
                                child: Icon(
                                  Icons.star,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 2.0),
                            child: Container(
                              height: 25,
                              width: 25,
                              color: Colors.cyan,
                              child: Center(
                                child: Icon(
                                  Icons.star,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                      widget.productRating.toString()=="null"?SizedBox(): Row(
                        children: [
                          Text("5.0 ", style: AppStyle.textStyleRobotoromanmedium14
                              .copyWith(fontSize: getFontSize(18)),),
                          Text("/ 5  ", style: AppStyle.textStyleAdventProregular124
                              .copyWith(height: 1.5, fontSize: getFontSize(16)),),
                          Icon(Icons.circle, size: 5,),
                          Text("  1  ",style: AppStyle.textStyleRobotoromanmedium14
                              .copyWith(fontSize: getFontSize(14)), ),
                          Text("review", style: AppStyle.textStyleAdventProregular124
                              .copyWith(height: 1.5, fontSize: getFontSize(16)),)
                        ],
                      ),

                      widget.homePage==true?SizedBox():  Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          widget.featureHighlight2.toString()=="null"||widget.featureHighlight1.toString()==""?SizedBox():
                          Text("• "),
                          widget.featureHighlight1.toString()=="null"||widget.featureHighlight1.toString()==""?SizedBox():
                          Text(
                          widget.featureHighlight1.toString(),
                            style: AppStyle.textStyleAdventProregular124
                                .copyWith(height: 1.5, fontSize: getFontSize(13)),
                          ),
                        ],
                      ),
                      widget.homePage==true?SizedBox(): Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          widget.featureHighlight2.toString()=="null"||widget.featureHighlight2.toString()==""?SizedBox():
                          Text("• "),
                          widget.featureHighlight2.toString()=="null"||widget.featureHighlight2.toString()==""?SizedBox():
                          Text(widget.featureHighlight2.toString(),
                            style: AppStyle.textStyleAdventProregular124
                                .copyWith(height: 1.5, fontSize: getFontSize(13)),
                          ),
                        ],
                      ),
                      widget.homePage==true?SizedBox(): Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          widget.featureHighlight3.toString()=="null"||widget.featureHighlight3.toString()==""?SizedBox():
                          Text("• "),
                          widget.featureHighlight3.toString()=="null"||widget.featureHighlight3.toString()==""?SizedBox():
                          Text(
                          widget.featureHighlight3.toString(),
                            style: AppStyle.textStyleAdventProregular124
                                .copyWith(height: 1.5, fontSize: getFontSize(13)),
                          ),
                        ],
                      ),
                      widget.homePage==true?SizedBox(): Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          widget.featureHighlight4.toString()=="null"||widget.featureHighlight4.toString()==""?SizedBox():
                          Text("• "),
                          widget.featureHighlight4.toString()=="null"||widget.featureHighlight4.toString()==""?SizedBox():

                          Text(
                          widget.featureHighlight4.toString(),
                            style: AppStyle.textStyleAdventProregular124
                                .copyWith(height: 1.5, fontSize: getFontSize(13)),
                          ),
                        ],
                      ),
                      // SizedBox(
                      //   height: 8,
                      // ),
                      Container(
                        width: MediaQuery.of(context).size.width *0.60,

                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    widget.productOfferPrice.toString()==""?SizedBox(): Row(
                                      children: [
                                        Text("\u{20AC} ${widget.productOfferPrice.toString()},- ",
                                            style: AppStyle.textStyleAdventProregular175
                                                .copyWith(fontSize: getFontSize(14),
                                              decoration: TextDecoration. lineThrough,
                                            )),
                                      ],
                                    ),
                                    widget.productOfferPrice.toString()==""?SizedBox():  SizedBox(width: 8,),
                                    Row(
                                      children: [
                                        Icon(Icons.euro,size: 15,),
                                        SizedBox(width: 3,),
                                        Text("${widget.productPrice.toString()==null?"-":widget.productPrice.toString()},- ",
                                            style: AppStyle.textStyleRobotoromanmedium14
                                                .copyWith(fontSize: getFontSize(18))),
                                      ],
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 7,
                                ),
                                // Row(
                                //   children: [
                                //     CircleAvatar(
                                //       radius: 7,
                                //       backgroundColor: widget.stockIndicator.toString()=="Niet op voorraad"?Colors.red:Colors.green,
                                //       child: Center(
                                //         child: Icon(
                                //           Icons.check,
                                //           size: 10,
                                //         ),
                                //       ),
                                //     ),
                                //     SizedBox(
                                //       width: 5,
                                //     ),
                                //     Text(
                                //       widget.stockIndicator==null?"":
                                //       widget.stockIndicator.toString(),
                                //       style:
                                //       AppStyle.textStyleRobotoromanmedium14.copyWith(
                                //         color: widget.stockIndicator.toString()=="Niet op voorraad"?Colors.red:Colors.green,
                                //         fontSize: getFontSize(
                                //           14,
                                //         ),
                                //       ),
                                //     )
                                //   ],
                                // ),
                                // widget.homePage==true?SizedBox(): Padding(
                                //   padding: const EdgeInsets.only( top: 8),
                                //   child: Row(
                                //     children: [
                                //       Text(
                                //         widget.stockIndicatorDescription.toString()==null?"":widget.stockIndicatorDescription.toString(),
                                //         style: AppStyle.textStyleAdventProregular124
                                //             .copyWith(fontSize: getFontSize(14)),
                                //       ),
                                //     ],
                                //   ),
                                // ),
                              ],
                            ),
                            // Spacer(),

                            // Container(
                            //   decoration: const BoxDecoration(
                            //       color: Colors.green,
                            //       borderRadius: BorderRadius.all(Radius.circular(5))),
                            //   height: 40,
                            //   width: 40,
                            //   child: const Center(
                            //     child: Icon(
                            //       Icons.shopping_cart_outlined,
                            //       color: Colors.white,
                            //     ),
                            //   ),
                            // )
                          ],
                        ),
                      )
                    ],
                  ),


                ],
              ),


            ],
          ),
        ),
      ),
    );
  }
}



class StarClipper extends CustomClipper<Path> {
  StarClipper(this.numberOfPoints);

  /// The number of points of the star
  final int numberOfPoints;

  @override
  Path getClip(Size size) {
    double width = size.width;
    print(width);
    double halfWidth = width / 2;

    double bigRadius = halfWidth;

    double radius = halfWidth / 1.3;

    num degreesPerStep = _degToRad(360 / numberOfPoints);

    double halfDegreesPerStep = degreesPerStep / 2;

    var path = Path();

    double max = 2 * math.pi;

    path.moveTo(width, halfWidth);

    for (double step = 0; step < max; step += degreesPerStep) {
      path.lineTo(halfWidth + bigRadius * math.cos(step),
          halfWidth + bigRadius * math.sin(step));
      path.lineTo(halfWidth + radius * math.cos(step + halfDegreesPerStep),
          halfWidth + radius * math.sin(step + halfDegreesPerStep));
    }

    path.close();
    return path;
  }

  num _degToRad(num deg) => deg * (math.pi / 180.0);

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    StarClipper oldie = oldClipper as StarClipper;
    return numberOfPoints != oldie.numberOfPoints;
  }
}
