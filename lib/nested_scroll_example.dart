import 'package:flutter/material.dart';

class NestedScrollExample extends StatelessWidget {
  const NestedScrollExample({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: Colors.white,

        body: Column(
          children: [
            SafeArea(
              child: Container(
                width: double.infinity,
                padding: const EdgeInsets.all(16),
                color: Colors.blueGrey,
                child: Text(
                  'Nested ScrollView Example',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 26,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),

            // Scrolling area below the title
            Expanded(
              child: NestedScrollView(
                headerSliverBuilder: (context, innerBoxIsScrolled) => [
                  SliverAppBar(
                    expandedHeight: 200,
                    pinned: true,
                    floating: true,
                    backgroundColor: Colors.black,

                    // Background image
                    flexibleSpace: Stack(
                      fit: StackFit.expand,
                      children: [
                        Image.network(
                          'https://images.unsplash.com/photo-1506744038136-46273834b3fb?auto=format&fit=crop&w=800&q=80',
                          fit: BoxFit.cover,
                        ),
                        Container(
                          color: Colors.black.withOpacity(0.5),
                        ),
                      ],
                    ),

                    // Tab bar
                    bottom: TabBar(
                      indicatorColor: Colors.tealAccent,
                      labelColor: Colors.tealAccent,
                      unselectedLabelColor: Colors.white70,
                      labelStyle: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                      tabs: const [
                        Tab(text: 'Tab 1'),
                        Tab(text: 'Tab 2'),
                      ],
                    ),
                  ),
                ],

                body: TabBarView(
                  children: [
                    _buildStyledListView(),
                    _buildStyledListView(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// ListView
  Widget _buildStyledListView() {
    return Container(
      color: Colors.white,
      child: ListView.builder(
        itemCount: 15,
        itemBuilder: (context, index) => Container(
          margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          padding: EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: Colors.grey[200],
            borderRadius: BorderRadius.circular(12),
          ),
          child: Text(
            'Item $index',
            style: TextStyle(color: Colors.black, fontSize: 16),
          ),
        ),
      ),
    );
  }
}
