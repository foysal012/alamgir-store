import 'package:alamgir_store/model/product_model.dart';
import 'package:alamgir_store/pages/product_details_page.dart';
import 'package:alamgir_store/tabs/category_page.dart';
import 'package:alamgir_store/tabs/collection_page.dart';
import 'package:alamgir_store/tabs/product_page.dart';
import 'package:flutter/material.dart';

class StockListPageScreen extends StatefulWidget {
  const StockListPageScreen({Key? key}) : super(key: key);

  @override
  State<StockListPageScreen> createState() => _StockListPageScreenState();
}

class _StockListPageScreenState extends State<StockListPageScreen> with SingleTickerProviderStateMixin {

  var data  = ProductModel.generatedProductList;

  TextEditingController searchController = TextEditingController();

 late TabController tabController = TabController(length: 3, vsync: this);

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
       backgroundColor: Colors.white12,
        leading: Container(
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
            child: Icon(Icons.arrow_back,color: Colors.black,),
          ),
        ),

        title: Container(
          // margin: EdgeInsets.only(
          //   top: 46,
          //   left: 92,
          // ),
          child: Text("Stcok list",
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
          children: [

            Expanded(
              flex: 2,
                child:TabBar(
                    controller: tabController,
                    tabs: [
                      Text("Product",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                      ),
                      ),
                      Text("Category",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Text("Collection",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ]
                ) ),

            SizedBox(height: MediaQuery.of(context).size.height * 0.03,),
            //
            // Container(
            //   height: 51,
            //   width: 332,
            //   decoration: BoxDecoration(
            //     borderRadius: BorderRadius.only(
            //       topLeft: Radius.circular(10),
            //       bottomLeft: Radius.circular(10),
            //     ),
            //
            //     border: Border.all(
            //       width: 2,
            //       color: Colors.grey,
            //     )
            //   ),
            //   child: Row(
            //     children: [
            //       Expanded(
            //           flex:8,
            //           child: Container(
            //             padding: EdgeInsets.only(
            //               left: 20,
            //             ),
            //         height: 51,
            //         width: 281,
            //         decoration: BoxDecoration(
            //           border: Border.symmetric(
            //             vertical: BorderSide(
            //               width: 2,
            //               color: Colors.grey,
            //             ),
            //             horizontal: BorderSide.none,
            //           )
            //         ),
            //             child: TextFormField(
            //               onChanged: (value){
            //                 setState(() {
            //
            //                 });
            //               },
            //               controller: searchController,
            //               decoration: InputDecoration(
            //                 hintText: "Search Products",
            //                 border: InputBorder.none,
            //               ),
            //             ),
            //       )),
            //       Expanded(
            //           flex: 2,
            //           child: Container(
            //         height: 51,
            //         width: 51,
            //             child: Icon(Icons.search),
            //       ))
            //     ],
            //   ),
            // ),
            //
            // SizedBox(height: MediaQuery.of(context).size.height * 0.02,),
            //
            // Container(
            //   padding: EdgeInsets.only(
            //     left: 20,
            //     right: 20
            //   ),
            //   height: 32,
            // width: 414,
            //     decoration: BoxDecoration(
            //       color: Color(0xffE9ECF1)
            //     ),
            //   child: Row(
            //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //     children: [
            //       Text("Total: ${data.length}",
            //       style: TextStyle(
            //         color: Color(0xff7A7AFD)
            //       ),
            //       ),
            //
            //       Text("Purchase price:  ৳${102012}",
            //         style: TextStyle(
            //             color: Color(0xff7A7AFD)
            //         ),
            //       )
            //     ],
            //   ),
            // ),
            //
            // SizedBox(height: MediaQuery.of(context).size.height * 0.02,),



            Expanded(
              flex: 18,
              child: TabBarView(
                controller: tabController,
                  children: [
                    ProductPageScreen(),
                    CategoryPageScreen(),
                    CollectionPageScreen()
                  ]
              ),
            ),
          ],
        ),
      ),
    );
  }
}
