import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:responsive_web/drawer.dart';
import 'package:responsive_web/navbar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MyAppBar(),
      drawer: const MyDrawer(),
      body: ListView(
        physics: const AlwaysScrollableScrollPhysics(),
        children: [
          const SizedBox(height: 20),
          CarouselSliderWidget(),
          const SizedBox(height: 20),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              'Shop by Category',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          const SizedBox(height: 10),
          const CategoryListWidget(),
          const SizedBox(height: 20),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              'Featured Products',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          const SizedBox(height: 10),
          const FeaturedProductsWidget(),
          const SizedBox(height: 20),
          const PromotionalBannerWidget(),
          const SizedBox(height: 20),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              'New Arrivals',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          const SizedBox(height: 20),
          const FooterWidget(),
          const SizedBox(height: 20),
        ],
      ),
    );
  }
}

class CarouselSliderWidget extends StatelessWidget {
  CarouselSliderWidget({super.key});

  final List<String> imageUrls = [
    'https://picsum.photos/seed/picsum/600/300',
    'https://picsum.photos/seed/example/600/300',
    'https://picsum.photos/seed/lorem/600/300',
    'https://picsum.photos/seed/dolor/600/300',
    'https://picsum.photos/seed/ipsum/600/300',
  ];

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      options: CarouselOptions(
        height: 400,
        aspectRatio: 16 / 9,
        viewportFraction: 1,
        initialPage: 0,
        enableInfiniteScroll: true,
        reverse: false,
        autoPlay: true,
        autoPlayInterval: const Duration(seconds: 3),
        autoPlayAnimationDuration: const Duration(milliseconds: 800),
        autoPlayCurve: Curves.fastOutSlowIn,
        enlargeCenterPage: true,
        scrollDirection: Axis.horizontal,
      ),
      items: imageUrls.map((imageUrl) {
        return Builder(
          builder: (BuildContext context) {
            return Container(
              width: MediaQuery.of(context).size.width,
              margin: const EdgeInsets.symmetric(horizontal: 5.0),
              decoration: BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Image.network(
                imageUrl,
                fit: BoxFit.cover,
              ),
            );
          },
        );
      }).toList(),
    );
  }
}

class CategoryListWidget extends StatelessWidget {
  const CategoryListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120,
      child: ListView(
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.symmetric(horizontal: 10),
        children: [
          _buildCategoryItem('Electronics', Icons.phone),
          _buildCategoryItem('Clothing', Icons.accessibility),
          _buildCategoryItem('Books', Icons.menu_book),
          _buildCategoryItem('Toys', Icons.toys),
          _buildCategoryItem('Sports', Icons.sports_soccer),
          _buildCategoryItem('Beauty', Icons.face),
          _buildCategoryItem('Toys', Icons.toys),
          _buildCategoryItem('Sports', Icons.sports_soccer),
          _buildCategoryItem('Beauty', Icons.face),
          _buildCategoryItem('Toys', Icons.toys),
          _buildCategoryItem('Sports', Icons.sports_soccer),
          _buildCategoryItem('Beauty', Icons.face),
          _buildCategoryItem('Toys', Icons.toys),
          _buildCategoryItem('Sports', Icons.sports_soccer),
          _buildCategoryItem('Beauty', Icons.face),
          _buildCategoryItem('Toys', Icons.toys),
          _buildCategoryItem('Sports', Icons.sports_soccer),
          _buildCategoryItem('Beauty', Icons.face),
        ],
      ),
    );
  }

  Widget _buildCategoryItem(String title, IconData icon) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleAvatar(
            backgroundColor: Colors.blue,
            radius: 30,
            child: Icon(
              icon,
              size: 30,
              color: Colors.white,
            ),
          ),
          const SizedBox(height: 5),
          Text(
            title,
            style: const TextStyle(fontSize: 12),
          ),
        ],
      ),
    );
  }
}

class FeaturedProductsWidget extends StatelessWidget {
  const FeaturedProductsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: ListView(
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.symmetric(horizontal: 10),
        children: [
          _buildFeaturedProductItem(
            'Product 1',
            'https://picsum.photos/seed/product1/200/300',
            50.0,
          ),
          _buildFeaturedProductItem(
            'Product 2',
            'https://picsum.photos/seed/product2/200/300',
            50.0,
          ),
          _buildFeaturedProductItem(
            'Product 3',
            'https://picsum.photos/seed/product3/200/300',
            50.0,
          ),
          _buildFeaturedProductItem(
            'Product 4',
            'https://picsum.photos/seed/product4/200/300',
            50.0,
          ),
          _buildFeaturedProductItem(
            'Product 5',
            'https://picsum.photos/seed/product5/200/300',
            50.0,
          ),
          _buildFeaturedProductItem(
            'Product 3',
            'https://picsum.photos/seed/product3/200/300',
            50.0,
          ),
          _buildFeaturedProductItem(
            'Product 4',
            'https://picsum.photos/seed/product4/200/300',
            50.0,
          ),
          _buildFeaturedProductItem(
            'Product 5',
            'https://picsum.photos/seed/product5/200/300',
            50.0,
          ),
          _buildFeaturedProductItem(
            'Product 3',
            'https://picsum.photos/seed/product3/200/300',
            50.0,
          ),
          _buildFeaturedProductItem(
            'Product 4',
            'https://picsum.photos/seed/product4/200/300',
            50.0,
          ),
          _buildFeaturedProductItem(
            'Product 5',
            'https://picsum.photos/seed/product5/200/300',
            50.0,
          ),
          _buildFeaturedProductItem(
            'Product 3',
            'https://picsum.photos/seed/product3/200/300',
            50.0,
          ),
          _buildFeaturedProductItem(
            'Product 4',
            'https://picsum.photos/seed/product4/200/300',
            50.0,
          ),
          _buildFeaturedProductItem(
            'Product 5',
            'https://picsum.photos/seed/product5/200/300',
            50.0,
          ),
        ],
      ),
    );
  }

  Widget _buildFeaturedProductItem(
      String title, String imageUrl, double price) {
    return ConstrainedBox(
      constraints: const BoxConstraints(maxWidth: 200),
      child: Container(
        // width: 200,
        margin: const EdgeInsets.symmetric(horizontal: 5),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.grey[200],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.network(
                  imageUrl,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    '\$$price',
                    style: const TextStyle(
                      fontSize: 14,
                      color: Colors.blue,
                    ),
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

class PromotionalBannerWidget extends StatelessWidget {
  const PromotionalBannerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      margin: const EdgeInsets.symmetric(horizontal: 20),
      decoration: BoxDecoration(
        color: Colors.blue,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            'Hurry! Limited Time Offer',
            style: TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(width: 10),
          ElevatedButton(
            onPressed: () {
              // Implement action when button is pressed
            },
            child: const Text('Shop Now'),
          ),
        ],
      ),
    );
  }
}

class FooterWidget extends StatelessWidget {
  const FooterWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey[300],
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 40),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Company Name',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
              SizedBox(height: 10),
              Text(
                'Address: Your Company Address',
                style: TextStyle(fontSize: 12),
              ),
              Text(
                'Phone: +1234567890',
                style: TextStyle(fontSize: 12),
              ),
              Text(
                'Email: info@company.com',
                style: TextStyle(fontSize: 12),
              ),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Quick Links',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
              const SizedBox(height: 10),
              TextButton(
                onPressed: () {},
                child: const Text('About Us'),
              ),
              TextButton(
                onPressed: () {},
                child: const Text('Contact Us'),
              ),
              TextButton(
                onPressed: () {},
                child: const Text('Privacy Policy'),
              ),
              TextButton(
                onPressed: () {},
                child: const Text('Terms of Service'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
