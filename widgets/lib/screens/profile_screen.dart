import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  static const Color facebookBlue = Color(0xFF0866FF);
  static const Color lightGrey = Color(0xFFF0F2F5);

  Widget circleIcon(IconData icon, {double size = 22}) {
    return Container(
      width: 40,
      height: 40,
      decoration: const BoxDecoration(
        color: Color(0xFFE4E6EB),
        shape: BoxShape.circle,
      ),
      child: Icon(icon, size: size, color: Colors.black),
    );
  }

  Widget actionButton(String text, IconData icon, {bool primary = false}) {
    return Expanded(
      child: Container(
        height: 40,
        decoration: BoxDecoration(
          color: primary ? facebookBlue : const Color(0xFFE4E6EB),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, size: 20, color: primary ? Colors.white : Colors.black),
            const SizedBox(width: 6),
            Text(text, style: TextStyle(fontWeight: FontWeight.w600, color: primary ? Colors.white : Colors.black)),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  children: [
                    const Text('Kylvyn Belleza', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
                    const Spacer(),
                    circleIcon(Icons.menu),
                    const SizedBox(width: 10),
                    circleIcon(Icons.edit_outlined),
                    const SizedBox(width: 10),
                    circleIcon(Icons.search),
                    const SizedBox(width: 10),
                    circleIcon(Icons.more_horiz),
                    const SizedBox(width: 10),
                    circleIcon(Icons.camera_alt),
                  ],
                ),
              ),
              SizedBox(
                height: 250,
                child: Stack(
                  clipBehavior: Clip.none,
                  children: [
                    Positioned(
                      top: 0,
                      left: 0,
                      right: 0,
                      height: 180,
                      child: Image.network(
                        'https://picsum.photos/800/300',
                        fit: BoxFit.cover,
                      ),
                    ),
                    Positioned(
                      left: 20,
                      bottom: 0,
                      child: Container(
                        padding: const EdgeInsets.all(4),
                        decoration: const BoxDecoration(color: Colors.white, shape: BoxShape.circle),
                        child: const CircleAvatar(radius: 60, backgroundImage: NetworkImage('https://i.pravatar.cc/300')),
                      ),
                    ),
                    Positioned(
                      left: 95,
                      bottom: 5,
                      child: circleIcon(Icons.camera_alt, size: 18),
                    ),
                    Positioned(
                      right: 12,
                      top: 140,
                      child: circleIcon(Icons.camera_alt, size: 18),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text('Kylvyn Belleza', style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold)),
                    const Text('125 posts · Iloilo City', style: TextStyle(color: Colors.grey, fontSize: 16)),
                    const SizedBox(height: 15),
                    Row(
                      children: [
                        actionButton('Add to story', Icons.add_circle, primary: true),
                        const SizedBox(width: 10),
                        actionButton('Edit profile', Icons.edit),
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16),
                child: Container(
                  padding: const EdgeInsets.all(12),
                  decoration: BoxDecoration(color: lightGrey, borderRadius: BorderRadius.circular(8)),
                  child: const Row(
                    children: [
                      Icon(Icons.lock_outline),
                      SizedBox(width: 10),
                      Expanded(child: Text('Your profile privacy: Manage your information. Learn more.')),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Expanded(
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: facebookBlue,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                        child: const Text('Highlights', style: TextStyle(color: Colors.white)),
                      ),
                    ),
                    const SizedBox(width: 8),
                    Expanded(
                      child: OutlinedButton(
                        onPressed: () {},
                        style: OutlinedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                        child: const Text('Photos', style: TextStyle(color: Colors.black)),
                      ),
                    ),
                    const SizedBox(width: 8),
                    Expanded(
                      child: OutlinedButton(
                        onPressed: () {},
                        style: OutlinedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                        child: const Text('Reels', style: TextStyle(color: Colors.black)),
                      ),
                    ),
                  ],
                ),
              ),
              const Divider(),
              Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        const Expanded(
                          child: Text('Personal details', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                        ),
                        circleIcon(Icons.edit_outlined, size: 22),
                      ],
                    ),
                    const SizedBox(height: 10),
                    ListTile(leading: const Icon(Icons.location_on), title: const Text('Iloilo City')),
                    ListTile(leading: const Icon(Icons.home), title: const Text('Address: Iloilo City, Philippines')),
                    ListTile(leading: const Icon(Icons.cake), title: const Text('Born on April 26, 2007')),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
