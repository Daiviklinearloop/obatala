import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_svg/svg.dart';
import 'package:obatala/core/utils/app_url.dart';
import 'package:obatala/core/utils/math_utils.dart';
import 'package:obatala/theme/app_style.dart';


class ProductCard extends StatefulWidget {
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
  dynamic imageHeight;
  dynamic imageWidth;
  bool? combiDeal;

  bool? homePage;

   ProductCard({ required this.productName, this.Delivery,this.productOfferPrice,this.productImage,this.productPrice,this.productRating,
     this.stockIndicator,
     this.homePage,
     this.featureHighlight1,
     this.featureHighlight2,
     this.featureHighlight3,
     this.featureHighlight4,
     this.stockIndicatorDescription,
     this.imageHeight,
     this.imageWidth,
     this.combiDeal,
   });

  @override
  State<ProductCard> createState() => _ProductCardState();
}

class _ProductCardState extends State<ProductCard> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top:8.0),
              child: SizedBox(
                  height: 80,
                  width: 80,
                  child:
                  widget.productImage==""?
                  SvgPicture.asset("assets/images/logoobatalacoffee.svg",height: 30,width: 100,)
                  // :Image.network(
                  //        widget.productImage==null ? "" :
                  //          APPURL.imageBaseUrl+ widget.productImage.toString(),
                  //           height:widget.imageHeight==null?80: widget.imageHeight!.toDouble(),
                  //           width:widget.imageWidth==null?80:  widget.imageWidth!.toDouble(),
                  //         ),
                      :CachedNetworkImage(
                        height:widget.imageHeight==null?80: widget.imageHeight!.toDouble(),
                        width:widget.imageWidth==null?80:  widget.imageWidth!.toDouble(),
                        imageUrl:widget.productImage==null ? "" : APPURL.imageBaseUrl+ widget.productImage.toString(),
                        placeholder: (context, url) => SizedBox(height:30,width:30,child: SpinKitCircle(color: Color(0xFF703926),)),
                        errorWidget: (context, url, error) => SizedBox(height:50,width:50,child: Image.asset("assets/images/icon-152x152.png")),
                  )
              ),
            ),
            SizedBox(
              width: 15,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: MediaQuery.of(context).size
                  .width *0.60,
                  child: Text(
                  widget.productName.toString()==null?"":widget.productName.toString(),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: AppStyle.textStyleRobotoromanmedium14
                        .copyWith(fontSize: getFontSize(18)),
                  ),
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
                    widget.featureHighlight1.toString()=="null"||widget.featureHighlight1.toString()==""?SizedBox():
                    Text("• "),
                    widget.featureHighlight1.toString()=="null"||widget.featureHighlight1.toString()==""?SizedBox():
                    SizedBox(
                      width: MediaQuery.of(context).size.width *0.50,
                      child: Text(
                        widget.featureHighlight1.toString(),
                        maxLines: 2,
                        style: AppStyle.textStyleAdventProregular124
                            .copyWith(height: 1.5, fontSize: getFontSize(13)),
                      ),
                    ),
                  ],
                ),
                widget.homePage==true?SizedBox(): Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    widget.featureHighlight2.toString()=="null"||widget.featureHighlight2.toString()==""?SizedBox():
                    Text("• "),
                    widget.featureHighlight2.toString()=="null"||widget.featureHighlight2.toString()==""?SizedBox():
                    SizedBox(
                      width: MediaQuery.of(context).size.width *0.50,
                      child: Text(
                        widget.featureHighlight2.toString(),
                         maxLines: 2,
                        style: AppStyle.textStyleAdventProregular124
                            .copyWith(height: 1.5, fontSize: getFontSize(13)),
                      ),
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
                    SizedBox(
                      width: MediaQuery.of(context).size.width *0.50,
                      child: Text(
                        widget.featureHighlight3.toString(),
                        maxLines: 2,
                        style: AppStyle.textStyleAdventProregular124
                            .copyWith(height: 1.5, fontSize: getFontSize(13)),
                      ),
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

                    SizedBox(
                      width: MediaQuery.of(context).size.width *0.50,
                      child: Text(
                        widget.featureHighlight4.toString(),
                        maxLines: 2,
                        style: AppStyle.textStyleAdventProregular124
                            .copyWith(height: 1.5, fontSize: getFontSize(13)),
                      ),
                    ),
                  ],
                ),
                // SizedBox(
                //   height: 8,
                // ),
                Container(
                  width: MediaQuery.of(context).size.width *0.65,

                  child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                           widget.productOfferPrice.toString()==""||widget.productOfferPrice.toString()=="null"?SizedBox(): Row(
                                children: [
                                Text("\u{20AC} ${widget.productOfferPrice.toString()},- ",
                                      style: AppStyle.textStyleAdventProregular175
                                          .copyWith(fontSize: getFontSize(14),
                                        decoration: TextDecoration. lineThrough,
                                      )),
                                ],
                              ),


                              widget.productOfferPrice.toString()==""||widget.productOfferPrice.toString()=="null"?SizedBox():  SizedBox(width: 8,),
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
                          widget.stockIndicator.toString()=="null"||widget.stockIndicator.toString()==""?SizedBox(): Row(
                            children: [
                              CircleAvatar(
                                radius: 7,
                                backgroundColor: widget.stockIndicator.toString()=="Niet op voorraad"?Colors.red:Colors.green,
                                child: Center(
                                  child: Icon(
                                    Icons.check,
                                    size: 10,
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                widget.stockIndicator==null?"":
                                widget.stockIndicator.toString(),
                                style:
                                AppStyle.textStyleRobotoromanmedium14.copyWith(
                                  color: widget.stockIndicator.toString()=="Niet op voorraad"?Colors.red:Colors.green,
                                  fontSize: getFontSize(
                                    14,
                                  ),
                                ),
                              )
                            ],
                          ),
                          widget.homePage==true
                              ?
                          SizedBox()
                              :
                          widget.stockIndicatorDescription != null && widget.stockIndicatorDescription != ""
                              ?
                          Padding(
                            padding: const EdgeInsets.only(top: 8),
                            child: Container(
                              width: MediaQuery.of(context).size.width *0.52,
                              child: Text(
                                widget.stockIndicatorDescription.toString(),
                                style: AppStyle.textStyleAdventProregular124
                                    .copyWith(fontSize: getFontSize(14)),
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                          ):SizedBox(),
                        ],
                      ),
                      // Spacer(),

                      widget.combiDeal==true?SizedBox():   Container(
                        decoration: const BoxDecoration(
                            color: Colors.green,
                            borderRadius: BorderRadius.all(Radius.circular(5))),
                        height: 40,
                        width: 40,
                        child: const Center(
                          child:  Icon(
                            Icons.shopping_cart_outlined,
                            color: Colors.white,
                          ),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ],
        ),

        SizedBox(
          height: 10,
        ),
       widget.combiDeal==true?SizedBox(height: 10,): Divider(thickness: 1),
        SizedBox(height: 4,)
      ],
    );
  }
}


