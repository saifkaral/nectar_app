import 'package:flutter/material.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final items = [
      {"icon": Icons.shopping_bag_outlined, "text": "Orders"},
      {"icon": Icons.credit_card, "text": "My Details"},
      {"icon": Icons.location_on_outlined, "text": "Delivery Address"},
      {"icon": Icons.payments_outlined, "text": "Payment Methods"},
      {"icon": Icons.local_offer_outlined, "text": "Promo Code"},
      {"icon": Icons.notifications_none, "text": "Notifications"},
      {"icon": Icons.help_outline, "text": "Help"},
      {"icon": Icons.info_outline, "text": "About"},
    ];

    return Scaffold(
      body: Column(
        children: [
          ProfileHeader(
            name: "Afsar Hossen",
            email: "lmshuvo97@gmail.com",
            imagePath: "assets/profile.jpg",
          ),

          const Divider(height: 1),

          Expanded(
            child: ListView.builder(
              itemCount: items.length,
              itemBuilder: (context, i) {
                return SettingsTile(
                  icon: items[i]["icon"] as IconData,
                  text: items[i]["text"] as String,
                );
              },
            ),
          ),

          const SizedBox(height: 20),

          LogOutButton(),

          const SizedBox(height: 20),
        ],
      ),
    );
  }
}

class ProfileHeader extends StatelessWidget {
  final String name;
  final String email;
  final String imagePath;

  const ProfileHeader({
    super.key,
    required this.name,
    required this.email,
    required this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      child: Row(
        children: [
          IconButton(
            icon: Icon(Icons.arrow_back_ios_new),
            onPressed: () => Navigator.pop(context),
          ),
          Container(
            width: 60,
            height: 60,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                image: AssetImage(imagePath),
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(width: 15),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                name,
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Text(email, style: const TextStyle(color: Colors.grey)),
            ],
          ),
          const Spacer(),
          const Icon(Icons.edit, size: 20),
        ],
      ),
    );
  }
}

class SettingsTile extends StatelessWidget {
  final IconData icon;
  final String text;

  const SettingsTile({super.key, required this.icon, required this.text});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 18),
          child: Row(
            children: [
              Icon(icon, size: 22),
              const SizedBox(width: 15),
              Text(text, style: const TextStyle(fontSize: 16)),
              const Spacer(),
              const Icon(Icons.chevron_right, size: 22),
            ],
          ),
        ),
        const Divider(height: 1),
      ],
    );
  }
}

class LogOutButton extends StatelessWidget {
  const LogOutButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20),
      padding: const EdgeInsets.symmetric(vertical: 15),
      decoration: BoxDecoration(
        color: Colors.grey.shade200,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          Icon(Icons.logout, size: 20),
          SizedBox(width: 8),
          Text("Log Out", style: TextStyle(fontSize: 16)),
        ],
      ),
    );
  }
}
