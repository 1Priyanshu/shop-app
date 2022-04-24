//@dart=2.9
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:ionicons/ionicons.dart';

class ListPage extends StatefulWidget {
  const ListPage({Key key}) : super(key: key);

  @override
  _ListPageState createState() => _ListPageState();
}

class _ListPageState extends State<ListPage> {
  bool check = false;

  int qt = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(60.0),
        child: AppBar(
          systemOverlayStyle: const SystemUiOverlayStyle(
              systemNavigationBarColor: Colors.transparent,
              statusBarColor: Colors.transparent),
          elevation: 0.0,
          titleSpacing: 0,
          flexibleSpace: Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(colors: [
                Color.fromARGB(255, 29, 201, 192),
                Color.fromARGB(255, 125, 221, 216),
              ], stops: [
                0.5,
                1.0
              ]),
            ),
          ),
          automaticallyImplyLeading: false,
          title: Row(
            children: <Widget>[
              Expanded(
                child: Container(
                  height: 42.0,
                  margin: const EdgeInsets.only(left: 15.0),
                  child: Material(
                    borderRadius: BorderRadius.circular(7.0),
                    elevation: 1.0,
                    child: TextFormField(
                      cursorColor: Colors.orange,
                      decoration: InputDecoration(
                        suffixIcon: Stack(
                          alignment: Alignment.center,
                          children: const [
                            Icon(Ionicons.scan,
                                color: Colors.black54, size: 24.0),
                            Icon(EvaIcons.radioButtonOff,
                                color: Colors.black54, size: 10.0),
                          ],
                        ),
                        prefixIcon: InkWell(
                          onTap: () {},
                          child: const Padding(
                            padding: EdgeInsets.only(left: 06.0),
                            child: Icon(Ionicons.search,
                                color: Colors.black, size: 23.0),
                          ),
                        ),
                        filled: true,
                        fillColor: Colors.white,
                        contentPadding: const EdgeInsets.only(top: 10.0),
                        border: const OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(7.0)),
                          borderSide: BorderSide.none,
                        ),
                        enabledBorder: const OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(7.0)),
                          borderSide:
                              BorderSide(color: Colors.black38, width: 1.0),
                        ),
                        hintStyle: const TextStyle(
                            fontWeight: FontWeight.w500,
                            color: Colors.black45,
                            fontSize: 17.0),
                        hintText: 'Search Amazon.in',
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                color: Colors.transparent,
                height: 42.0,
                margin: const EdgeInsets.only(left: 10.0, right: 10.0),
                child: const Icon(EvaIcons.micOutline,
                    color: Colors.black, size: 25.0),
              ),
            ],
          ),
        ),
      ),
      body: ListView(
        children: [
          const SizedBox(height: 10.0),
          const SizedBox(
            height: 10.0,
          ),
          Container(
            margin: const EdgeInsets.only(left: 10.0, right: 10.0),
            child: Row(
              children: const [
                Text(
                  '53 shops found nearby',
                  style: TextStyle(fontSize: 20.0),
                ),
              ],
            ),
          ),
          const SizedBox(height: 10.0),
          Container(
            margin: const EdgeInsets.only(left: 10.0, right: 10.0),
            child: Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 22.0, top: 02.0),
                  child: RichText(
                    maxLines: 2,
                    text: const TextSpan(
                      style: TextStyle(color: Colors.black),
                      children: [
                        TextSpan(
                          text: 'Showing according to distance. ',
                          style: TextStyle(
                            color: Colors.teal,
                          ),
                        ),
                        TextSpan(text: 'Search based on rating otherwise '),
                        TextSpan(
                          text: 'Details',
                          style: TextStyle(
                            color: Colors.teal,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 15.0),
          const SizedBox(height: 10.0),
          ListView.builder(
              shrinkWrap: true,
              itemCount: itemsList.length,
              physics: const NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    Container(
                      margin: const EdgeInsets.only(left: 10.0, right: 10.0),
                      child: Row(
                        children: [
                          Image.network(itemsList[index].image,
                              fit: BoxFit.fitHeight, height: 135, width: 135),
                          Column(
                            children: [
                              Container(
                                width: 235,
                                padding: const EdgeInsets.only(left: 10.0),
                                child: Text(
                                  itemsList[index].title,
                                  maxLines: 2,
                                  style: const TextStyle(fontSize: 16.0),
                                ),
                              ),
                              Container(
                                width: 235,
                                padding:
                                    const EdgeInsets.only(left: 10.0, top: 5.0),
                                child: Text(
                                  itemsList[index].price,
                                  style: const TextStyle(
                                      fontSize: 20.0,
                                      fontWeight: FontWeight.w600),
                                ),
                              ),
                              Container(
                                width: 235,
                                padding:
                                    const EdgeInsets.only(left: 10.0, top: 4.0),
                                child: Row(
                                  children: [
                                    Text(itemsList[index].color),
                                  ],
                                ),
                              ),
                              Container(
                                width: 235,
                                padding:
                                    const EdgeInsets.only(left: 10.0, top: 4.0),
                                child: Row(),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 10.0),
                    Container(
                      margin: const EdgeInsets.only(left: 10.0, right: 10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          DecoratedBox(
                            decoration: BoxDecoration(
                                border: Border.all(
                                    color: Colors.black12, width: 1.5),
                                borderRadius: BorderRadius.circular(05.0),
                                color: Colors.black12),
                            child: Row(),
                          ),
                          OutlinedButton(
                            onPressed: () {},
                            child: const Text(
                              'Direction',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w400),
                            ),
                          ),
                          OutlinedButton(
                            onPressed: () {},
                            child: const Text(
                              'Contact the owner',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w400),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 20.0)
                  ],
                );
              }),
          Container(
            alignment: Alignment.bottomCenter,
            padding: const EdgeInsets.only(left: 80.0),
            child: Text(
              'See more shops',
              style: TextStyle(
                  color: Colors.cyan[800], fontWeight: FontWeight.w400),
            ),
          ),
          const SizedBox(height: 15.0),
          Container(height: 1.0, color: Colors.black12),
          const SizedBox(height: 70.0)
        ],
      ),
    );
  }

  List<ItemLists> itemsList = [
    ItemLists(
      title: 'Gupta general store',
      image:
          'https://mma.prnewswire.com/media/1729485/STAR_Localmart_Pune_Store.jpg?w=500',
      price: '250 M',
      color: '9AM-5PM',
    ),
    ItemLists(
      title: 'Local mart',
      image:
          'https://mma.prnewswire.com/media/1729485/STAR_Localmart_Pune_Store.jpg?w=500',
      price: '400 M',
      color: '24/7',
    ),
    ItemLists(
      title: 'Aggarwal cosmetics',
      image:
          'https://mma.prnewswire.com/media/1729485/STAR_Localmart_Pune_Store.jpg?w=500',
      price: '530 M',
      color: '8AM-6PM',
    ),
  ];
}

class ItemLists {
  String title;
  String image;
  String price;
  String color;

  ItemLists({
    this.title,
    this.image,
    this.price,
    this.color,
  });
}
