import 'package:alamgir_store/model/product_model.dart';
import 'package:alamgir_store/pages/product_details_page.dart';
import 'package:flutter/material.dart';

class ProductPageScreen extends StatefulWidget {
  const ProductPageScreen({Key? key}) : super(key: key);

  @override
  State<ProductPageScreen> createState() => _ProductPageScreenState();
}

class _ProductPageScreenState extends State<ProductPageScreen> {
  TextEditingController searchController = TextEditingController();
  var data  = ProductModel.generatedProductList;
  @override
  Widget build(BuildContext context) {
    return  Container(
          child:
          Column(
            children: [
              SizedBox(height: MediaQuery.of(context).size.height * 0.03,),

              Container(
                height: 51,
                width: 332,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10),
                      bottomLeft: Radius.circular(10),
                    ),

                    border: Border.all(
                      width: 2,
                      color: Colors.grey,
                    )
                ),
                child: Row(
                  children: [
                    Expanded(
                        flex:8,
                        child: Container(
                          padding: EdgeInsets.only(
                            left: 20,
                          ),
                          height: 51,
                          width: 281,
                          decoration: BoxDecoration(
                              border: Border.symmetric(
                                vertical: BorderSide(
                                  width: 2,
                                  color: Colors.grey,
                                ),
                                horizontal: BorderSide.none,
                              )
                          ),
                          child: TextFormField(
                            onChanged: (value){
                              setState(() {
                              });
                            },
                            controller: searchController,
                            decoration: InputDecoration(
                              hintText: "Search Products",
                              border: InputBorder.none,
                            ),
                          ),
                        )),
                    Expanded(
                        flex: 2,
                        child: Container(
                          height: 51,
                          width: 51,
                          child: Icon(Icons.search),
                        ))
                  ],
                ),
              ),

              SizedBox(height: MediaQuery.of(context).size.height * 0.02,),

              Container(
                padding: EdgeInsets.only(
                    left: 20,
                    right: 20
                ),
                height: 32,
                width: 414,
                decoration: BoxDecoration(
                    color: Color(0xffE9ECF1)
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Total: ${data.length}",
                      style: TextStyle(
                          color: Color(0xff7A7AFD)
                      ),
                    ),

                    Text("Purchase price:  ৳${102012}",
                      style: TextStyle(
                          color: Color(0xff7A7AFD)
                      ),
                    )
                  ],
                ),
              ),

              SizedBox(height: MediaQuery.of(context).size.height * 0.02,),
              Expanded(
                  child: ListView.builder(
                    shrinkWrap: true,
                    scrollDirection: Axis.vertical,
                    reverse: false,
                    itemCount: data.length,
                      itemBuilder: (context, index){
                      final item = data[index].productName.toString().toLowerCase();
                      return Container(
                        child: searchController.text.isEmpty ? InkWell(
                          onTap: (){
                            Navigator.of(context).push(MaterialPageRoute(builder: (context) => ProductDetailsPageScreen(
                              productModel: data[index],
                            )));
                          },
                          child: Container(
                            padding: EdgeInsets.only(
                                bottom: 10
                            ),
                            child: Column(
                              children: [
                                Container(
                                  height: 54,
                                  width: 332,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        children: [

                                          Container(
                                            height: 80,
                                            width: 60,
                                            decoration: BoxDecoration(
                                                color: Colors.grey[300],
                                                borderRadius: BorderRadius.circular(15)
                                            ),
                                            //child: Image(image: AssetImage("${data[index].imgUrl}"),height: 10,width: 10,),

                                            child: Image.asset("${data[index].imgUrl}",height: 25, width: 25,),
                                          ),

                                          SizedBox(width: 10,),

                                          Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Text("${data[index].productName}"),
                                              Text("stock " + "${data[index].stcokAmount}" + " piece",
                                                style: TextStyle(
                                                  color: Colors.grey,
                                                ),
                                              ),
                                            ],
                                          ),

                                        ],
                                      ),

                                      Row(
                                        children: [
                                          Text("${data[index].price}",
                                            style: TextStyle(
                                                fontSize: 20
                                            ),
                                          ),
                                          SizedBox(width: 10,),
                                          Icon(Icons.arrow_forward_ios, color: Colors.grey,)
                                        ],
                                      )
                                    ],
                                  ),
                                ),

                                SizedBox(height: 5,),

                                Container(
                                  height: 3,
                                  width: double.infinity,
                                  color: Colors.grey[300],
                                )
                              ],
                            ),
                          ),
                        ) :
                        item.contains(searchController.text.toLowerCase()) ?
                        InkWell(
                          onTap: (){
                            Navigator.of(context).push(MaterialPageRoute(builder: (context) => ProductDetailsPageScreen(
                              productModel: data[index],
                            )));
                          },
                          child: Container(
                            padding: EdgeInsets.only(
                                bottom: 10
                            ),
                            child: Column(
                              children: [
                                Container(
                                  height: 54,
                                  width: 332,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        children: [

                                          Container(
                                            height: 80,
                                            width: 60,
                                            decoration: BoxDecoration(
                                                color: Colors.grey[300],
                                                borderRadius: BorderRadius.circular(15)
                                            ),
                                            //child: Image(image: AssetImage("${data[index].imgUrl}"),height: 10,width: 10,),

                                            child: Image.asset("${data[index].imgUrl}",height: 25, width: 25,),
                                          ),

                                          SizedBox(width: 10,),

                                          Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Text("${data[index].productName}"),
                                              Text("stock " + "${data[index].stcokAmount}" + " piece",
                                                style: TextStyle(
                                                  color: Colors.grey,
                                                ),
                                              ),
                                            ],
                                          ),

                                        ],
                                      ),

                                      Row(
                                        children: [
                                          Text("${data[index].price}",
                                            style: TextStyle(
                                                fontSize: 20
                                            ),
                                          ),
                                          SizedBox(width: 10,),
                                          Icon(Icons.arrow_forward_ios, color: Colors.grey,)
                                        ],
                                      )
                                    ],
                                  ),
                                ),

                                SizedBox(height: 5,),

                                Container(
                                  height: 3,
                                  width: double.infinity,
                                  color: Colors.grey[300],
                                )
                              ],
                            ),
                          ),
                        ) :
                            Container()
                        ,
                      );
                      }
                  )
              ),
            ],
          ),
    );
  }
}
