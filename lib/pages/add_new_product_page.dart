import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class AddNewProductPageScreen extends StatefulWidget {
  const AddNewProductPageScreen({Key? key}) : super(key: key);

  @override
  State<AddNewProductPageScreen> createState() => _AddNewProductPageScreenState();
}

class _AddNewProductPageScreenState extends State<AddNewProductPageScreen> {

  TextEditingController productNameController  = TextEditingController();
  TextEditingController purchasePriceController  = TextEditingController();
  TextEditingController discountController  = TextEditingController();
  
  XFile ? image;
  chooseImage () async{
    ImagePicker _picker = ImagePicker();
    image = await _picker.pickImage(source: ImageSource.camera);
    setState(() {

    });
  }
  
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
          child: Text("Add new Product",
            style: TextStyle(
              height: 23,
              //fontWeight: 68,
              color: Colors.black,
            ),
          ),
        ),
      ),

      body: Container(
        padding: EdgeInsets.only(
          left: 30,
          right: 30,
        ),
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                SizedBox(height: MediaQuery.of(context).size.height * 0.02,),

                Align(
                  alignment: Alignment.center,
                  child: Container(
                    height: 90,
                    width: 90,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Color(0xffE9ECF1),
                    ),

                      child: image == null ? InkWell(
                        onTap: (){
                          chooseImage();
                        },
                        child: Container(
                          height: 51,
                          width: 51,
                          decoration: BoxDecoration(
                              image: DecorationImage(image: AssetImage("images/w2.png"))
                          ),
                        ),
                      ) : 
                      Image.file(File(image!.path))
                      ,
                    ),
                ),

                SizedBox(height: MediaQuery.of(context).size.height * 0.02,),

                Text("Product name",
                style: TextStyle(
                  fontSize: 18,
                ),
                ),
                TextFormField(
                  controller: productNameController,
                  decoration: InputDecoration(
                    hintText: "Enter product name",
                    border: InputBorder.none
                  ),
                ),
                Container(
                  height: 2,
                  width: double.infinity,
                  color: Colors.grey[300],
                ),

                SizedBox(height: MediaQuery.of(context).size.height * 0.02,),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Product unit",
                      style: TextStyle(
                        fontSize: 18,
                      ),
                    ),

                    Row(
                      children: [
                        Text("KG",
                          style: TextStyle(
                            fontSize: 18,
                          ),
                        ),
                        SizedBox(width: 5,),
                        Icon(Icons.arrow_forward_ios, color: Color(0xff7A7AFD),)
                      ],
                    )
                  ],
                ),
                SizedBox(height: MediaQuery.of(context).size.height * 0.01,),

                Container(
                  height: 2,
                  width: double.infinity,
                  color: Colors.grey[300],
                ),

                SizedBox(height: MediaQuery.of(context).size.height * 0.02,),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Category",
                      style: TextStyle(
                        fontSize: 18,
                      ),
                    ),

                    Row(
                      children: [
                        Text("None",
                          style: TextStyle(
                            fontSize: 18,
                          ),
                        ),
                        SizedBox(width: 5,),
                        Icon(Icons.arrow_forward_ios, color: Color(0xff7A7AFD),)
                      ],
                    )
                  ],
                ),
                SizedBox(height: MediaQuery.of(context).size.height * 0.01,),

                Container(
                  height: 2,
                  width: double.infinity,
                  color: Colors.grey[300],
                ),

                SizedBox(height: MediaQuery.of(context).size.height * 0.02,),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Sub Category",
                      style: TextStyle(
                        fontSize: 18,
                      ),
                    ),

                    Row(
                      children: [
                        Text("Un categorised",
                            style: TextStyle(
                      fontSize: 18,
                    )
                        ),
                        SizedBox(width: 5,),
                        Icon(Icons.arrow_forward_ios, color: Color(0xff7A7AFD),)
                      ],
                    )
                  ],
                ),
                SizedBox(height: MediaQuery.of(context).size.height * 0.01,),

                Container(
                  height: 2,
                  width: double.infinity,
                  color: Colors.grey[300],
                ),

                SizedBox(height: MediaQuery.of(context).size.height * 0.01,),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Purchase Price",
                      style: TextStyle(
                        fontSize: 18,
                      ),
                    ),

                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.2,
                    ),

                    Expanded(
                      child: TextFormField(
                        controller: purchasePriceController,
                        decoration: InputDecoration(

                          hintText: "                 0",
                          hintTextDirection: TextDirection.values.last
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(height: MediaQuery.of(context).size.height * 0.01,),

                Container(
                  height: 2,
                  width: double.infinity,
                  color: Colors.grey[300],
                ),

                SizedBox(height: MediaQuery.of(context).size.height * 0.01,),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Discount",
                      style: TextStyle(
                        fontSize: 18,
                      ),
                    ),

                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.35,
                    ),

                    Expanded(
                      child: TextFormField(
                        controller: discountController,
                        decoration: InputDecoration(

                            hintText: "                 0",
                            hintTextDirection: TextDirection.values.last
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(height: MediaQuery.of(context).size.height * 0.01,),

                Container(
                  height: 2,
                  width: double.infinity,
                  color: Colors.grey[300],
                ),

                SizedBox(height: MediaQuery.of(context).size.height * 0.02,),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Stock Management",
                      style: TextStyle(
                        fontSize: 18,
                      ),
                    ),

                    Row(
                      children: [
                        Text("Yes",
                          style: TextStyle(
                            fontSize: 18,
                          ),
                        ),
                        SizedBox(width: 5,),
                        Icon(Icons.arrow_forward_ios, color: Color(0xff7A7AFD),)
                      ],
                    )
                  ],
                ),
                SizedBox(height: MediaQuery.of(context).size.height * 0.01,),

                Container(
                  height: 2,
                  width: double.infinity,
                  color: Colors.grey[300],
                ),

                SizedBox(height: MediaQuery.of(context).size.height * 0.02,),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Details",
                      style: TextStyle(
                        fontSize: 18,
                      ),
                    ),

                    Row(
                      children: [
                        Text("Add Details",
                          style: TextStyle(
                            fontSize: 18,
                          ),
                        ),
                        SizedBox(width: 5,),
                        Icon(Icons.arrow_forward_ios, color: Color(0xff7A7AFD),)
                      ],
                    )
                  ],
                ),
                SizedBox(height: MediaQuery.of(context).size.height * 0.01,),

                Container(
                  height: 2,
                  width: double.infinity,
                  color: Colors.grey[300],
                ),

                SizedBox(height: MediaQuery.of(context).size.height * 0.02,),

                InkWell(
                  child: Container(
                    height: 50,
                    width: 332,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      color: Color(0xff7A7AFD),
                    ),
                    child: Center(
                      child: Text("Save",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 22,
                      ),
                      ),
                    ),
                  ),
                )

              ],
            ),
          )
      ),
    );
  }
}
