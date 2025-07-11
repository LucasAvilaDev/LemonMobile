import 'package:flutter/material.dart';
import 'package:lemon/src/widgets/next-training.dart';
import 'package:lemon/src/widgets/novedades_card.dart';
import 'package:lemon/src/widgets/plan_details_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFE5E5E5), // Fondo claro
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildHeader(),
              const SizedBox(height: 16),
              const PlanCard(), // Tu widget personalizado
              const SizedBox(height: 16),
              const NextTrainingCard(),
              const SizedBox(height: 16),
              SizedBox(
                width: double.infinity,
                child: FilledButton.icon(
                  onPressed: () {
                    // Ir a pantalla de reserva
                  },
                  icon: const Icon(Icons.add),
                  label: const Text("Nueva reserva"),
                  style: FilledButton.styleFrom(
                    backgroundColor: const Color(0xFF0D1B2A),
                    foregroundColor: Colors.white,
                    padding: const EdgeInsets.symmetric(vertical: 14),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 16),
              const Text(
                'Novedades',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 8),
              NewsCardList(), // Widget con scroll horizontal
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildHeader() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Text(
            'Hola, Micaela',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          OutlinedButton.icon(
            onPressed: () {
              // Acción para ver la credencial
            },
            icon: const Icon(Icons.qr_code),
            label: const Text("Mi Credencial"),
            style: OutlinedButton.styleFrom(
              foregroundColor: Colors.black,
              side: const BorderSide(color: Colors.black26),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
            ),
          ),
        ],
      ),
      const SizedBox(height: 8),
      const Row(
        children: [
          Icon(Icons.location_on_outlined, size: 16),
          SizedBox(width: 4),
          Text(
            'Sede: San Lorenzo 2493 este',
            style: TextStyle(fontSize: 14),
          ),
          SizedBox(width: 4),
          Icon(Icons.chevron_right, size: 18),
        ],
      ),
    ],
  );
}


}
