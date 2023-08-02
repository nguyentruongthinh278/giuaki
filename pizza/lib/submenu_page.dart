import 'package:flutter/material.dart';

class SubmenuPage extends StatefulWidget {
  const SubmenuPage({
    Key? key, // Thêm tham số key ở đây
    required this.img,
    required this.name,
    required this.price,
    required this.desc,
  }) : super(key: key); // Truyền tham số key cho constructor của StatefulWidget

  final String img;
  final String name;
  final String price;
  final String desc;

  @override
  State<SubmenuPage> createState() => _SubmenuPageState();
}

class _SubmenuPageState extends State<SubmenuPage> {
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    return Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: ListView(
            shrinkWrap: true,
            physics: const BouncingScrollPhysics(),
            children: [
              Hero(
                tag: widget.img,
                child: Container(
                  height: h * 0.5,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(widget.img), fit: BoxFit.cover),
                    borderRadius: const BorderRadius.only(
                      bottomRight: Radius.circular(12),
                      bottomLeft: Radius.circular(12),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: GestureDetector(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: const Icon(
                          Icons.arrow_back,
                          color: Colors.white,
                          size: 40,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: h * 0.03, //canh lề trên đoạn inf miêu tả món
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5.0), //canh lề trái
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      widget.name,
                      style: const TextStyle(
                          color: Colors.black,
                          fontSize: 20, //độ lớn nhỏ của tên món
                          fontWeight: FontWeight.bold,
                          fontFamily: "Roboto-Regular"),
                    ),
                    Text(
                      "\$${widget.price}.00",
                      style: const TextStyle(
                        color: Colors.black,
                        fontSize: 20, //độ lớn nhỏ của giá tiền
                        fontWeight: FontWeight.bold,
                        fontFamily: "Roboto-Bold",
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: h * 0.02, //khoảng cách dưới giữa hình và inf
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0), //độ thu nhỏ của đoạn miêu tả
                child: Text(
                  widget.desc,
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                      color: Colors.black.withOpacity(0.8), //độ đậm màu của chữ
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                      fontFamily: "Roboto-Light"),
                ),
              ),
              SizedBox(
                height: h * 0.02, //khoảng cách dưới giữa inf và button Order now
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12.0),
                child: Container(
                  height: h * 0.08,
                  decoration: BoxDecoration(
                    color: Colors.yellow,
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  child: const Center(
                    child: Text(
                      "Order Now",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontFamily: "Roboto-Regular",
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
