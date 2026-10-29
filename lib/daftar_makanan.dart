import 'package:flutter/material.dart';
import 'detail_makanan.dart';

const Color primaryColor = Color(0xFFE85D32);
const Color backgroundColor = Color(0xFFFFF9F5);

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

class DaftarMakananPage extends StatefulWidget {
  const DaftarMakananPage({super.key});

  @override
  State<DaftarMakananPage> createState() =>
      _DaftarMakananPageState();
}

class _DaftarMakananPageState extends State<DaftarMakananPage> {
  final TextEditingController searchController =
      TextEditingController();

  String selectedCategory = 'Semua';
  String searchQuery = '';

  final List<String> categories = [
    'Semua',
    'Makanan Berat',
    'Camilan',
    'Minuman',
  ];

  List<Food> get filteredFoods {
    return foods.where((food) {
      final matchesCategory = selectedCategory == 'Semua' ||
          food.category == selectedCategory;

      final matchesSearch = food.name
          .toLowerCase()
          .contains(searchQuery.toLowerCase());

      return matchesCategory && matchesSearch;
    }).toList();
  }

  @override
  void dispose() {
    searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final items = filteredFoods;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: backgroundColor,
        title: const Row(
          children: [
            Icon(
              Icons.restaurant_menu,
              color: primaryColor,
              size: 30,
            ),
            SizedBox(width: 10),
            Text(
              'Foodie',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 24,
              ),
            ),
          ],
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 18),
            child: CircleAvatar(
              backgroundColor: Color(0xFFFFE2D6),
              child: Icon(Icons.person, color: primaryColor),
            ),
          ),
        ],
      ),

      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Banner aplikasi
            Container(
              width: double.infinity,
              margin: const EdgeInsets.fromLTRB(16, 12, 16, 18),
              padding: const EdgeInsets.all(22),
              decoration: BoxDecoration(
                gradient: const LinearGradient(
                  colors: [
                    Color(0xFFE85D32),
                    Color(0xFFFF956B),
                  ],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
                borderRadius: BorderRadius.circular(24),
              ),
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Lapar? Yuk, Makan!',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    'Temukan makanan favoritmu hari ini.',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                    ),
                  ),
                  SizedBox(height: 12),
                  Row(
                    children: [
                      Icon(
                        Icons.local_fire_department,
                        color: Colors.white,
                        size: 20,
                      ),
                      SizedBox(width: 5),
                      Text(
                        'Lezat • Segar • Terjangkau',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: TextField(
                controller: searchController,
                onChanged: (value) {
                  setState(() => searchQuery = value);
                },
                decoration: InputDecoration(
                  hintText: 'Cari makanan favorit...',
                  prefixIcon: const Icon(Icons.search),
                  suffixIcon: searchQuery.isNotEmpty
                      ? IconButton(
                          onPressed: () {
                            searchController.clear();
                            setState(() => searchQuery = '');
                          },
                          icon: const Icon(Icons.close),
                        )
                      : null,
                  filled: true,
                  fillColor: Colors.white,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(16),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
            ),

            const Padding(
              padding: EdgeInsets.fromLTRB(16, 22, 16, 12),
              child: Text(
                'Kategori',
                style: TextStyle(
                  fontSize: 19,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),

            SizedBox(
              height: 42,
              child: ListView.separated(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                scrollDirection: Axis.horizontal,
                itemCount: categories.length,
                separatorBuilder: (_, __) =>
                    const SizedBox(width: 8),
                itemBuilder: (context, index) {
                  final category = categories[index];
                  final selected = category == selectedCategory;

                  return ChoiceChip(
                    label: Text(category),
                    selected: selected,
                    selectedColor: primaryColor,
                    backgroundColor: Colors.white,
                    labelStyle: TextStyle(
                      color: selected ? Colors.white : Colors.black87,
                      fontWeight: FontWeight.w600,
                    ),
                    onSelected: (_) {
                      setState(() => selectedCategory = category);
                    },
                  );
                },
              ),
            ),

            Padding(
              padding: const EdgeInsets.fromLTRB(16, 22, 16, 12),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Menu Pilihan',
                    style: TextStyle(
                      fontSize: 19,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    '${items.length} menu',
                    style: const TextStyle(color: Colors.grey),
                  ),
                ],
              ),
            ),

            Expanded(
              child: items.isEmpty
                  ? const Center(
                      child: Text('Makanan tidak ditemukan.'),
                    )
                  : GridView.builder(
                      padding: const EdgeInsets.fromLTRB(
                        16, 0, 16, 20,
                      ),
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        crossAxisSpacing: 12,
                        mainAxisSpacing: 12,
                        childAspectRatio: 0.62,
                      ),
                      itemCount: items.length,
                      itemBuilder: (context, index) {
                        final food = items[index];

                        return FoodCard(
                          food: food,
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (_) => DetailMakananPage(
                                  food: food,
                                ),
                              ),
                            );
                          },
                        );
                      },
                    ),
            ),
          ],
        ),
      ),
    );
  }
}

class FoodCard extends StatelessWidget {
  final Food food;
  final VoidCallback onTap;

  const FoodCard({
    super.key,
    required this.food,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      borderRadius: BorderRadius.circular(20),
      clipBehavior: Clip.antiAlias,
      child: InkWell(
        onTap: onTap,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              flex: 6,
              child: Stack(
                fit: StackFit.expand,
                children: [
                  Image.network(
                    food.image,
                    fit: BoxFit.cover,
                    errorBuilder: (_, __, ___) => Container(
                      color: const Color(0xFFFFE2D6),
                      child: const Icon(
                        Icons.restaurant,
                        size: 55,
                        color: primaryColor,
                      ),
                    ),
                  ),
                  Positioned(
                    top: 10,
                    left: 10,
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 9,
                        vertical: 5,
                      ),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Text(
                        food.category,
                        style: const TextStyle(
                          fontSize: 10,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 5,
              child: Padding(
                padding: const EdgeInsets.all(11),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      food.name,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: const TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 5),
                    Row(
                      children: [
                        const Icon(
                          Icons.star,
                          size: 15,
                          color: Colors.orange,
                        ),
                        const SizedBox(width: 4),
                        Text(
                          '${food.rating} (${food.reviews})',
                          style: const TextStyle(fontSize: 11),
                        ),
                      ],
                    ),
                    const Spacer(),
                    Text(
                      rupiah(food.price),
                      style: const TextStyle(
                        color: primaryColor,
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 7),
                    Container(
                      width: double.infinity,
                      padding: const EdgeInsets.symmetric(vertical: 8),
                      decoration: BoxDecoration(
                        color: primaryColor,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: const Text(
                        'Lihat Detail →',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 12,
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
    );
  }
}
