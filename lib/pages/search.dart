import 'package:flutter/material.dart';
import 'history_page.dart';

class Search extends StatefulWidget {
  const Search({Key? key}) : super(key: key);

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
  final List<Map<String, dynamic>> _allUsers = [
    {"id": 1, "name": "Alfian Indrajaya", "age": 18, "image": 'https://static.promediateknologi.id/crop/0x0:0x0/750x500/webp/photo/metropolitan/2022/11/foto-komedian.jpg', "bio": "I love coding and exploring new technologies."},
    {"id": 2, "name": "Novandry Aprilian", "age": 20, "image": 'https://img.inews.co.id/media/600/files/inews_new/2021/11/26/denny_cagur.jpg', "bio": "Comedian and entertainer."},
    {"id": 3, "name": "Carlouis Fernando", "age": 19, "image": 'https://asset.kompas.com/crops/uCujRfoqU5cn8wbcZ54Mj8zXkXc=/41x35:917x619/750x500/data/photo/2018/04/19/40961300401.jpeg', "bio": "Student and aspiring developer."},
    {"id": 4, "name": "Maryanto", "age": 20, "image": 'https://micms.mediaindonesia.com/storage/app/media/FOTO/Operator/16-Komeng.jpg', "bio": "Tech enthusiast and gamer."},
    {"id": 5, "name": "Hansen Pratama", "age": 18, "image": 'https://upload.wikimedia.org/wikipedia/commons/1/12/Sule_Sutisna%2C_Ini_Talk_Show%2C_07.21.jpg', "bio": "Actor and comedian."},
    {"id": 6, "name": "Witriatna Kosahi", "age": 19, "image": 'https://static.promediateknologi.id/crop/0x0:0x0/750x500/webp/photo/2022/09/10/3960623605.jpg', "bio": "Nature lover and photographer."},
  ];

  List<Map<String, dynamic>> _foundUsers = [];
  List<String> _searchHistory = [];
  late TextEditingController _searchController;
  late FocusNode _searchFocusNode;

  @override
  void initState() {
    super.initState();
    _foundUsers = _allUsers;
    _searchController = TextEditingController();
    _searchFocusNode = FocusNode();
  }

  @override
  void dispose() {
    _searchController.dispose();
    _searchFocusNode.dispose();
    super.dispose();
  }

  void _runFilter(String enteredKeyword) {
    List<Map<String, dynamic>> results = [];
    if (enteredKeyword.isEmpty) {
      results = _allUsers;
    } else {
      results = _allUsers
          .where((user) =>
              user["name"].toLowerCase().contains(enteredKeyword.toLowerCase()))
          .toList();
    }

    setState(() {
      _foundUsers = results;
    });
  }

  void _addToSearchHistory(String term) {
    if (!_searchHistory.contains(term)) {
      setState(() {
        _searchHistory.add(term);
      });
    }
  }

  void _clearSearchHistory() {
    setState(() {
      _searchHistory.clear();
    });
  }

  void _deleteHistoryItem(String term) {
    setState(() {
      _searchHistory.remove(term);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: _searchController,
                    focusNode: _searchFocusNode,
                    onTap: () {
                      _searchFocusNode.requestFocus();
                    },
                    onChanged: (value) {
                      _runFilter(value);
                    },
                    onSubmitted: (value) {
                      _addToSearchHistory(value);
                    },
                    decoration: const InputDecoration(
                      labelText: 'Search',
                      suffixIcon: Icon(Icons.search),
                    ),
                  ),
                ),
                const SizedBox(width: 10),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => HistoryPage(
                          searchHistory: _searchHistory,
                          clearHistory: _clearSearchHistory,
                          deleteHistoryItem: _deleteHistoryItem,
                        ),
                      ),
                    );
                  },
                  child: Text('History'),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            _searchHistory.isNotEmpty
                ? Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 20),
                    ],
                  )
                : SizedBox(),
            Expanded(
              child: _foundUsers.isNotEmpty
                  ? ListView.builder(
                      itemCount: _foundUsers.length,
                      itemBuilder: (context, index) => Card(
                        key: ValueKey(_foundUsers[index]["id"]),
                        color: Color.fromARGB(255, 89, 182, 8),
                        elevation: 4,
                        margin: const EdgeInsets.symmetric(vertical: 10),
                        child: ListTile(
                          leading: CircleAvatar(
                            backgroundImage: NetworkImage(_foundUsers[index]["image"]),
                          ),
                          title: Text(_foundUsers[index]['name']),
                          subtitle: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('${_foundUsers[index]["age"].toString()} years old'),
                              SizedBox(height: 4),
                              Text(_foundUsers[index]["bio"]),
                            ],
                          ),
                        ),
                      ),
                    )
                  : const Text(
                      'No results found',
                      style: TextStyle(fontSize: 24),
                    ),
            ),
          ],
        ),
      ),
    );
  }
}
