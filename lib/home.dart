//@dart=2.9
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:ionicons/ionicons.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 221, 232, 236),
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
                Color.fromARGB(255, 201, 29, 81),
                Color.fromARGB(255, 201, 29, 81),
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
                        hintText: 'search nearby local shops',
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
      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
      body: ListView(
        children: [
          const SizedBox(height: 10.0),

          const SizedBox(height: 10.0),

          Container(height: 05.0, color: Colors.black12),

          Container(height: 05.0, color: Colors.black12),

          Container(height: 05.0, color: Colors.black12),
          LocalProductsNearby(),
          Container(height: 05.0, color: Colors.black12),
          keepShoppingFor(),
          Container(height: 05.0, color: Colors.black12),

          Container(height: 05.0, color: Colors.black12),
          Container(height: 05.0, color: Colors.black12),

          Container(height: 05.0, color: Colors.black12),

          Container(height: 05.0, color: Colors.black12),

          Container(height: 05.0, color: Colors.black12),
          // bestSellingCameras(),
          Container(height: 05.0, color: Colors.black12),

          Container(height: 05.0, color: Colors.black12),

          Container(height: 05.0, color: Colors.black12),
          bestSellingCameras(),
          Container(height: 05.0, color: Colors.black12),

          featuredCategories(),
          Container(height: 05.0, color: Colors.black12),
        ],
      ),
    );
  }

  Widget LocalProductsNearby() {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.only(
              left: 15.0, top: 15.0, right: 15.0, bottom: 10.0),
          alignment: Alignment.topLeft,
          child: const Text(
            'Local products nearby',
            style: TextStyle(fontSize: 20.0),
          ),
        ),
        Container(
          height: 430,
          color: Colors.white,
          child: GridView.builder(
              shrinkWrap: true,
              physics: const AlwaysScrollableScrollPhysics(),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2),
              itemCount: itemLists.length > 4 ? 4 : 4,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    SizedBox(
                      height: 150.0,
                      child: Image.network(
                          'data:image/jpeg;base64,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'),
                    ),
                    Container(
                      alignment: Alignment.topLeft,
                      padding: const EdgeInsets.only(left: 15.0, right: 15.0),
                      child: Text(
                        itemLists[index].LocalProductsNearbyTitle,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    Container(
                      alignment: Alignment.topLeft,
                      padding: const EdgeInsets.only(left: 15.0, right: 15.0),
                      child: Text(itemLists[index].LocalProductsNearbyPrice),
                    ),
                  ],
                );
              }),
        ),
      ],
    );
  }

  Widget keepShoppingFor() {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.only(
              left: 15.0, top: 10.0, right: 15.0, bottom: 10.0),
          alignment: Alignment.topLeft,
          child: const Text(
            'Be vocal for local',
            style: TextStyle(fontSize: 20.0),
          ),
        ),
        Container(
          height: 170,
          color: Colors.white,
          child: GridView.builder(
              shrinkWrap: true,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 1,
                  childAspectRatio: 1.4,
                  mainAxisSpacing: 10),
              itemCount: itemLists.length > 4 ? 4 : 4,
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.only(left: 15.0),
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    SizedBox(
                      height: 130.0,
                      child: DecoratedBox(
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.black12, width: 0.5),
                          borderRadius: BorderRadius.circular(05.0),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(10),
                          child: Image.network(
                              itemLists[index].keepshoppingforImage),
                        ),
                      ),
                    ),
                    Container(
                      alignment: Alignment.topLeft,
                      padding: const EdgeInsets.only(
                          left: 0.0, top: 5.0, right: 15.0),
                      child: Text(
                        itemLists[index].keepshoppingforTitle,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ],
                );
              }),
        ),
        Container(
          padding: const EdgeInsets.only(
              left: 15.0, top: 0.0, right: 15.0, bottom: 15.0),
          alignment: Alignment.topLeft,
          child: const Text(
            'View your past purchases',
            style: TextStyle(
                fontSize: 14.0,
                color: Color.fromARGB(255, 7, 136, 153),
                fontWeight: FontWeight.w400),
          ),
        ),
      ],
    );
  }

  Widget bestSellingCameras() {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.only(
              left: 15.0, top: 10.0, right: 15.0, bottom: 10.0),
          alignment: Alignment.topLeft,
          child: const Text(
            'Best selling cameras',
            style: TextStyle(fontSize: 20.0),
          ),
        ),
        Container(
          height: 430,
          color: Colors.white,
          child: GridView.builder(
              shrinkWrap: true,
              physics: const AlwaysScrollableScrollPhysics(),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2),
              itemCount: itemLists.length > 4 ? 4 : 4,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    SizedBox(
                      height: 150.0,
                      child: Image.network(
                          itemLists[index].bestsellingcameraImage),
                    ),
                    Container(
                      alignment: Alignment.topLeft,
                      padding: const EdgeInsets.only(left: 15.0, right: 15.0),
                      child: Text(
                        itemLists[index].bestsellingcameraTitle,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    Container(
                      alignment: Alignment.topLeft,
                      padding: const EdgeInsets.only(left: 15.0, right: 15.0),
                      child: Text(itemLists[index].bestsellingcameraPrice),
                    ),
                  ],
                );
              }),
        ),
      ],
    );
  }

  Widget featuredCategories() {
    return Column(
      children: [
        Container(height: 05.0, color: Colors.black12),
        Container(
          alignment: Alignment.topLeft,
          padding: const EdgeInsets.all(15.0),
          child: const Text(
            '',
            style: TextStyle(fontSize: 20.0),
          ),
        ),
        GridView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              childAspectRatio: 0.5,
              crossAxisSpacing: 10.0,
            ),
            itemCount: itemLists.length > 3 ? 3 : 3,
            padding: const EdgeInsets.only(left: 15.0, right: 15.0),
            itemBuilder: (context, index) {
              return Column(
                children: [
                  Image.network(
                    itemLists[index].featuredCategorieImage,
                    fit: BoxFit.cover,
                    height: 190.0,
                  ),
                  Container(
                    padding: const EdgeInsets.only(
                        left: 0.0, top: 04.0, bottom: 04.0),
                    child: Text(
                      itemLists[index].featuredCategorieTitle,
                      style:
                          const TextStyle(color: Colors.black, fontSize: 17.0),
                    ),
                  ),
                ],
              );
            }),
        Container(
          alignment: Alignment.topLeft,
          padding: const EdgeInsets.only(left: 15.0, top: 10.0, bottom: 10.0),
          child: const Text(
            'See All Categories',
            style: TextStyle(color: Color.fromARGB(255, 12, 143, 160)),
          ),
        ),
      ],
    );
  }

  List<ItemLists> itemLists = [
    ItemLists(
      // btTitle: 'Prime',
      // btImage: 'assets/images/prime.jpeg',
      keepshoppingTitle: 'Keep shopping for',
      keepshoppingImage:
          'data:image/jpeg;base64,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',

      LocalProductsNearbyImage:
          'https://static.toiimg.com/thumb/msid-78989257,imgsize-112024,width-400,resizemode-4/78989257.jpg',
      LocalProductsNearbyTitle: 'Mens t-shirt',
      LocalProductsNearbyPrice: '500.0',
      keepshoppingforImage: '',
      keepshoppingforTitle: 'Tradition instruments',

      bestsellingcameraImage:
          'https://i.rtings.com/assets/pages/wLJxe8ki/best-cameras-for-beginners-medium.jpg',
      bestsellingcameraTitle:
          'Canon EOS 1500D 24.1 Digital SLR Camera (Black) with EF S18-55 is II Lens',
      bestsellingcameraPrice: '₹36,499.00',
      featuredCategorieImage:
          'https://m.media-amazon.com/images/I/71Y8rH2cJiL._SL1500_.jpg',
      featuredCategorieTitle: 'Mobile & Electronics',
    ),
    ItemLists(
      btTitle: 'Fresh',
      btImage: 'assets/images/fresh.jpeg',
      keepshoppingTitle: 'Discover more',
      keepshoppingImage:
          'https://images-eu.ssl-images-amazon.com/images/I/41YRhOZ4EPL._SX300_SY300_QL70_FMwebp_.jpg',
      LocalProductsNearbyImage:
          'https://m.media-amazon.com/images/I/61BeBTB41DL._SL1500_.jpg',
      LocalProductsNearbyTitle: 'Summer cools',
      LocalProductsNearbyPrice: '₹29,990.00',
      keepshoppingforImage: '',
      keepshoppingforTitle: 'Jaipur Clay pots',
      bestsellingcameraImage:
          'https://m.media-amazon.com/images/I/91xnO7qHAeL._SL1500_.jpg',
      bestsellingcameraTitle:
          'Panasonic LUMIX G7 16.00 MP 4K Mirrorless Interchangeable Lens Camera Kit with 14-42 mm Lens (Black)',
      bestsellingcameraPrice: '₹40,490.00',
      featuredCategorieImage:
          'https://m.media-amazon.com/images/I/91pNUb1jm8S._UL1500_.jpg',
      featuredCategorieTitle: 'Mens Fashion',
    ),
    ItemLists(
      btTitle: 'Mobiles',
      btImage: 'assets/images/mobiles.jpeg',
      keepshoppingTitle: 'Pick up where you left off',
      keepshoppingImage:
          'https://m.media-amazon.com/images/I/71H8N3F7scL._SL1488_.jpg',
      LocalProductsNearbyImage:
          'https://m.media-amazon.com/images/I/61sP-hFd+-L._SL1500_.jpg',
      LocalProductsNearbyTitle: 'Womens wear',
      LocalProductsNearbyPrice: '₹1,359.00',
      keepshoppingforImage: '',
      keepshoppingforTitle: 'Rajasthani traditional dress',
      bestsellingcameraImage:
          'https://m.media-amazon.com/images/I/513PxV3E48S._SL1024_.jpg',
      bestsellingcameraTitle: 'Whiteshelle Camera Lens Shaped Mug for Gift',
      bestsellingcameraPrice: '₹33130.00',
      featuredCategorieImage:
          'https://m.media-amazon.com/images/I/61pJGrhXzcL._SL1500_.jpg',
      featuredCategorieTitle: 'Home & Kitchen',
    ),
    ItemLists(
      btTitle: 'Essentials',
      btImage: 'assets/images/essentials.jpeg',
      LocalProductsNearbyImage:
          'https://m.media-amazon.com/images/I/31ybLm+jxNL.jpg',
      LocalProductsNearbyTitle: 'Upto 70% off',
      LocalProductsNearbyPrice: '₹449.00',
      keepshoppingforImage: '',
      keepshoppingforTitle: 'Indore namkeens',
      bestsellingcameraImage:
          'https://m.media-amazon.com/images/I/613pf1JTs9L._SL1000_.jpg',
      bestsellingcameraTitle:
          'Nikon D7500 20.9MP Digital SLR Camera (Black) with AF-S DX NIKKOR 18-140mm f/3.5-5.6G ED VR Lens',
      bestsellingcameraPrice: '₹94,950.00',
    ),
  ];
}

class ItemLists {
  String btTitle;
  String btImage;
  String keepshoppingTitle;
  String keepshoppingImage;

  String LocalProductsNearbyImage;
  String LocalProductsNearbyTitle;
  String LocalProductsNearbyPrice;
  String keepshoppingforImage;
  String keepshoppingforTitle;
  String bestsellingcameraImage;
  String bestsellingcameraTitle;
  String bestsellingcameraPrice;
  String featuredCategorieImage;
  String featuredCategorieTitle;

  ItemLists({
    this.btTitle,
    this.btImage,
    this.keepshoppingTitle,
    this.keepshoppingImage,
    this.LocalProductsNearbyImage,
    this.LocalProductsNearbyTitle,
    this.LocalProductsNearbyPrice,
    this.keepshoppingforImage,
    this.keepshoppingforTitle,
    this.bestsellingcameraImage,
    this.bestsellingcameraTitle,
    this.bestsellingcameraPrice,
    this.featuredCategorieImage,
    this.featuredCategorieTitle,
  });
}
