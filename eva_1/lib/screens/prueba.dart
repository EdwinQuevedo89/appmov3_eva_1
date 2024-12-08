import 'package:flutter/material.dart';

class PruebaScreen extends StatelessWidget {
  const PruebaScreen({super.key}); 

  @override
  Widget build(BuildContext context) {
    return Scaffold(  
      appBar: AppBar(  
        title: const Text('Prueba'), 
      ),
      body: const _PruebaBody(),  
    );
  }
}

class _PruebaBody extends StatelessWidget {
  const _PruebaBody();  // Constructor const

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: NetworkImage('https://scontent.fuio35-1.fna.fbcdn.net/v/t39.30808-1/421451022_2774935912656261_3017090426827943242_n.jpg?stp=dst-jpg_s200x200_tt6&_nc_cat=100&ccb=1-7&_nc_sid=0ecb9b&_nc_ohc=JXVLcMpi4LsQ7kNvgGlf4l5&_nc_zt=24&_nc_ht=scontent.fuio35-1.fna&_nc_gid=Af2vD3kmhqjnQs1WqTvEKYa&oh=00_AYAuqN1Z6ivxNlxSqM3uft1Qivgoha1pkTLiP4HWlYmn-w&oe=675BA565'), 
          fit: BoxFit.cover,
        ),
      ),
      child: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Nombre: Edwin Quevedo',
              style: TextStyle(fontSize: 24, color: Colors.white),
            ),
            SizedBox(height: 10),
            Text(
              'GitHub: EdwinQuevedo89',
              style: TextStyle(fontSize: 20, color: Colors.white70),
            ),
          ],
        ),
      ),
    );
  }
}
