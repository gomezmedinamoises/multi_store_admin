import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_admin_scaffold/admin_scaffold.dart';
import 'package:multi_store_admin/views/screens/side_bar_screens/categories_screen.dart';
import 'package:multi_store_admin/views/screens/side_bar_screens/dashboard_screen.dart';
import 'package:multi_store_admin/views/screens/side_bar_screens/orders_screen.dart';
import 'package:multi_store_admin/views/screens/side_bar_screens/products_screen.dart';
import 'package:multi_store_admin/views/screens/side_bar_screens/upload_banner_screen.dart';
import 'package:multi_store_admin/views/screens/side_bar_screens/vendors_screen.dart';
import 'package:multi_store_admin/views/screens/side_bar_screens/withdrawal_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {

  Widget _selectedItem = DashboardScreen();
  screenSelector(item) {
    switch (item.route) {
      case DashboardScreen.routeName:
      setState(() {
        _selectedItem = DashboardScreen();
      });
      break;

      case VendorsScreen.routeName:
      setState(() {
        _selectedItem = VendorsScreen();
      });
      break;

      case WithdrawalScreen.routeName:
      setState(() {
        _selectedItem = WithdrawalScreen();
      });
      break;

      case OrdersScreen.routeName:
      setState(() {
        _selectedItem = OrdersScreen();
      });
      break;

      case CategoriesScreen.routeName:
      setState(() {
        _selectedItem = CategoriesScreen();
      });
      break;

      case UploadBannerScreen.routeName:
      setState(() {
        _selectedItem = UploadBannerScreen();
      });
      break;

      case ProductsScreen.routeName:
      setState(() {
        _selectedItem = ProductsScreen();
      });
      break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return AdminScaffold(
      appBar: AppBar(
        title: Text('Management', style: TextStyle(color: Colors.white),),
        backgroundColor: Colors.indigoAccent.shade700,
      ),
      sideBar: SideBar(
        items: [
          AdminMenuItem(title: 'Dashboard', icon: Icons.dashboard, route: DashboardScreen.routeName),
          AdminMenuItem(title: 'Vendors', icon: Icons.person_3, route: VendorsScreen.routeName),
          AdminMenuItem(title: 'Withdrawal', icon: Icons.money, route: WithdrawalScreen.routeName),
          AdminMenuItem(title: 'Orders', icon: Icons.shopping_cart, route: OrdersScreen.routeName),
          AdminMenuItem(title: 'Categories', icon: Icons.category, route: CategoriesScreen.routeName),
          AdminMenuItem(title: 'Upload Banner', icon: Icons.upload, route: UploadBannerScreen.routeName),
          AdminMenuItem(title: 'Products', icon: Icons.shop, route: ProductsScreen.routeName),
        ], 
        selectedRoute: '',
        onSelected: (item) {
          screenSelector(item);
        },
      ),
      body: _selectedItem,
    );
  }
}