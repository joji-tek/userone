import 'package:flutter/material.dart';
import 'package:user1/mainsreens/car_detail_screen.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Color.fromRGBO(46, 67, 90, 1),
        toolbarHeight: 130,
        flexibleSpace: SafeArea(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ClipOval(
                      child: CircleAvatar(
                        child: Image.asset(
                          'assets/img/image.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.asset('assets/img/LogoType.png'),
                  )
                ],
              ),
              SizedBox(
                height: 6,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  style: TextStyle(
                    fontSize: 12,
                  ),
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.search),
                    label: Text('Search any car...'),
                    labelStyle: TextStyle(),
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(50),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 340,
            mainAxisSpacing: 8,
            crossAxisSpacing: 8,
          ),
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () => Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (_) => CarDetailScreen(),
                ),
              ),
              child: Card(
                child: Column(
                  children: [
                    ClipRRect(
                      borderRadius: const BorderRadius.only(
                          // topLeft: Radius.circular(12),
                          // topRight: Radius.circular(12),
                          ),
                      child: Stack(
                        children: [
                          Image.asset(
                            'assets/img/car.png',
                            fit: BoxFit.contain,
                          ),
                          Positioned(
                            bottom: 10,
                            right: 10,
                            child: Container(
                              padding: const EdgeInsets.all(4),
                              color: Colors.black54,
                              child: Text(
                                'Fortuner',
                                style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 14,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 12),
                    Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                            width: 2,
                          ),
                          Text(
                            'Rent\nPhp 1000/day',
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(
                            height: 50,
                            width: 50,
                            child: Card(
                              color: Color.fromRGBO(46, 67, 90, 1),
                              child: Icon(
                                Icons.shopping_cart_checkout_rounded,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 0.5,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
          itemCount: 2,
        ),
      ),
    );
  }
}
