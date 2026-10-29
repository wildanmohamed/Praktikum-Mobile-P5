import 'package:flutter/material.dart';


class Food {
  final String name;
  final int price;
  final String category;
  final String description;
  final String image;
  final double rating;
  final int reviews;
  final int calories;
  final String portion;
  final String preparationTime;
  final String spicyLevel;
  final bool isHalal;
  final List<String> ingredients;
  final List<String> nutrition;

  const Food({
    required this.name,
    required this.price,
    required this.category,
    required this.description,
    required this.image,
    required this.rating,
    required this.reviews,
    required this.calories,
    required this.portion,
    required this.preparationTime,
    required this.spicyLevel,
    required this.isHalal,
    required this.ingredients,
    required this.nutrition,
  });
}


const List<Food> foods = [
  Food(
    name: 'Nasi Goreng Spesial',
    price: 25000,
    category: 'Makanan Berat',
    description:
        'Nasi goreng dengan bumbu rempah pilihan, telur, ayam suwir, '
        'sayuran segar, dan kerupuk renyah. Cocok untuk makan siang '
        'maupun makan malam.',
    image:
        'https://images.unsplash.com/photo-1603133872878-684f208fb84b?w=900',
    rating: 4.8,
    reviews: 128,
    calories: 450,
    portion: '1 porsi',
    preparationTime: '15 menit',
    spicyLevel: 'Sedang',
    isHalal: true,
    ingredients: [
      'Nasi putih',
      'Telur',
      'Daging ayam',
      'Sayuran',
      'Bumbu rempah',
    ],
    nutrition: [
      'Protein: 18 g',
      'Karbohidrat: 62 g',
      'Lemak: 14 g',
    ],
  ),
  Food(
    name: 'Mie Ayam Bakso',
    price: 20000,
    category: 'Makanan Berat',
    description:
        'Mie kenyal dengan potongan ayam berbumbu, bakso sapi, '
        'sayuran, dan kuah kaldu gurih yang menggugah selera.',
    image:
        'https://images.unsplash.com/photo-1569718212165-3a8278d5f624?w=900',
    rating: 4.7,
    reviews: 96,
    calories: 380,
    portion: '1 mangkuk',
    preparationTime: '12 menit',
    spicyLevel: 'Tidak pedas',
    isHalal: true,
    ingredients: [
      'Mie',
      'Ayam',
      'Bakso sapi',
      'Sawi',
      'Kaldu ayam',
    ],
    nutrition: [
      'Protein: 20 g',
      'Karbohidrat: 48 g',
      'Lemak: 10 g',
    ],
  ),
  Food(
    name: 'Ayam Bakar Madu',
    price: 30000,
    category: 'Makanan Berat',
    description:
        'Ayam pilihan yang dibakar dengan olesan madu dan bumbu '
        'tradisional. Disajikan dengan nasi, lalapan, dan sambal.',
    image:
        'https://images.unsplash.com/photo-1532550907401-a500c9a57435?w=900',
    rating: 4.9,
    reviews: 154,
    calories: 520,
    portion: '1 porsi',
    preparationTime: '20 menit',
    spicyLevel: 'Sedang',
    isHalal: true,
    ingredients: [
      'Ayam',
      'Madu',
      'Bawang putih',
      'Kecap',
      'Rempah',
    ],
    nutrition: [
      'Protein: 32 g',
      'Karbohidrat: 45 g',
      'Lemak: 18 g',
    ],
  ),
  Food(
    name: 'Kentang Goreng',
    price: 15000,
    category: 'Camilan',
    description:
        'Kentang pilihan yang digoreng hingga renyah di luar dan '
        'lembut di dalam, disajikan dengan saus pilihan.',
    image:
        'https://images.unsplash.com/photo-1573080496219-bb080dd4f877?w=900',
    rating: 4.6,
    reviews: 75,
    calories: 310,
    portion: '1 porsi',
    preparationTime: '8 menit',
    spicyLevel: 'Tidak pedas',
    isHalal: true,
    ingredients: [
      'Kentang',
      'Minyak nabati',
      'Garam',
      'Saus',
    ],
    nutrition: [
      'Protein: 4 g',
      'Karbohidrat: 41 g',
      'Lemak: 15 g',
    ],
  ),
  Food(
    name: 'Es Kopi Susu',
    price: 18000,
    category: 'Minuman',
    description:
        'Perpaduan kopi pilihan, susu segar, dan gula aren dengan '
        'rasa creamy yang nikmat, disajikan dingin.',
    image:
        'https://images.unsplash.com/photo-1461023058943-07fcbe16d735?w=900',
    rating: 4.8,
    reviews: 112,
    calories: 180,
    portion: '250 ml',
    preparationTime: '5 menit',
    spicyLevel: 'Tidak pedas',
    isHalal: true,
    ingredients: [
      'Espresso',
      'Susu segar',
      'Gula aren',
      'Es batu',
    ],
    nutrition: [
      'Protein: 5 g',
      'Karbohidrat: 24 g',
      'Lemak: 6 g',
    ],
  ),
  Food(
    name: 'Jus Jeruk Segar',
    price: 12000,
    category: 'Minuman',
    description:
        'Jus jeruk segar dengan rasa manis dan sedikit asam. '
        'Disajikan dingin untuk menemani hidangan favoritmu.',
    image:
        'https://images.unsplash.com/photo-1613478223719-2ab802602423?w=900',
    rating: 4.5,
    reviews: 63,
    calories: 110,
    portion: '250 ml',
    preparationTime: '5 menit',
    spicyLevel: 'Tidak pedas',
    isHalal: true,
    ingredients: [
      'Jeruk segar',
      'Air',
      'Es batu',
    ],
    nutrition: [
      'Protein: 2 g',
      'Karbohidrat: 25 g',
      'Lemak: 0 g',
    ],
  ),
];


class DetailMakananPage extends StatefulWidget {
  final Food food;

  const DetailMakananPage({
    super.key,
    required this.food,
  });

  @override
  State<DetailMakananPage> createState() =>
      _DetailMakananPageState();
}

class _DetailMakananPageState extends State<DetailMakananPage> {
  int quantity = 1;

  @override
  Widget build(BuildContext context) {
    final food = widget.food;

    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 290,
            pinned: true,
            backgroundColor: const Color(0xFFE85D32),
            foregroundColor: Colors.white,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.network(
                food.image,
                fit: BoxFit.cover,
                errorBuilder: (_, __, ___) => Container(
                  color: const Color(0xFFFFE2D6),
                  child: const Icon(
                    Icons.restaurant,
                    size: 90,
                    color: Color(0xFFE85D32),
                  ),
                ),
              ),
            ),
          ),

          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(20, 22, 20, 130),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    food.category.toUpperCase(),
                    style: const TextStyle(
                      color: Color(0xFFE85D32),
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1.2,
                      fontSize: 12,
                    ),
                  ),
                  const SizedBox(height: 8),

                  Text(
                    food.name,
                    style: const TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 12),

                  Row(
                    children: [
                      const Icon(
                        Icons.star,
                        color: Colors.orange,
                        size: 21,
                      ),
                      const SizedBox(width: 5),
                      Text(
                        '${food.rating} / 5.0',
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(width: 6),
                      Text(
                        '(${food.reviews} ulasan)',
                        style: const TextStyle(color: Colors.grey),
                      ),
                    ],
                  ),
                  const SizedBox(height: 15),

                  Text(
                    rupiah(food.price),
                    style: const TextStyle(
                      color: Color(0xFFE85D32),
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  const SizedBox(height: 25),
                  const SectionTitle(title: 'Deskripsi Makanan'),
                  const SizedBox(height: 9),

                  Text(
                    food.description,
                    style: const TextStyle(
                      height: 1.7,
                      color: Colors.black87,
                      fontSize: 14,
                    ),
                  ),

                  const SizedBox(height: 25),
                  const SectionTitle(title: 'Informasi Makanan'),
                  const SizedBox(height: 12),

                  Row(
                    children: [
                      Expanded(
                        child: InfoTile(
                          icon: Icons.local_fire_department,
                          label: 'Kalori',
                          value: '${food.calories} kkal',
                        ),
                      ),
                      const SizedBox(width: 10),
                      Expanded(
                        child: InfoTile(
                          icon: Icons.restaurant,
                          label: 'Porsi',
                          value: food.portion,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),

                  Row(
                    children: [
                      Expanded(
                        child: InfoTile(
                          icon: Icons.schedule,
                          label: 'Persiapan',
                          value: food.preparationTime,
                        ),
                      ),
                      const SizedBox(width: 10),
                      Expanded(
                        child: InfoTile(
                          icon: Icons.local_fire_department_outlined,
                          label: 'Kepedasan',
                          value: food.spicyLevel,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),

                  Row(
                    children: [
                      Expanded(
                        child: InfoTile(
                          icon: Icons.verified,
                          label: 'Status halal',
                          value: food.isHalal
                              ? 'Halal*'
                              : 'Belum diketahui',
                        ),
                      ),
                      const SizedBox(width: 10),
                      Expanded(
                        child: InfoTile(
                          icon: Icons.reviews_outlined,
                          label: 'Ulasan',
                          value: '${food.reviews} ulasan',
                        ),
                      ),
                    ],
                  ),

                  const SizedBox(height: 25),
                  const SectionTitle(title: 'Bahan dan Komposisi'),
                  const SizedBox(height: 10),

                  ...food.ingredients.map(
                    (ingredient) => DetailBullet(text: ingredient),
                  ),

                  const SizedBox(height: 25),
                  const SectionTitle(title: 'Informasi Gizi'),
                  const SizedBox(height: 10),

                  ...food.nutrition.map(
                    (item) => DetailBullet(text: item),
                  ),

                  const SizedBox(height: 15),
                  const Text(
                    '*Data kalori, gizi, dan status halal merupakan '
                    'data contoh untuk demonstrasi aplikasi. '
                    'Verifikasi sebelum digunakan sebagai informasi resmi.',
                    style: TextStyle(
                      fontSize: 11,
                      color: Colors.grey,
                      height: 1.5,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),

      bottomNavigationBar: SafeArea(
        child: Container(
          padding: const EdgeInsets.fromLTRB(18, 14, 18, 14),
          decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.black.withValues(alpha: 0.06),
                blurRadius: 12,
                offset: const Offset(0, -3),
              ),
            ],
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Jumlah pesanan',
                    style: TextStyle(fontWeight: FontWeight.w600),
                  ),
                  Row(
                    children: [
                      QuantityButton(
                        icon: Icons.remove,
                        onTap: () {
                          if (quantity > 1) {
                            setState(() => quantity--);
                          }
                        },
                      ),
                      SizedBox(
                        width: 42,
                        child: Text(
                          '$quantity',
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      QuantityButton(
                        icon: Icons.add,
                        onTap: () {
                          setState(() => quantity++);
                        },
                      ),
                    ],
                  ),
                ],
              ),

              const SizedBox(height: 12),

              Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Total harga',
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 12,
                          ),
                        ),
                        const SizedBox(height: 3),
                        Text(
                          rupiah(food.price * quantity),
                          style: const TextStyle(
                            fontSize: 21,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFFE85D32),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: SizedBox(
                      height: 49,
                      child: FilledButton.icon(
                        style: FilledButton.styleFrom(
                          backgroundColor: const Color(0xFFE85D32),
                          foregroundColor: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(14),
                          ),
                        ),
                        onPressed: () {
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              content: Text(
                                '${food.name} x$quantity dipilih. '
                                'Total ${rupiah(food.price * quantity)}',
                              ),
                              behavior: SnackBarBehavior.floating,
                            ),
                          );
                        },
                        icon: const Icon(Icons.shopping_bag_outlined),
                        label: const Text('Pilih Menu'),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}


class SectionTitle extends StatelessWidget {
  final String title;

  const SectionTitle({
    super.key,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: const TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}

class InfoTile extends StatelessWidget {
  final IconData icon;
  final String label;
  final String value;

  const InfoTile({
    super.key,
    required this.icon,
    required this.label,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(13),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
        border: Border.all(color: const Color(0xFFF0E8E2)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(
            icon,
            color: const Color(0xFFE85D32),
            size: 23,
          ),
          const SizedBox(height: 10),
          Text(
            label,
            style: const TextStyle(
              color: Colors.grey,
              fontSize: 12,
            ),
          ),
          const SizedBox(height: 4),
          Text(
            value,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 13,
            ),
          ),
        ],
      ),
    );
  }
}

class DetailBullet extends StatelessWidget {
  final String text;

  const DetailBullet({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Icon(
            Icons.check_circle,
            color: Color(0xFFE85D32),
            size: 19,
          ),
          const SizedBox(width: 10),
          Expanded(
            child: Text(
              text,
              style: const TextStyle(
                fontSize: 14,
                height: 1.4,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class QuantityButton extends StatelessWidget {
  final IconData icon;
  final VoidCallback onTap;

  const QuantityButton({
    super.key,
    required this.icon,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      color: const Color(0xFFFFE2D6),
      borderRadius: BorderRadius.circular(10),
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(10),
        child: SizedBox(
          width: 36,
          height: 36,
          child: Icon(
            icon,
            color: const Color(0xFFE85D32),
            size: 20,
          ),
        ),
      ),
    );
  }
}

String rupiah(int value) {
  final number = value.toString();
  final result = StringBuffer();

  for (int i = 0; i < number.length; i++) {
    result.write(number[i]);
    final remaining = number.length - i - 1;

    if (remaining > 0 && remaining % 3 == 0) {
      result.write('.');
    }
  }

  return 'Rp$result';
}
