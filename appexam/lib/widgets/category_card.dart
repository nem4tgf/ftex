import 'package:flutter/material.dart';

class CategoryCard extends StatelessWidget {
  final String label;
  final IconData icon;

  const CategoryCard({super.key, required this.label, required this.icon});

  Color _getBackgroundColor(String label) {
    switch (label) {
      case 'Hotels':
        return const Color(0xFFFFF0E0); // light orange
      case 'Flights':
        return const Color(0xFFFFE4E4); // light red/pink
      case 'All':
        return const Color(0xFFE0F7F9); // light teal
      default:
        return Colors.white;
    }
  }

  Color _getIconColor(String label) {
    switch (label) {
      case 'Hotels':
        return Colors.orange;
      case 'Flights':
        return Colors.redAccent;
      case 'All':
        return Colors.teal;
      default:
        return Colors.deepPurple;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
      decoration: BoxDecoration(
        color: _getBackgroundColor(label),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        children: [
          Icon(icon, color: _getIconColor(label), size: 28),
          const SizedBox(height: 6),
          Text(label, style: const TextStyle(color: Colors.black)),
        ],
      ),
    );
  }
}