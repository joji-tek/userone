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
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
          color: Colors.grey,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'SALE: PHP 450000',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
                ),
                const Text(
                  'RENT: PHP 1650-3280',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
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
                    width: 70,
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Icon(
                          Icons.car_rental,
                          color: Colors.white,
                        ),
                        Text(
                          'Rent',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (_) => BuyingScreen()),
                    );
                  },
                  child: Container(
                    height: 50,
                    width: 70,
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Icon(
                          Icons.car_rental,
                          color: Colors.white,
                        ),
                        Text(
                          'Buy',
                          style: TextStyle(
                            color: Colors.white,
                          ),
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
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8),
              child: const TopMenu(),
            ),
            const SpecSheetsMenu(),
            Card(
              child: ListTile(
                title: Text('About'),
                subtitle: Text(
                    'Whether you\'re off-road or driving in the city, you can rely on the Toyota Fortuner.'),
              ),
            ),
            Card(
              child: ListTile(
                leading: CircleAvatar(
                  radius: 25,
                  child: ClipOval(child: Image.asset('assets/img/image.png')),
                ),
                title: Text('Name of seller'),
                subtitle: Text(
                  'Online',
                  style: TextStyle(
                    color: Colors.green,
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                trailing: CircleAvatar(
                  radius: 25,
                  child: IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.message),
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
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text('Specifications'),
        Row(
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
        Row(
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
      ],
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
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Image.asset('assets/img/car.png'),
                    ),
                    const SizedBox(height: 10),
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        color: Colors.green,
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
                color: Colors.grey,
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
