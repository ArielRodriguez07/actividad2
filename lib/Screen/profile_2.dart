import 'package:flutter/material.dart';

class ProfilePage2 extends StatelessWidget {
  const ProfilePage2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Image.network(
              'https://raw.githubusercontent.com/ArielRodriguez07/images/refs/heads/main/%2B.jpg',
              height: 250,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
            const SizedBox(height: 16),
            ListTile(
              leading: CircleAvatar(
                backgroundImage: NetworkImage(
                    'https://raw.githubusercontent.com/ArielRodriguez07/images/refs/heads/main/channels4_profile.jpg'),
              ),
              title: const Text('Garrett Watson'),
              subtitle: const Text('Creative Developer'),
              trailing: ElevatedButton(
                onPressed: () {},
                child: const Text('Follow'),
              ),
            ),
            const Divider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                _StatTile(title: 'Friends', value: '2318'),
                _StatTile(title: 'Following', value: '364'),
                _StatTile(title: 'Followers', value: '175'),
              ],
            ),
            const SizedBox(height: 16),
            const Text('Friends'),
            SizedBox(
              height: 60,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: List.generate(
                  6,
                  (index) => Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 4),
                    child: CircleAvatar(
                      backgroundImage: NetworkImage(
                          'https://randomuser.me/api/portraits/women/$index.jpg'),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 16),
            const Text('Photos'),
            Expanded(
              child: GridView.count(
                crossAxisCount: 3,
                children: List.generate(
                  6,
                  (index) => Padding(
                    padding: const EdgeInsets.all(2),
                    child: Image.network(
                      'https://raw.githubusercontent.com/ArielRodriguez07/images/refs/heads/main/hollowknight-1280-1529623462572_160w.jpg',
                      fit: BoxFit.cover,
                    ),
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

class _StatTile extends StatelessWidget {
  final String title;
  final String value;

  const _StatTile({required this.title, required this.value});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(value, style: const TextStyle(fontWeight: FontWeight.bold)),
        Text(title),
      ],
    );
  }
}