import 'package:flutter/material.dart';

void main() => runApp(const AppVentaropa());

class AppVentaropa extends StatelessWidget {
  const AppVentaropa({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SeccionClientes(),
    );
  }
}

class SeccionClientes extends StatelessWidget {
  const SeccionClientes({super.key});

  @override
  Widget build(BuildContext context) {
    // Definimos colores suaves para reusar
    const colorFondo = Color(0xFFFDF5E6); // Old Lace (Crema suave)
    const colorTarjeta = Color(0xFFE1F5FE); // Azul muy claro

    return Scaffold(
      backgroundColor: colorFondo,
      appBar: AppBar(
        title: const Text(
          'Nuestros Clientes VIP',
          style: TextStyle(color: Color(0xFF5D4037), fontWeight: FontWeight.bold),
        ),
        backgroundColor: const Color(0xFFD7CCC8), // Café muy claro/crema
        elevation: 0,
        leading: const Icon(Icons.people_alt_rounded, color: Color(0xFF5D4037)),
      ),
      
      // --- BODY: ListView con 5 elementos ---
      body: ListView(
        padding: const EdgeInsets.all(15),
        children: [
          _buildClienteTile('Ana García', 'Cliente Frecuente', Icons.person, colorTarjeta),
          _buildClienteTile('Luis Torres', 'Cliente Premium', Icons.person_2, const Color(0xFFF1F8E9)), // Verde suave
          _buildClienteTile('María López', 'Nuevo Registro', Icons.person_3, const Color(0xFFFFF3E0)), // Naranja suave
          _buildClienteTile('Carlos Ruiz', 'Cliente Mayorista', Icons.person_4, const Color(0xFFF3E5F5)), // Morado suave
          _buildClienteTile('Elena Sanz', 'Cliente VIP', Icons.person_outline, const Color(0xFFEFEBE9)), // Café grisáceo suave
        ],
      ),
    );
  }

  // Función interna para mantener el body limpio y organizado
  Widget _buildClienteTile(String nombre, String categoria, IconData icono, Color fondo) {
    return Card(
      color: fondo,
      elevation: 2,
      margin: const EdgeInsets.symmetric(vertical: 8),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: ListTile(
        contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        // Propiedad Leading (Icono o Avatar al inicio)
        leading: CircleAvatar(
          backgroundColor: Colors.white70,
          child: Icon(icono, color: Colors.blueGrey),
        ),
        // Título y Subtítulo
        title: Text(
          nombre,
          style: const TextStyle(fontWeight: FontWeight.bold, color: Colors.black87),
        ),
        subtitle: Text(categoria, style: const TextStyle(color: Colors.black54)),
        // Propiedad Trailing (Acción al final)
        trailing: const Icon(
          Icons.arrow_forward_ios,
          size: 16,
          color: Colors.black26,
        ),
        onTap: () {
          // Acción al presionar al cliente
        },
      ),
    );
  }
}