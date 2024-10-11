import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lukmukmes/src/model/product.dart';

class page extends StatefulWidget {
  page({super.key, required this.pro});
  final Productmodel pro;

  @override
  State<page> createState() => _pageState();
}

class _pageState extends State<page> {
  int qty = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Detail your product'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(5.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Card(
                child: Hero(
                    tag: widget.pro.id.toString(),
                    child: Container(
                      height: 400,
                      width: 400,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                            image: NetworkImage(widget.pro.image),
                            fit: BoxFit.cover,
                          ),
                          borderRadius: BorderRadius.all(
                            Radius.circular(20),
                          )),
                    )),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    widget.pro.name,
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    '\$${widget.pro.price}',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  InkWell(
                    onTap: () {
                      if (qty > 1) {
                        setState(() {
                          qty--;
                        });
                      }
                    },
                    child: Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.grey,
                        border: Border.all(color: Colors.black, width: 1),
                      ),
                      child: Center(
                        child: Icon(Icons.remove, size: 24),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Text(
                      qty.toString(),
                      style: TextStyle(fontSize: 22),
                    ),
                  ),
                  InkWell(
                    onTap: () => setState(() {
                      qty++;
                    }),
                    child: Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.grey,
                        border: Border.all(color: Colors.black, width: 1),
                      ),
                      child: Center(
                        child: Icon(Icons.add, size: 24),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Center(
                child: CupertinoButton(
                  child: Text(
                    'Buy Now',
                    style: TextStyle(fontSize: 20),
                  ),
                  onPressed: () {},
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
