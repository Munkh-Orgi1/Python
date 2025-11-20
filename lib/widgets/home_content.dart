import 'package:flutter/material.dart';
import 'package:monpay_clone/data/app_data.dart';
import 'package:monpay_clone/widgets/common_widgets.dart';

// -----------------------------------------------------------------------------
// 1. Banner Section (Нүүр хуудасны баннер хэсэг)
// -----------------------------------------------------------------------------

class BannerSection extends StatelessWidget {
  final PageController pageController;
  final int currentPage;
  final Function(int) onPageChanged;
  final bool isDark;

  const BannerSection({
    super.key,
    required this.pageController,
    required this.currentPage,
    required this.onPageChanged,
    required this.isDark,
  });

  Widget _buildBanner(BuildContext context, Map<String, dynamic> item) {
    return GestureDetector(
      onTap: () => Navigator.push(context, MaterialPageRoute(builder: (_) => item['page'] as Widget)),
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 16),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(24),
          color: item['color'] as Color,
          image: DecorationImage(
            image: (item['isNetwork'] == true ? NetworkImage(item['image'] as String) : AssetImage(item['image'] as String)) as ImageProvider,
            fit: BoxFit.cover,
            onError: (exception, stackTrace) {
              return Container(
                color: item['color'] as Color,
                alignment: Alignment.center,
                child: Text(
                  item['isNetwork'] == true ? 'Network Image Error' : item['image'] as String,
                  style: const TextStyle(color: Colors.white70),
                ),
              );
            },
          ),
        ),
      ),
    );
  }

  Widget _buildDot(int index, int currentPage, bool isDark) {
    final bool isSelected = index == currentPage;
    final Color activeColor = isDark ? Colors.white : AppColors.primaryBlue;
    final Color inactiveColor = isDark ? Colors.white38 : Colors.grey.shade300;

    return AnimatedContainer(
      duration: const Duration(milliseconds: 150),
      margin: const EdgeInsets.symmetric(horizontal: 4),
      height: 8,
      width: isSelected ? 24 : 8,
      decoration: BoxDecoration(
        color: isSelected ? activeColor : inactiveColor,
        borderRadius: BorderRadius.circular(4),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final int bannerCount = BannerData.items.length;

    return SizedBox(
      height: 220,
      child: Column(children: [
        Expanded(
          child: PageView(
            controller: pageController,
            onPageChanged: onPageChanged,
            children: BannerData.items.map((item) => _buildBanner(context, item)).toList(),
          ),
        ),
        const SizedBox(height: 12),
        // Indicator Dots
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: List.generate(bannerCount, (index) => _buildDot(index, currentPage, isDark)),
        ),
      ]),
    );
  }
}

// -----------------------------------------------------------------------------
// 2. Promotions Row (Урамшууллын хэсэг)
// -----------------------------------------------------------------------------

class PromotionsRow extends StatelessWidget {
  final Map<String, dynamic> themeData;

  const PromotionsRow({super.key, required this.themeData});

  Widget _buildPromoItem(BuildContext context, Map<String, dynamic> item) {
    final bool isDark = themeData['isDark'];
    final Color primaryTextColor = themeData['primaryTextColor'];
    final Color cardColor = themeData['cardColor'];

    return GestureDetector(
      onTap: () => Navigator.push(context, MaterialPageRoute(builder: (_) => item['page'] as Widget)),
      child: Container(
        width: 80,
        decoration: BoxDecoration(
          color: cardColor,
          borderRadius: BorderRadius.circular(16),
          boxShadow: [
            if (!isDark)
              const BoxShadow(color: Color(0x14000000), blurRadius: 8, offset: Offset(0, 4))
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                color: item['color'] as Color,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Icon(item['icon'] as IconData, color: Colors.white, size: 20),
            ),
            const SizedBox(height: 8),
            Text(
              item['title'] as String,
              textAlign: TextAlign.center,
              style: TextStyle(color: primaryTextColor, fontSize: 12, fontWeight: FontWeight.w600),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: ListView(
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.symmetric(horizontal: 16),
        children: PromotionsData.items.map((item) => Padding(
          padding: const EdgeInsets.only(right: 12),
          child: _buildPromoItem(context, item),
        )).toList(),
      ),
    );
  }
}

// -----------------------------------------------------------------------------
// 3. Help Buttons Row (Тусламжийн товчлуурууд)
// -----------------------------------------------------------------------------

class HelpButtonsRow extends StatelessWidget {
  final Map<String, dynamic> themeData;

  const HelpButtonsRow({super.key, required this.themeData});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 66,
      child: ListView(
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.symmetric(horizontal: 12),
        children: HelpButtonsData.items.map((item) {
          Widget helpPill;
          if (item.containsKey("text2")) {
            helpPill = HelpPill.twoLine(
              text1: item['text1'] as String,
              text2: item['text2'] as String,
              icon: item['icon'] as IconData,
              iconColor: item['color'] as Color?,
              gradient: item['gradient'] as Gradient?,
              onTap: () => Navigator.push(context, MaterialPageRoute(builder: (_) => item['page'] as Widget)),
            );
          } else {
            helpPill = HelpPill(
              text: item['text'] as String,
              icon: item['icon'] as IconData,
              color: item['color'] as Color,
              onTap: () => Navigator.push(context, MaterialPageRoute(builder: (_) => item['page'] as Widget)),
            );
          }
          return Padding(
            padding: const EdgeInsets.only(right: 10),
            child: helpPill,
          );
        }).toList(),
      ),
    );
  }
}
