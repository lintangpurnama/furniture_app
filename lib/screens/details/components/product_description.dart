import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:furniture_app/models/Product.dart';
import 'package:url_launcher/url_launcher.dart';
import '../../../constants.dart';
import '../../../size_config.dart';

class ProductDescription extends StatelessWidget {
  const ProductDescription({
    Key key,
    @required this.product,
    this.press,
  }) : super(key: key);

  final Product product;
  final Function press;

void costumLaunch(command) async {
  if (await canLaunch(command)){
    await launch(command);
  } else {
    canLaunch(" could not run $command");
  }
}


  @override
  Widget build(BuildContext context) {
    double defaultSize = SizeConfig.defaultSize;
    return Container(
      constraints: BoxConstraints(minHeight: defaultSize * 44),
      padding: EdgeInsets.only(
        top: defaultSize * 9, //90
        left: defaultSize * 2, //20
        right: defaultSize * 2,
      ),
      // height: 500,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(defaultSize * 1.2),
          topRight: Radius.circular(defaultSize * 1.2),
        ),
      ),
      child: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              product.subTitle,
              style: TextStyle(
                fontSize: defaultSize * 1.8,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: defaultSize * 3),
            Text(
              product.description,
              style: TextStyle(
                color: kTextColor.withOpacity(0.7),
                height: 1.5,
              ),
            ),
            SizedBox(height: defaultSize * 3),
            SizedBox(
              width: double.infinity,
              child: FlatButton(
                padding: EdgeInsets.all(defaultSize * 1.5),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50),
                ),
                color: kPrimaryColor,
                onPressed: press,
                child: Text(
                  "Add to Cart",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: defaultSize * 1.6,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            
            Padding(padding: EdgeInsets.all(defaultSize * 1.5)),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
            SizedBox(
              child: IconButton(icon: SvgPicture.asset("assets/whatsapp.svg"),
              onPressed: (){
                costumLaunch('https://wa.me/6289680525541');
              },
              
              ),
            ),
            SizedBox(
              child: IconButton(icon: SvgPicture.asset("assets/icons/telephone.svg"),
              onPressed: (){
                costumLaunch('tel:+6289680525541');
              },
              ),
            ),
            SizedBox(
              child: IconButton(icon: SvgPicture.asset("assets/icons/gmail.svg"),
              onPressed: (){
                costumLaunch('mailto:lintangpurnama1@gmail.com');
              },
              ),
            ),
            SizedBox(
              child: IconButton(icon: SvgPicture.asset("assets/icons/comments.svg"),
              onPressed: (){
                costumLaunch('sms:+6289680525541');
              },
              ),
            )

              ],
            )
          ],
        ),
        
      ),
    );
    
  }
}

