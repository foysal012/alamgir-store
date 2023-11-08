import 'package:flutter/material.dart';

class ProductModel{
String? imgUrl;
String? productName;
int? price;
int? totalPrice;
int? stcokAmount;
int? purchasePrice;
int? salePrice;
int? discountPrice;
int? vat;
int? totalStock;
String? category;

ProductModel(
      {this.imgUrl,
      this.productName,
      this.price,
      this.totalPrice,
      this.stcokAmount,
      this.purchasePrice,
      this.salePrice,
      this.discountPrice,
      this.vat,
      this.totalStock,
      this.category});

static List<ProductModel> generatedProductList = [
      ProductModel(
            productName: "Mobile",
            price: 10,
            imgUrl: "images/w1.png",
            category: "None",
            vat: 0,
            stcokAmount: 200,
            totalStock: 1225,
            discountPrice: 100,
            purchasePrice: 100,
            salePrice: 100,
      ),

      ProductModel(
            productName: "GripGuard Sheild",
            price: 10,
            imgUrl: "images/w1.png",
            category: "None",
            vat: 0,
            stcokAmount: 200,
            totalStock: 1225,
            discountPrice: 100,
            purchasePrice: 100,
            salePrice: 100,
      ),

      ProductModel(
            productName: "EcoSheild Wireless Charger",
            price: 10,
            imgUrl: "images/w1.png",
            category: "None",
            vat: 0,
            stcokAmount: 200,
            totalStock: 1225,
            discountPrice: 100,
            purchasePrice: 100,
            salePrice: 100,
      ),

      ProductModel(
            productName: "SwiftSync Data Cable",
            price: 10,
            imgUrl: "images/w1.png",
            category: "None",
            vat: 0,
            stcokAmount: 200,
            totalStock: 1225,
            discountPrice: 100,
            purchasePrice: 100,
            salePrice: 100,
      ),

      ProductModel(
            productName: "AudioElite Blutooth Earburds",
            price: 10,
            imgUrl: "images/w1.png",
            category: "None",
            vat: 0,
            stcokAmount: 200,
            totalStock: 1225,
            discountPrice: 100,
            purchasePrice: 100,
            salePrice: 100,
      ),

      ProductModel(
            productName: "PowerFlow Porable PowerBank",
            price: 10,
            imgUrl: "images/w1.png",
            category: "None",
            vat: 0,
            stcokAmount: 200,
            totalStock: 1225,
            discountPrice: 100,
            purchasePrice: 100,
            salePrice: 100,
      ),

      ProductModel(
            productName: "CrystalClear Phone Case",
            price: 10,
            imgUrl: "images/w1.png",
            category: "None",
            vat: 0,
            stcokAmount: 200,
            totalStock: 1225,
            discountPrice: 100,
            purchasePrice: 100,
            salePrice: 100,
      ),

      ProductModel(
            productName: "RapidRevive Screen Protector",
            price: 10,
            imgUrl: "images/w1.png",
            category: "None",
            vat: 0,
            stcokAmount: 200,
            totalStock: 1225,
            discountPrice: 100,
            purchasePrice: 100,
            salePrice: 100,
      ),

      ProductModel(
            productName: "ErgoStand Phone Holder",
            price: 10,
            imgUrl: "images/w1.png",
            category: "None",
            vat: 0,
            stcokAmount: 200,
            totalStock: 1225,
            discountPrice: 100,
            purchasePrice: 100,
            salePrice: 100,
      ),

      ProductModel(
            productName: "UltraFit Sport Armband",
            price: 10,
            imgUrl: "images/w1.png",
            category: "None",
            vat: 0,
            stcokAmount: 200,
            totalStock: 1225,
            discountPrice: 100,
            purchasePrice: 100,
            salePrice: 100,
      ),


];
}