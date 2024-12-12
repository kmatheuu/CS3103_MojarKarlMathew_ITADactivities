import 'dart:typed_data';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class MyCVPage extends StatefulWidget {
  const MyCVPage({super.key});

  @override
  State<MyCVPage> createState() => _MyCVPageState();
}

class _MyCVPageState extends State<MyCVPage> {
  Uint8List? image;

  /// Function to select an image from the gallery
  Future<void> selectImage() async {
    try {
      final ImagePicker picker = ImagePicker();
      final XFile? pickedFile =
          await picker.pickImage(source: ImageSource.gallery);

      if (pickedFile != null) {
        Uint8List img = await pickedFile.readAsBytes(); // Read image as bytes
        setState(() {
          image = img;
        });
      }
    } catch (e) {
      // Handle errors (e.g., permission issues)
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text("Failed to pick image: $e")),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF2F3136), // Discord Dark Background
      appBar: AppBar(
        backgroundColor: const Color(0xFF2F3136),
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      drawer: Drawer(
        backgroundColor: const Color(0xFF292B2F),
        child: ListView(
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Color(0xFF292B2F),
              ),
              child: Text(
                'CV Sections',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 36,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            _buildDrawerItem(
              icon: Icons.school_rounded,
              text: 'Education',
              onTap: () => Navigator.pushNamed(context, '/education'),
            ),
            _buildDrawerItem(
              icon: Icons.code_rounded,
              text: 'Skills',
              onTap: () => Navigator.pushNamed(context, '/skills'),
            ),
            _buildDrawerItem(
              icon: Icons.create_new_folder,
              text: 'Projects',
              onTap: () => Navigator.pushNamed(context, '/projects'),
            ),
            _buildDrawerItem(
              icon: Icons.download_done_rounded,
              text: 'Experience',
              onTap: () => Navigator.pushNamed(context, '/experience'),
            ),
            _buildDrawerItem(
              icon: Icons.logout_rounded,
              text: 'Logout',
              onTap: () => Navigator.pushReplacementNamed(context, '/login'),
            ),
          ],
        ),
      ),
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(height: 20.0),
                Stack(
                  children: [
                    CircleAvatar(
                      radius: 65.0,
                      backgroundImage:
                          image != null ? MemoryImage(image!) : null,
                      backgroundColor: const Color(0xFF7289DA), // Discord Blue
                      child: image == null
                          ? const Text(
                              'KMM',
                              style: TextStyle(
                                fontSize: 40,
                                color: Colors.white,
                              ),
                            )
                          : null,
                    ),
                    Positioned(
                      bottom: -5,
                      left: 80,
                      child: IconButton(
                        onPressed: selectImage,
                        icon: const Icon(
                          Icons.add_a_photo,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20.0),
                const Text(
                  'Karl Mathew D. Mojar',
                  style: TextStyle(
                    fontSize: 24.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(height: 10.0),
                const Text(
                  '0906-533-3774',
                  style: TextStyle(
                    fontSize: 18.0,
                    color: Color(0xFFB9BBBE),
                  ),
                ),
                const SizedBox(height: 5.0),
                const Text(
                  '22-04032@g.batstate-u.edu.ph',
                  style: TextStyle(
                    fontSize: 18.0,
                    color: Color(0xFFB9BBBE),
                  ),
                ),
                const SizedBox(height: 30.0),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: const Text(
                    'To develop a strong foundation in computer science concepts, enhance practical programming skills through hands-on projects, and secure an internship or research opportunity within the next year to gain industry-relevant experience. My aim is to contribute meaningfully to a software development or data-driven project while building a portfolio that demonstrates problem-solving and innovation in technology.',
                    style: TextStyle(
                      fontSize: 16.0,
                      color: Color(0xFFB9BBBE),
                      height: 1.5,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                const SizedBox(height: 20.0),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildDrawerItem(
      {required IconData icon,
      required String text,
      required VoidCallback onTap}) {
    return ListTile(
      leading: Icon(icon, color: const Color(0xFF7289DA)),
      title: Text(
        text,
        style: const TextStyle(color: Colors.white),
      ),
      onTap: onTap,
    );
  }
}
