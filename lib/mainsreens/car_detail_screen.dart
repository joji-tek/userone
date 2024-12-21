import 'package:flutter/material.dart';
import 'package:user1/mainsreens/booking_screen.dart';
import 'package:user1/mainsreens/buying_screen.dart';

class CarDetailScreen extends StatelessWidget {
  const CarDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomSheet: Container(
        height: 90,
        padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 22),
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
          color: Color(0xFFEAE7DA), // Light Cream
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  'SALE: PHP 450,000',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                    color: Color(0xFF28435A), // Dark Blue
                  ),
                ),
                Text(
                  'RENT: PHP 1,650 - 3,280',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                    color: Color(0xFF28435A), // Dark Blue
                  ),
                ),
              ],
            ),
            Row(
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (_) => BookingScreen()),
                    );
                  },
                  child: Container(
                    height: 50,
                    width: 80,
                    decoration: BoxDecoration(
                      color: const Color(0xFFFE5D58), // Coral
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Icon(
                          Icons.car_rental,
                          color: Colors.white,
                        ),
                        SizedBox(width: 4),
                        Text(
                          'Rent',
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(width: 10),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (_) => BuyingScreen()),
                    );
                  },
                  child: Container(
                    height: 50,
                    width: 80,
                    decoration: BoxDecoration(
                      color: Color(0xFF28435A), // Dark Blue
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Icon(
                          Icons.car_rental,
                          color: Colors.white,
                        ),
                        SizedBox(width: 4),
                        Text(
                          'Buy',
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 8),
              child: TopMenu(),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              child: Text(
                'Specifications',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                  color: Color(0xFF28435A), // Dark Blue
                ),
              ),
            ),
            const SpecSheetsMenu(),
            const SizedBox(height: 16),
            Card(
              margin: const EdgeInsets.symmetric(horizontal: 16.0),
              child: ListTile(
                title: const Text(
                  'About',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF28435A), // Dark Blue
                  ),
                ),
                subtitle: const Text(
                  'Whether you\'re off-road or driving in the city, you can rely on the Toyota Fortuner.',
                ),
              ),
            ),
            Card(
              margin:
                  const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
              child: ListTile(
                leading: const CircleAvatar(
                  radius: 25,
                  backgroundColor: Color(0xFF28435A), // Dark Blue
                  child: Icon(Icons.person, color: Colors.white),
                ),
                title: const Text(
                  'Name of Seller',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF28435A), // Dark Blue
                  ),
                ),
                subtitle: const Text(
                  'Online',
                  style: TextStyle(
                    color: Colors.green,
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                trailing: CircleAvatar(
                  radius: 25,
                  backgroundColor: Colors.green, // Coral
                  child: IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.message, color: Colors.white),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class SpecSheetsMenu extends StatelessWidget {
  const SpecSheetsMenu({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Row(
              children: const [
                Expanded(
                  child: Card(
                    child: ListTile(
                      title: Text('Title'),
                      subtitle: Text('subtitle'),
                    ),
                  ),
                ),
                Expanded(
                  child: Card(
                    child: ListTile(
                      title: Text('Title'),
                      subtitle: Text('subtitle'),
                    ),
                  ),
                ),
                Expanded(
                  child: Card(
                    child: ListTile(
                      title: Text('Title'),
                      subtitle: Text('subtitle'),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Row(
              children: const [
                Expanded(
                  flex: 1,
                  child: Card(
                    child: ListTile(
                      title: Text('Title'),
                      subtitle: Text('subTitle'),
                    ),
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Card(
                    child: ListTile(
                      title: Text('Title'),
                      subtitle: Text('subTitle'),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class TopMenu extends StatelessWidget {
  const TopMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height / 3,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            flex: 1,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                IconButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  icon: const Icon(Icons.arrow_back_ios_new),
                ),
                Column(
                  children: [
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(color: Colors.grey),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Image.asset('assets/img/car.png'),
                    ),
                    const SizedBox(height: 10),
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(color: Colors.grey),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Image.asset('assets/img/car.png'),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Expanded(
            flex: 2,
            child: Container(
              decoration: const BoxDecoration(
                color: Color(0xFF28435A), // Dark Blue
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(50),
                  topLeft: Radius.circular(50),
                ),
              ),
              child: Center(
                child: Image.asset('assets/img/car.png'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
