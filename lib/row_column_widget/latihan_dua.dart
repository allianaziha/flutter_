import 'package:flutter/material.dart';
import 'package:allia_project/main_layout.dart';

class LatihanDua extends StatelessWidget {
  const LatihanDua({super.key});

  @override
  Widget build(BuildContext context) {
    return MainLayout(
      title: 'Berita Terbaru',
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16),
        child: Wrap(
          spacing: 16,
          runSpacing: 16,
          children: [
            buildMiniNewsCard(
              imageUrl:
                  'https://cdn.antaranews.com/cache/1200x800/2020/04/22/antarafoto-pengemasan-paket-bansos-220420-mrh-7_1.jpg',
              title: 'Penyaluran Bansos Tahap Akhir 2025',
              desc:
                  'Pemerintah mulai menyalurkan bantuan sosial untuk masyarakat terdampak.',
              date: '29 Juli 2025',
              source: 'Kompas.com',
            ),
            buildMiniNewsCard(
              imageUrl:
                  'https://i0.wp.com/arrohmah.co.id/wp-content/uploads/2020/03/3-Santri-SMP-Ar-Rohmah-Putri-Raih-Juara-Olimpiade-Sains-Tingkat-Jawa-Timur-2.jpg?resize=800%2C400&ssl=1',
              title: 'Siswa Raih Emas Olimpiade Matematika',
              desc:
                  'Siswa Indonesia menorehkan prestasi di ajang olimpiade internasional.',
              date: '28 Juli 2025',
              source: 'DetikEdu',
            ),
            buildMiniNewsCard(
              imageUrl:
                  'https://cdn.antaranews.com/cache/1200x800/2023/05/15/IMG_2610a.jpg',
              title: 'Gerakan Menanam Pohon Serentak Nasional',
              desc:
                  'Gerakan hijau kembali digalakkan, menanam jutaan pohon di berbagai daerah.',
              date: '27 Juli 2025',
              source: 'Antara News',
            ),
            buildMiniNewsCard(
              imageUrl:
                  'https://assets.promediateknologi.id/crop/0x0:0x0/0x0/webp/photo/p3/144/2025/04/26/WhatsApp-Image-2025-04-26-at-122833_c858cb37-2090582495.jpg',
              title: 'UMKM Lokal Cuan Ratusan Juta dari Online',
              desc:
                  'Usaha mikro lokal sukses menembus pasar digital dan raih omzet besar.',
              date: '26 Juli 2025',
              source: 'IDN Times',
            ),
          ],
        ),
      ),
    );
  }

  Widget buildMiniNewsCard({
    required String imageUrl,
    required String title,
    required String desc,
    required String date,
    required String source,
  }) {
    return SizedBox(
      width: 160,
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        elevation: 4,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Gambar besar di atas
            ClipRRect(
              borderRadius: BorderRadius.vertical(top: Radius.circular(12)),
              child: Image.network(
                imageUrl,
                height: 100,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
            // Konten berita
            Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 13),
                  ),
                  SizedBox(height: 4),
                  Text(
                    desc,
                    maxLines: 3,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(fontSize: 12, color: Colors.grey[700]),
                  ),
                  SizedBox(height: 6),
                  Text(
                    '$date | $source',
                    style: TextStyle(fontSize: 10, color: Colors.grey[600]),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
