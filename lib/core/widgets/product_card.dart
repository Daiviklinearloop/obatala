import 'package:flutter/material.dart';

ProductCard() {
  return Row(
    children: [
      Container(
        height: 100,
        width: 80,
        color: Colors.black,
      ),
      SizedBox(width: 10,),
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Willa coffe"),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text("• "),
              Text("Kleur.Ziler en zwart"),
            ],
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text("• "),
              Text("Warranty: Upto 5 years"),
            ],
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Text("• "),
              Text("Special: icluding warming function"),
            ],
          ),

          Row(
            children: [
              Column(children: [
                Text("\$ 159,- "),
                Row(children: [
                  Icon(Icons.verified_rounded,color: Colors.green,),
                  Text("Tuesday at home ",style: TextStyle(color: Colors.green),)
                ],),

              ],),
              Container(
                decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.all(Radius.circular(5))
                ),
                height: 40,
                width: 40,
                child: Center(child:
                Icon(Icons.shopping_cart_outlined,color: Colors.white,),),
              )
            ],
          )
        ],
      )
    ],
  );
}
