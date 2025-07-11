import 'package:flutter/material.dart';
import 'package:lemon/src/pages/home_page.dart';
import 'package:lemon/src/widgets/Bottom-bar.dart';
import '../src/pages/login_page.dart';
import '../src/pages/admin_page.dart';
import '../src/pages/credencial_page.dart';
import '../src/pages/mis_reservas_page.dart';
import '../src/pages/perfil_page.dart';
import '../src/pages/reserva_page.dart';
import '../src/pages/select_plan_page.dart';
import '../src/pages/signup_page.dart';

Map<String, WidgetBuilder> getAplicationRoutes() {
  return <String, WidgetBuilder>{
    'signup': (BuildContext context) => const RegisterScreen(),
    'login': (BuildContext context) => const LoginScreen(),
    'credencial': (BuildContext context) => const MiCredencialPage(),
    'admin': (BuildContext context) => const AdminPage(),
    'home': (BuildContext context) => const HomeScreen(),
    'initial': (BuildContext context) => const BottomBar(),
    'selectPlan': (BuildContext context) => const SelectPlanPage(),
    'ScheduledClasses': (BuildContext context) => const ScheduledClassesPage(),
    'userProfile': (BuildContext context) => const UserProfilePage(),
    'programacionClases': (BuildContext context) => const ProgramacionClasesPage(),



        };
}
