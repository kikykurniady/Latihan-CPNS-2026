import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:latihan_cpns/core/constants/app_colors.dart';
import 'package:latihan_cpns/core/constants/dummy_data.dart';
import 'package:latihan_cpns/ui/components/banner_ad_widget.dart';
import 'package:latihan_cpns/ui/components/category_card.dart';
import 'package:latihan_cpns/ui/components/daily_progress_card.dart';
import 'package:latihan_cpns/ui/components/streak_banner.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Latihan CPNS'),
        backgroundColor: AppColors.primary,
        actions: [
          IconButton(
            icon: const Icon(Icons.local_fire_department),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.info_outline),
            onPressed: () {},
          ),
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const StreakBanner(),
                const SizedBox(height: 16),
                const DailyProgressCard(),
                const SizedBox(height: 24),
                Text(
                  'Pilih Kategori Latihan',
                  style: Theme.of(context).textTheme.titleLarge?.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                ),
                const SizedBox(height: 16),
                Row(
                  children: dummyCategories
                      .map((category) => CategoryCard(category: category))
                      .toList(),
                ),
                const SizedBox(height: 24),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppColors.accent,
                    minimumSize: const Size(double.infinity, 50),
                  ),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.shuffle),
                      SizedBox(width: 8),
                      Text('Mulai Latihan Acak (semua kategori)'),
                    ],
                  ),
                ),
                const SizedBox(height: 16),
                const BannerAdWidget(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
