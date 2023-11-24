import 'package:flutter/material.dart';
import 'package:cafe/Modal/data.dart';
import 'package:cafe/Show/index.dart' as show;

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cafe. Size: ${MediaQuery.of(context).size.width}'),
      ),
      // body: const TourismPlaceList(),
      body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          if (constraints.maxWidth <= 600) {
            return const CafeList();
          } else if (constraints.maxWidth <= 1200) {
            return const CafeListGrid(gridCount: 4);
          } else {
            return const CafeListGrid(gridCount: 6);
          }
        },
      ),
    );
  }
}

class CafeList extends StatelessWidget {
  const CafeList({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        final Cafe place = cafeList[index];
        return InkWell(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return show.MainScreen(place: place);
              }));
            },
            child: Card(
              child: Container(
                decoration: BoxDecoration(
                  borderRadius:
                      BorderRadius.circular(10.0), // Mengatur border radius
                  color: const Color.fromARGB(255, 247, 244,
                      244), // Optional: Mengatur warna latar belakang
                ),
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Expanded(
                      flex: 1,
                      child: Image.asset(place.imageAsset),
                    ),
                    Expanded(
                      flex: 2,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              place.name,
                              style: const TextStyle(fontSize: 16.0),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Text(place.location),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ));
      },
      itemCount: cafeList.length,
    );
  }
}

class CafeListGrid extends StatelessWidget {
  final int gridCount;
  const CafeListGrid({Key? key, required this.gridCount}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: GridView.count(
        crossAxisCount: gridCount,
        crossAxisSpacing: 2,
        mainAxisSpacing: 2,
        children: cafeList.map((place) {
          return InkWell(
             onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return show.MainScreen(place: place);
              }));
            },
            child: Card(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Expanded(
                    child: Image.asset(
                      place.imageAsset,
                      fit: BoxFit.cover,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Text(
                      place.name,
                      style: const TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0, bottom: 8.0),
                    child: Text(
                      place.location,
                    ),
                  ),
                ],
              ),
            ),
          );
        }).toList(),
      ),
    );
  }
}
