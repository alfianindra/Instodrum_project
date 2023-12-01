import 'package:flutter/material.dart';

class HistoryPage extends StatelessWidget {
  final List<String> searchHistory;
  final VoidCallback clearHistory;
  final Function(String) deleteHistoryItem;

  const HistoryPage({
    Key? key,
    required this.searchHistory,
    required this.clearHistory,
    required this.deleteHistoryItem,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Search History'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Search History:',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
                ElevatedButton(
                  onPressed: clearHistory,
                  child: Text('Clear All'),
                ),
              ],
            ),
            const SizedBox(height: 10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: searchHistory.map(
                (term) => Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Chip(
                      label: Text(term),
                    ),
                    IconButton(
                      icon: Icon(Icons.delete),
                      onPressed: () => deleteHistoryItem(term),
                    ),
                  ],
                ),
              ).toList(),
            ),
          ],
        ),
      ),
    );
  }
}
