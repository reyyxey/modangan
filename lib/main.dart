import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Semeru(),
    );
  }
}

class Semeru extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // =========================
      // APP BAR
      // =========================
      appBar: AppBar(
        title: Text("Pantai Modangan"),
        foregroundColor: Color(0xff000000),
        backgroundColor: Color(0x003770c6),
        elevation: 4,
      ),

      // =========================
      // BODY
      // =========================
      body: Container(
        width: double.infinity,
        height: double.infinity,

        // =========================
        // BACKGROUND GAMBAR
        // =========================
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('asset/1.jpg'),
            fit: BoxFit.cover,
            colorFilter: ColorFilter.mode(
              Colors.black.withOpacity(0.80),
              BlendMode.darken,
            ),
          ),
        ),

        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(
              top: 50,
              left: 20,
              right: 20,
              bottom: 20,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // =========================
                // FOTO SEMERU
                // =========================
                ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Image.asset(
                    'asset/2.jpg',
                    width: double.infinity,
                    height: 200,
                    fit: BoxFit.cover,
                  ),
                ),

                SizedBox(height: 20),

                // =========================
                // NAMA GUNUNG
                // =========================
                Text(
                  "Pantai Modangan",
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),

                SizedBox(height: 5),

                Text(
                  "Jawa Timur, Indonesia",
                  style: TextStyle(
                    color: Colors.blue[100],
                    fontSize: 16,
                  ),
                ),

                SizedBox(height: 20),

                // =========================
                // KETINGGIAN & STATUS
                // =========================
                Row(
                  children: [
                    // KETINGGIAN
                    Expanded(
                      child: HoverCard(
                        icon: Icons.waves,
                        title: "Tempat",
                        value: "Bersantai",
                        color: Colors.blue,
                      ),
                    ),

                    SizedBox(width: 10),

                    // STATUS
                    Expanded(
                      child: HoverCard(
                        icon: Icons.beach_access,
                        title: "Status",
                        value: "Pantai",
                        color: Colors.green,
                      ),
                    ),
                  ],
                ),

                SizedBox(height: 20),

                // =========================
                // TENTANG SEMERU
                // =========================
                Text(
                  "Tentang Modangan",
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),

                SizedBox(height: 10),

                Text(
                  "Pantai Modangan adalah destinasi wisata bahari yang terletak di Dusun Kalitekuk,  "
                  " Desa Sumberoto, Kecamatan Donomulyo, Kabupaten Malang, Jawa Timur, dan "
                  "berbatasan langsung dengan Kabupaten Blitar. Namanya berasal dari kebiasaan "
                  "makan bersama (madang) para prajurit Pangeran Diponegoro saat bersembunyi di  "
                  "kawasan hutan pantai tersebut pada masa lalu. Pantai yang menghadap langsung ke"
                  "Samudra Hindia ini terkenal dengan bentangan pasir putihnya yang luas, hutan "
                  "lindung yang asri, panorama matahari terbenam yang eksotis, serta ombak laut "
                  "selatan yang besar.  ",
                  style: TextStyle(
                    fontSize: 17,
                    color: Colors.white,
                  ),
                ),

                SizedBox(height: 20),

                // =========================
                // LOKASI & CONTACT
                // =========================
                Row(
                  children: [
                    // LOKASI
                    Expanded(
                      child: HoverCard(
                        icon: Icons.location_on,
                        title: "Lokasi",
                        value: "Kabupaten Donomulyo Jawa Timur",
                        color: Colors.blue,
                      ),
                    ),

                    SizedBox(width: 10),

                    // CONTACT
                    Expanded(
                      child: HoverCard(
                        icon: Icons.contact_phone,
                        title: "Contact",
                        value: "0856-xxxx-xxxx\ninfo@modadang.id",
                        color: Colors.green,
                      ),
                    ),
                  ],
                ),

                SizedBox(height: 30),

                // =========================
                // QUOTE
                // =========================
                Column(
                  children: [
                    Center(
                      child: Container(
                        width: double.infinity,
                        padding: EdgeInsets.symmetric(
                          vertical: 25,
                          horizontal: 20,
                        ),
                        decoration: BoxDecoration(
                          color: Colors.white.withOpacity(0.85),
                          borderRadius: BorderRadius.circular(15),
                          border: Border.all(
                            color: Colors.blue.withOpacity(0.3),
                          ),
                        ),
                        child: Text(
                          "Where Nature Meets the Sky",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            fontStyle: FontStyle.italic,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 15),
                    Center(
                      child: Text(
                        "MODANGAN • EAST JAVA",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),

                SizedBox(height: 30),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

// =====================================================
// HOVER CARD
// =====================================================

class HoverCard extends StatefulWidget {
  final String title;
  final String value;
  final Color color;
  final IconData icon;

  const HoverCard({
    super.key,
    required this.title,
    required this.value,
    required this.color,
    required this.icon,
  });

  @override
  State<HoverCard> createState() => _HoverCardState();
}

// =====================================================
// STATE HOVER CARD
// =====================================================

class _HoverCardState extends State<HoverCard> {
  bool isHovered = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      // MOUSE MASUK
      onEnter: (_) {
        setState(() {
          isHovered = true;
        });
      },

      // MOUSE KELUAR
      onExit: (_) {
        setState(() {
          isHovered = false;
        });
      },

      child: AnimatedContainer(
        duration: Duration(milliseconds: 200),

        // Card naik ketika hover
        transform: Matrix4.translationValues(
          0,
          isHovered ? -5 : 0,
          0,
        ),

        padding: EdgeInsets.all(15),

        decoration: BoxDecoration(
          // Warna card
          color: isHovered
              ? widget.color.withOpacity(0.25)
              : widget.color.withOpacity(0.08),

          borderRadius: BorderRadius.circular(12),

          // Shadow ketika hover
          boxShadow: isHovered
              ? [
                  BoxShadow(
                    color: widget.color.withOpacity(0.35),
                    blurRadius: 12,
                    offset: Offset(0, 6),
                  ),
                ]
              : [],
        ),

        child: Column(
          children: [
            // ICON
            Icon(
              widget.icon,
              color: widget.color,
              size: 30,
            ),

            SizedBox(height: 8),

            // TITLE
            Text(
              widget.title,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),

            SizedBox(height: 5),

            // VALUE
            Text(
              widget.value,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: isHovered ? 18 : 16,
                color: isHovered ? widget.color : Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
