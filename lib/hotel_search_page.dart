// ignore: unused_import
import 'package:flight_scanner/main.dart';
import 'package:flutter/material.dart';
//  importar a página HotelSearchPage
import 'hotel_search_page.dart'; 




class HotelSearchPage extends StatelessWidget {
  final List<Map<String, String>> hotels = [
    {
      'image':
          'https://via.placeholder.com/150', // Substitua com URLs reais das imagens
      'name': 'Hotel Bali',
      'location': 'Bali, Indonésia',
      'price': '\$200/noite',
    },
    {
      'image': 'https://via.placeholder.com/150',
      'name': 'Hotel Phuket',
      'location': 'Phuket, Tailândia',
      'price': '\$150/noite',
    },
    {
      'image': 'https://via.placeholder.com/150',
      'name': 'Hotel Rio',
      'location': 'Rio de Janeiro, Brasil',
      'price': '\$250/noite',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Procurar Hotéis'),
        backgroundColor: Colors.cyan, // Ajuste a cor conforme necessário
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(16.0),
        itemCount: hotels.length,
        itemBuilder: (context, index) {
          final hotel = hotels[index];
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Row(
                  children: [
                    // Imagem do hotel
                    ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child: Image.network(
                        hotel['image']!,
                        width: 80,
                        height: 80,
                        fit: BoxFit.cover,
                      ),
                    ),
                    const SizedBox(width: 16),

                    // Informações do hotel
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            hotel['name']!,
                            style: const TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            hotel['location']!,
                            style: const TextStyle(
                              fontSize: 14,
                              color: Colors.grey,
                            ),
                          ),
                          const SizedBox(height: 8),
                          Text(
                            hotel['price']!,
                            style: const TextStyle(
                              fontSize: 14,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
