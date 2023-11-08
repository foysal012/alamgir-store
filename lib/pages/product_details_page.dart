import 'package:alamgir_store/model/product_model.dart';
import 'package:alamgir_store/pages/add_new_product_page.dart';
import 'package:flutter/material.dart';

class ProductDetailsPageScreen extends StatefulWidget {
   ProductDetailsPageScreen({Key? key, this.productModel}) : super(key: key);

  ProductModel? productModel;

  @override
  State<ProductDetailsPageScreen> createState() => _ProductDetailsPageScreenState();
}

class _ProductDetailsPageScreenState extends State<ProductDetailsPageScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        backgroundColor: Colors.white12,
        leading: InkWell(
          onTap: (){
            Navigator.of(context).pop();
          },
          child: Container(
            // margin: EdgeInsets.only(
            //   left: 15,
            //   top: 15,
            // ),
            height: 47,
            width: 47,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              //color: Colors.teal,
              color: Colors.white,
              //color: Color(0xff6F889D40)
            ),
            child: Center(
              child: Icon(Icons.arrow_back, color: Colors.black,),
            )
          ),
        ),

        title: Container(
          // margin: EdgeInsets.only(
          //   top: 46,
          //   left: 92,
          // ),
          child: Text("Product Details",
            style: TextStyle(
              height: 23,
              //fontWeight: 68,
              color: Colors.black,
            ),
          ),
        ),
      ),

      body: Container(
        decoration: BoxDecoration(
          color: Colors.white12,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [



            Stack(
              children: [
                Container(
                  height: 225,
                  width: 414,
                  decoration: BoxDecoration(
                    color: Color(0xffE9ECF1),
                    borderRadius: BorderRadius.circular(10)
                  ),
                  //child: Image(image: AssetImage("images/w1.png"),height: 130.31, width: 137,),
                ),

                Positioned(
                    left: 140,
                    top: 60,
                    child: Image(image: AssetImage("${widget.productModel?.imgUrl}"),height: 130.31, width: 137,))
              ],
            ),

            SizedBox(height: MediaQuery.of(context).size.height * 0.02,),

            Container(
              padding: EdgeInsets.only(
                left: 20,
                right: 20,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("${widget.productModel?.productName}",
                    style: TextStyle(
                      fontSize: 22,
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                      wordSpacing: 5,
                    ),
                  ),
                  SizedBox(height: 10,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(" ৳${widget.productModel?.price}",
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                          wordSpacing: 5,
                        ),
                      ),
                      Text("Total Stock:" + "${widget.productModel?.stcokAmount}pcs",
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                          wordSpacing: 5,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),

            SizedBox(height: MediaQuery.of(context).size.height * 0.02,),

            Container(
              padding: EdgeInsets.only(
                top: 5,
                left: 15,
              ),
              height: 30,
                width: 414,
              decoration: BoxDecoration(
                color: Colors.grey[300],
              ),
              child: Text("Product type",
              style: TextStyle(
                fontSize: 14,
                color: Colors.black,
              ),
              ),
            ),

            SizedBox(height: MediaQuery.of(context).size.height * 0.04,),

            Container(
              padding: EdgeInsets.only(
                left: 20,
                right: 20,
              ),

              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [

                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [

                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                        Text("Purchese Price",
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w600,
                          color: Colors.grey[500]
                        ),
                        ),
                        Text("৳${widget.productModel?.purchasePrice}",
                              style: TextStyle(
                                fontSize: 15,
                                color: Colors.black,
                                fontWeight: FontWeight.w500,
                                wordSpacing: 5,
                              ),

                        )
                        ],
                      ),
                      SizedBox(height: MediaQuery.of(context).size.height * 0.03,),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Vat",
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w600,
                                color: Colors.grey[500]
                            ),
                          ),
                          Text("${widget.productModel?.vat}%",
                            style: TextStyle(
                              fontSize: 15,
                              color: Colors.black,
                              fontWeight: FontWeight.w500,
                              wordSpacing: 5,
                            ),

                          )
                        ],
                      ),

                    ],
                  ),

                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [

                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Sale Price",
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w600,
                                color: Colors.grey[500]
                            ),
                          ),
                          Text("৳${widget.productModel?.salePrice}",
                            style: TextStyle(
                              fontSize: 15,
                              color: Colors.black,
                              fontWeight: FontWeight.w500,
                              wordSpacing: 5,
                            ),

                          )
                        ],
                      ),
                      SizedBox(height: MediaQuery.of(context).size.height * 0.03,),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Total Stock",
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w600,
                                color: Colors.grey[500]
                            ),
                          ),
                          Text("${widget.productModel?.totalStock} Pcs",
                            style: TextStyle(
                              fontSize: 15,
                              color: Colors.black,
                              fontWeight: FontWeight.w500,
                              wordSpacing: 5,
                            ),

                          )
                        ],
                      ),

                    ],
                  ),

                  Column(
                    //crossAxisAlignment: CrossAxisAlignment.start,
                    children: [

                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Discount",
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w600,
                                color: Colors.grey[500]
                            ),
                          ),
                          Text("৳${widget.productModel?.discountPrice}",
                            style: TextStyle(
                              fontSize: 15,
                              color: Colors.black,
                              fontWeight: FontWeight.w500,
                              wordSpacing: 5,
                            ),

                          )
                        ],
                      ),
                      SizedBox(height: MediaQuery.of(context).size.height * 0.03,),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Category",
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w600,
                                color: Colors.grey[500]
                            ),
                          ),
                          Text("${widget.productModel?.category}",
                            style: TextStyle(
                              fontSize: 15,
                              color: Colors.black,
                              fontWeight: FontWeight.w500,
                              wordSpacing: 5,
                            ),

                          )
                        ],
                      ),

                    ],
                  ),
                ],
              ),
            ),

            SizedBox(height: MediaQuery.of(context).size.height * 0.04,),

            InkWell(
              onTap: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context)=> AddNewProductPageScreen()));
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [

                  Container(
                    height: 20,
                    width: 20,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,border: Border.all(
                      width: 2,
                      color: Colors.black54,
                    )
                    ),
                    child: Center(
                      child: Icon(Icons.add, size: 14,),
                    ),
                  ),

                  SizedBox(width: MediaQuery.of(context).size.width * 0.01,),

                  Text("Add Stock",
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.black
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
}

