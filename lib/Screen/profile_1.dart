import 'package:flutter/material.dart';

class ProfilePage1 extends StatelessWidget {
  // URLs de imágenes válidas para que el código se ejecute.
  // Puedes reemplazarlas con tus propias URLs cuando las tengas.
  final String profileImage =
      'https://raw.githubusercontent.com/ArielRodriguez07/images/refs/heads/main/%2B.jpg'; // Imagen de portada
  final String avatarImage =
      'https://raw.githubusercontent.com/ArielRodriguez07/images/refs/heads/main/channels4_profile.jpg'; // Imagen del perfil
  final List<String> galleryImages = [
    'https://raw.githubusercontent.com/ArielRodriguez07/images/refs/heads/main/Fortnite-Logo-Best-Wallpaper-47898.png',
    'https://raw.githubusercontent.com/ArielRodriguez07/images/refs/heads/main/black_myth_wukong-856105810-large.jpg',
    'https://raw.githubusercontent.com/ArielRodriguez07/images/refs/heads/main/playstation-last-of-us-i127204.jpg',
    'https://raw.githubusercontent.com/ArielRodriguez07/images/refs/heads/main/hollowknight-1280-1529623462572_160w.jpg',
    'https://raw.githubusercontent.com/ArielRodriguez07/images/refs/heads/main/undertale.png',
    'https://raw.githubusercontent.com/ArielRodriguez07/images/refs/heads/main/wallpapersden.com_doom-eternal-8k-poster_2932x2932.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Column(
            children: [
              Container(
                height: 200,
                width: double.infinity,
                child: Image.network(
                  profileImage,
                  fit: BoxFit.cover,
                  // Agrega un handler de error para ver si la imagen no carga
                  errorBuilder: (context, error, stackTrace) {
                    return Center(child: Text('Error al cargar la imagen de portada'));
                  },
                ),
              ),
              const SizedBox(height: 60), // Deja espacio para el avatar
              Text(
                'Derrick Estrada',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'Graphic Designer',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey[600],
                ),
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  _StatColumn(label: 'Friends', value: '2318'),
                  _StatColumn(label: 'Following', value: '364'),
                  _StatColumn(label: 'Followers', value: '175'),
                ],
              ),
              const SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  Icon(Icons.grid_on, color: Colors.black87),
                  Icon(Icons.image, color: Colors.black26),
                  Icon(Icons.bookmark_border, color: Colors.black26),
                ],
              ),
              const SizedBox(height: 8),
              const Divider(),
              Expanded(
                child: GridView.builder(
                  padding: EdgeInsets.all(8),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    crossAxisSpacing: 6,
                    mainAxisSpacing: 6,
                  ),
                  itemCount: galleryImages.length,
                  itemBuilder: (context, index) {
                    return ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child: Image.network(
                        galleryImages[index],
                        fit: BoxFit.cover,
                        // Agrega un handler de error para las imágenes de la galería
                        errorBuilder: (context, error, stackTrace) {
                          return Center(child: Text('Error'));
                        },
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
          Positioned(
            top: 140,
            left: MediaQuery.of(context).size.width / 2 - 45,
            child: CircleAvatar(
              radius: 45,
              backgroundColor: Colors.white,
              child: CircleAvatar(
                radius: 40,
                backgroundImage: NetworkImage(avatarImage),
                // Agrega un handler de error para el avatar
                onBackgroundImageError: (exception, stackTrace) {
                  print('Error al cargar el avatar: $exception');
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _StatColumn extends StatelessWidget {
  final String label;
  final String value;

  const _StatColumn({required this.label, required this.value});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          value,
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
        ),
        SizedBox(height: 4),
        Text(label, style: TextStyle(color: Colors.grey)),
      ],
    );
  }
}