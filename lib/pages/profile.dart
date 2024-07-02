import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:my_profile/pages/home.dart';

class CustomColors {
  static const Color primaryColor = Color(0xFF7D5A50);
  static const Color secondaryColor = Color(0xFFFDF6F0);
  static const Color primaryText = Color(0xFF000000);
}

class MyProfilePage extends StatelessWidget {
  const MyProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColors.secondaryColor,
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_rounded,
            color: Colors.white,
            size: 30,
          ),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const MyHomePage()),
            );
          },
        ),
        backgroundColor: CustomColors.primaryColor,
        title: const Text(
          'Profile',
          style: TextStyle(
            color: CustomColors.secondaryColor,
            fontSize: 26,
          ),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Center(
              child: Padding(
                padding: EdgeInsets.only(top: 20),
                child: CircleAvatar(
                  radius: 80,
                  backgroundImage: AssetImage('img/sticker2.webp'),
                ),
              ),
            ),
            const Center(
              child: Padding(
                padding: EdgeInsets.only(top: 12),
                child: Text(
                  'Fachrry Al Fachrizzy Risyandi',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
            const Center(
              child: Padding(
                padding: EdgeInsets.only(top: 1),
                child: Text(
                  'Software Engineer',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
            const Center(
              child: Padding(
                padding: EdgeInsets.only(top: 1),
                child: Text(
                  'Institute Teknologi Garut',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
            _buildInfoCard(
              icon: Icons.mail_rounded,
              label: 'Email',
              value: 'example@gmail.com',
            ),
            _buildInfoCard(
              icon: Icons.location_pin,
              label: 'Location',
              value: 'xyz',
            ),
            _buildInfoCard(
              icon: FontAwesomeIcons.xTwitter,
              label: 'X (Twitter)',
              value: '@xyz',
            ),
            _buildInfoCard(
              icon: FontAwesomeIcons.github,
              label: 'Github',
              value: '@xyz',
            ),
            _buildInfoCard(
              icon: Icons.discord_rounded,
              label: 'Discord',
              value: '@xyz',
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildInfoCard(
      {required IconData icon, required String label, required String value}) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Container(
        height: 70,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 2,
              blurRadius: 5,
              offset: const Offset(0, 2),
            ),
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.only(left: 15),
          child: Row(
            children: [
              Icon(
                icon,
                color: CustomColors.primaryColor,
                size: 28,
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(top: 8, left: 25),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        label,
                        style: const TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 5),
                        child: Text(
                          value,
                          style: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
