import 'package:flutter/material.dart';
import 'package:lukmukmes/src/model/product.dart';
import 'package:lukmukmes/src/view/page.dart';

List<Productmodel> listCard = [];

class ui_Home extends StatefulWidget {
  ui_Home({super.key});
  @override
  State<ui_Home> createState() => _ui_HomeState();
}

class _ui_HomeState extends State<ui_Home> {
  final TextEditingController _controller = TextEditingController();
  bool isFav = false;
  List<Productmodel> filterList = [];
  final List<Productmodel> listProducts =
      Productmodel(id: 0, name: '', image: '', size: '', price: 0, quantity: 0)
          .products;

  @override
  void initState() {
    super.initState();
    filterList = listProducts;
    _controller.addListener(() {
      filterSearchResults(_controller.text);
    });
  }

  void filterSearchResults(String search) {
    List<Productmodel> filtered = listProducts
        .where((product) =>
            product.name.toLowerCase().contains(search.toLowerCase()))
        .toList();
    setState(() {
      filterList = filtered;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: Text('Pisal'),
              accountEmail: Text('pisal@example.com'),
              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage(
                    'https://i.pinimg.com/564x/1c/db/e0/1cdbe03486c6ba1ff2b677fd57d38146.jpg'),
              ),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(
                      'https://stories.starbucks.com/uploads/sites/34/2024/08/BICUBIK_9714-1440x700.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.person, size: 30),
              title: Text('Profile'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.settings, size: 30),
              title: Text('Settings'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.logout, size: 30),
              title: Text('Log out'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.help, size: 30),
              title: Text('Help'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
      appBar: AppBar(
        leading: Builder(
          builder: (_) {
            return IconButton(
              onPressed: () {
                Scaffold.of(_).openDrawer();
              },
              icon: Icon(
                Icons.sort,
                size: 40,
              ),
            );
          },
        ),
        title: Text("c o f f e e".toUpperCase()),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.shopping_cart, size: 30),
          ),
        ],
      ),
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.all(20),
            width: 430,
            height: 100,
            child: TextField(
              controller: _controller,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                prefixIcon: Icon(Icons.search),
                labelText: 'C o f f e e',
                labelStyle:
                    TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                hintText: 'Search coffee names',
                hintStyle: TextStyle(color: Colors.black, fontSize: 18),
              ),
            ),
          ),
          Expanded(
              child: GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 10.0,
              mainAxisSpacing: 10.0,
            ),
            itemCount: filterList.length,
            itemBuilder: (BuildContext context, int index) {
              return Card(
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => page(
                          pro: filterList[index],
                        ),
                      ),
                    );
                  },
                  child: Stack(
                    children: [
                      Container(
                        height: 150,
                        width: 200,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: NetworkImage(
                              filterList[index].image,
                            ),
                            fit: BoxFit.cover,
                          ),
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(30),
                            topRight: Radius.circular(30),
                          ),
                        ),
                      ),
                      Positioned(
                        bottom: 5,
                        left: 7,
                        child: Row(
                          children: [
                            Column(
                              children: [
                                Text(
                                  '${filterList[index].name}',
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                      Positioned(
                        top: 5,
                        right: 5,
                        child: Row(
                          children: [
                            Column(
                              children: [
                                IconButton(
                                    onPressed: () {},
                                    icon: Icon(
                                      Icons.shopify,
                                      size: 40,
                                      color: Colors.pink,
                                    ))
                              ],
                            )
                          ],
                        ),
                      ),
                      Positioned(
                        bottom: 5,
                        right: 7,
                        child: Row(
                          children: [
                            Column(
                              children: [
                                Text(
                                  '\$${filterList[index].price}',
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
          ))
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 1,
        items: [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.card_giftcard,
              ),
              label: 'Card'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
              ),
              label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.shopify,
              ),
              label: 'sopify'),
        ],
      ),
    );
  }
}
