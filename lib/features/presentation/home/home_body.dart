import 'package:flutter/material.dart';
import 'package:re3aya_app/core/util/app_theme.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        backgroundColor: AppTheme.backgroundColor,
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          title: Row(
            children: [
              Container(
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                  color: AppTheme.primaryBlue,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const Icon(
                  Icons.medical_services,
                  color: Colors.white,
                  size: 24,
                ),
              ),
              const SizedBox(width: 12),
              const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'ahmed',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: AppTheme.textPrimary,
                    ),
                  ),
                  Text(
                    '+201115535844',
                    style: TextStyle(
                      fontSize: 12,
                      color: AppTheme.textSecondary,
                    ),
                  ),
                ],
              ),
            ],
          ),
          actions: [
            Container(
              margin: const EdgeInsets.only(left: 16),
              child: Image.network(
                'https://flagcdn.com/w40/eg.png',
                width: 30,
                errorBuilder: (context, error, stackTrace) =>
                    const Icon(Icons.flag, size: 30),
              ),
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                // Service Grid
                GridView.count(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  crossAxisCount: 2,
                  mainAxisSpacing: 16,
                  crossAxisSpacing: 16,
                  childAspectRatio: 1.1,
                  children: [
                    _buildServiceCard(
                      context,
                      icon: Icons.medical_information,
                      title: 'إستشارة طبية',
                      color: Colors.blue.shade50,
                      iconColor: Colors.blue,
                      onTap: () {},
                    ),
                    _buildServiceCard(
                      context,
                      icon: Icons.bloodtype,
                      title: 'معامل تحاليل',
                      color: Colors.red.shade50,
                      iconColor: Colors.red,
                      onTap: () {},
                    ),
                    _buildServiceCard(
                      context,
                      icon: Icons.medication,
                      title: 'صيدليات',
                      color: Colors.green.shade50,
                      iconColor: Colors.green,
                      onTap: () {},
                    ),
                    _buildServiceCard(
                      context,
                      icon: Icons.local_hospital,
                      title: 'خدمات إنسانية',
                      color: Colors.orange.shade50,
                      iconColor: Colors.orange,
                      onTap: () {},
                    ),
                    _buildServiceCard(
                      context,
                      icon: Icons.folder_open,
                      title: 'الملفر',
                      color: Colors.purple.shade50,
                      iconColor: Colors.purple,
                      onTap: () => Navigator.pushNamed(
                          context, '/medical-record'),
                    ),
                    _buildServiceCard(
                      context,
                      icon: Icons.home_work,
                      title: 'زيارات رعاية منزلية',
                      color: Colors.teal.shade50,
                      iconColor: Colors.teal,
                      onTap: () {},
                    ),
                    _buildServiceCard(
                      context,
                      icon: Icons.camera_alt,
                      title: 'التصوير الطبي',
                      color: Colors.indigo.shade50,
                      iconColor: Colors.indigo,
                      onTap: () {},
                    ),
                    _buildServiceCard(
                      context,
                      icon: Icons.add_circle,
                      title: 'خدمات طبية أخرى',
                      color: Colors.cyan.shade50,
                      iconColor: Colors.cyan,
                      onTap: () {},
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        bottomNavigationBar: _buildBottomNavigationBar(context),
      ),
    );
  }

  Widget _buildServiceCard(
    BuildContext context, {
    required IconData icon,
    required String title,
    required Color color,
    required Color iconColor,
    required VoidCallback onTap,
  }) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(16),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.1),
              blurRadius: 10,
              offset: const Offset(0, 4),
            ),
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 60,
              height: 60,
              decoration: BoxDecoration(
                color: color,
                borderRadius: BorderRadius.circular(16),
              ),
              child: Icon(
                icon,
                color: iconColor,
                size: 32,
              ),
            ),
            const SizedBox(height: 12),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Text(
                title,
                style: const TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  color: AppTheme.textPrimary,
                ),
                textAlign: TextAlign.center,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildBottomNavigationBar(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            blurRadius: 10,
            offset: const Offset(0, -2),
          ),
        ],
      ),
      child: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
        selectedItemColor: AppTheme.primaryBlue,
        unselectedItemColor: AppTheme.textSecondary,
        currentIndex: 0,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'الرئيسية',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications),
            label: 'الإشعارات',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_balance_wallet),
            label: 'المحفظة',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'الحساب',
          ),
        ],
        onTap: (index) {
          switch (index) {
            case 0:
              // Already on home
              break;
            case 1:
              Navigator.pushNamed(context, '/notifications');
              break;
            case 2:
              Navigator.pushNamed(context, '/wallet');
              break;
            case 3:
              Navigator.pushNamed(context, '/profile');
              break;
          }
        },
      ),
    );
  }
}