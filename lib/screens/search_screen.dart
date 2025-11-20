import 'package:flutter/material.dart';
import 'package:wisata_candi_putrifathonah/data/candi_data.dart';
import 'package:wisata_candi_putrifathonah/models/candi.dart';

// stf di enter auto cuy
class Searchscreen extends StatefulWidget {
  const Searchscreen({super.key});

  @override
  State<Searchscreen> createState() => _SearchscreenState();
}

class _SearchscreenState extends State<Searchscreen> {
  // Todo 1. Deklkarasi Variabel yang dibutuhkan
  List<Candi> _filteredCandis = candiList;
  String _searchQuery = '';
  final TextEditingController _searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Todo. 2 Buatr appbar dengan judul pencarian candi
      appBar: AppBar(title: Text('Pencarian Candi'),),
      // Todo 3. buat bvody berupa column
      body: Column(
        children: [
          // Todo. 4. Buat textfield pencarian sebagaiu anak dari column
          Padding(
            padding: EdgeInsets.all(16),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                color: Colors.deepPurple[50],
              ),
              child: TextField(
                autofocus: false,
                // TODO 6. Implementasi fitur pencarian
                decoration: InputDecoration(
                hintText: 'Cari Candi...',
                  prefixIcon: Icon(Icons.search),
                  // TODO 7. Implementasi Pengosongan Input
                  border: InputBorder.none,
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.deepPurple)),
                  contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 12)
              ),
              ),
            ),
          ),
          // TOdo 5. Buat listview hasil pencarian sebagai dari column
          Expanded(
            child: ListView.builder(
              itemCount: _filteredCandis.length,
              itemBuilder: (context, index){
                final candi = _filteredCandis[index];
                return Card(
                  margin: EdgeInsets.symmetric(horizontal: 16, vertical: 4
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                   children: [
                      Container(
                        padding: EdgeInsets.all(8),
                        width: 100,
                        height: 100,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                         child: Image.asset(
                           candi.imageAsset,
                           fit: BoxFit.cover,
                         ),
                        ),
                      ),
                     Padding(
                       padding: const EdgeInsets.all(8),
                       child: Column(
                         crossAxisAlignment: CrossAxisAlignment.start,
                         children: [
                           Text(
                             candi.name,
                             style: TextStyle(
                               fontSize: 16,
                               fontWeight: FontWeight.bold,
                             ),
                           ),
                           SizedBox(height: 4,),
                           Text(
                             candi.location,
                           ),
                         ],
                       ),
                     )
                   ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
