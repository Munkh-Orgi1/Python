import 'package:flutter/material.dart';
import '../data/app_data.dart';
import '../screens/placeholder_screen.dart';

// -----------------------------------------------------------------------------
// 1. Header Section (Нүүр хуудасны дээд хэсэг)
// -----------------------------------------------------------------------------

class HeaderSection extends StatelessWidget {
  final Map<String, dynamic> themeData;

  const HeaderSection({super.key, required this.themeData});

  @override
  Widget build(BuildContext context) {
    final Color primaryTextColor = themeData['primaryTextColor'];
    final Color secondaryTextColor = themeData['secondaryTextColor'];

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                "Сайн байна уу, Бат-Эрдэнэ",
                style: TextStyle(
                  color: secondaryTextColor,
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                ),
              ),
              Text(
                "Таны MonPay",
                style: TextStyle(
                  color: primaryTextColor,
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ],
          ),
          IconButton(
            icon: Icon(Icons.notifications_none, color: primaryTextColor, size: 28),
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (_) => const PlaceholderScreen(title: "Мэдэгдэл")));
            },
          ),
        ],
      ),
    );
  }
}

// -----------------------------------------------------------------------------
// 2. Theme Switch (Гэрэл/Харанхуй горимын шилжүүлэгч)
// -----------------------------------------------------------------------------

class ThemeSwitch extends StatelessWidget {
  final bool isDark;
  final VoidCallback toggleTheme;

  const ThemeSwitch({super.key, required this.isDark, required this.toggleTheme});

  @override
  Widget build(BuildContext context) {
    final Color bgColor = isDark ? AppColors.darkCard : AppColors.lightCard;
    final Color activeColor = isDark ? Colors.white : AppColors.primaryBlue;
    final Color inactiveColor = isDark ? Colors.white54 : Colors.grey.shade500;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Container(
        padding: const EdgeInsets.all(4),
        decoration: BoxDecoration(
          color: bgColor,
          borderRadius: BorderRadius.circular(30),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            // Light Mode Button
            GestureDetector(
              onTap: isDark ? toggleTheme : null,
              child: AnimatedContainer(
                duration: const Duration(milliseconds: 200),
                padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                decoration: BoxDecoration(
                  color: isDark ? Colors.transparent : activeColor,
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Row(
                  children: [
                    Icon(Icons.wb_sunny, color: isDark ? inactiveColor : Colors.white, size: 20),
                    const SizedBox(width: 8),
                    Text(
                      "Гэрэл",
                      style: TextStyle(
                        color: isDark ? inactiveColor : Colors.white,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(width: 8),
            // Dark Mode Button
            GestureDetector(
              onTap: isDark ? null : toggleTheme,
              child: AnimatedContainer(
                duration: const Duration(milliseconds: 200),
                padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                decoration: BoxDecoration(
                  color: isDark ? activeColor : Colors.transparent,
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Row(
                  children: [
                    Icon(Icons.nightlight_round, color: isDark ? Colors.white : inactiveColor, size: 20),
                    const SizedBox(width: 8),
                    Text(
                      "Харанхуй",
                      style: TextStyle(
                        color: isDark ? Colors.white : inactiveColor,
                        fontWeight: FontWeight.w600,
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

// -----------------------------------------------------------------------------
// 3. QR FAB (QR товч)
// -----------------------------------------------------------------------------

class QrFab extends StatelessWidget {
  const QrFab({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 72,
      height: 72,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        gradient: const LinearGradient(colors: [Color(0xFF5B5CFF), Color(0xFF783CFF)]),
        boxShadow: [BoxShadow(color: const Color(0xFF5B5CFF).withOpacity(0.6), blurRadius: 20, offset: const Offset(0, 8))],
      ),
      child: const Center(child: Icon(Icons.qr_code_scanner, color: Colors.white, size: 32)),
    );
  }
}

// -----------------------------------------------------------------------------
// 4. Custom Bottom Nav Bar (Доод навигацийн хэсэг)
// -----------------------------------------------------------------------------

class CustomBottomNavBar extends StatelessWidget {
  final Color navBarColor;
  final Color navSelectedColor;
  final Color navUnselectedColor;
  final VoidCallback onProfileTap;

  const CustomBottomNavBar({
    super.key,
    required this.navBarColor,
    required this.navSelectedColor,
    required this.navUnselectedColor,
    required this.onProfileTap,
  });

  Widget _bottomNavItem({required IconData icon, required String label, required bool selected, required VoidCallback onTap}) {
    final color = selected ? navSelectedColor : navUnselectedColor;
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(8),
      child: SizedBox(
        width: 80,
        child: Column(mainAxisSize: MainAxisSize.min, children: [
          Icon(icon, color: color),
          const SizedBox(height: 2),
          Text(label, style: TextStyle(color: color, fontSize: 12)),
        ]),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      color: navBarColor,
      shape: const CircularNotchedRectangle(),
      notchMargin: 6,
      child: SizedBox(
        height: 60,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            _bottomNavItem(icon: Icons.home_filled, label: "Нүүр", selected: true, onTap: () {}),
            const SizedBox(width: 40),
            _bottomNavItem(
              icon: Icons.person_outline,
              label: "Профайл",
              selected: false,
              onTap: onProfileTap,
            ),
          ],
        ),
      ),
    );
  }
}

// -----------------------------------------------------------------------------
// 5. Help Pill (Тусламжийн товчлуурын загвар)
// -----------------------------------------------------------------------------

class HelpPill extends StatelessWidget {
  final String? text1;
  final String? text2;
  final IconData icon;
  final Color? iconColor;
  final Gradient? gradient;
  final VoidCallback onTap;

  // Single line constructor
  const HelpPill({
    super.key,
    required String text,
    required this.icon,
    required Color color,
    required this.onTap,
  }) : text1 = text, text2 = null, iconColor = color, gradient = null;

  // Two line constructor
  const HelpPill.twoLine({
    super.key,
    required this.text1,
    required this.text2,
    required this.icon,
    this.iconColor,
    this.gradient,
    required this.onTap,
  }) : assert(iconColor != null || gradient != null);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 10),
        decoration: BoxDecoration(
          color: const Color(0xFF171717), // Хар саарал дэвсгэр
          borderRadius: BorderRadius.circular(32),
          boxShadow: const [BoxShadow(color: Color(0x19000000), blurRadius: 8, offset: Offset(0, 3))],
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            // Icon Container
            Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: gradient == null ? iconColor : null,
                gradient: gradient,
              ),
              child: Center(
                child: Icon(icon, size: 20, color: Colors.white),
              ),
            ),
            const SizedBox(width: 12),

            // Text
            if (text2 == null)
              Text(
                text1!,
                style: const TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.w600),
              )
            else
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    text1!,
                    style: const TextStyle(color: Colors.white, fontSize: 14, fontWeight: FontWeight.w700),
                  ),
                  Text(
                    text2!,
                    style: const TextStyle(color: Colors.white, fontSize: 14, fontWeight: FontWeight.w700),
                  ),
                ],
              ),
            const SizedBox(width: 4),
          ],
        ),
      ),
    );
  }
}

// -----------------------------------------------------------------------------
// 6. Help Detail Page Template (Тусламжийн дэлгэрэнгүй хуудасны загвар)
// -----------------------------------------------------------------------------

class HelpDetailPageTemplate extends StatelessWidget {
  final String title;
  final String date;
  final List<Widget> body;

  const HelpDetailPageTemplate({
    super.key,
    required this.title,
    required this.date,
    required this.body,
  });

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.fromLTRB(16, 12, 16, 40),
      children: [
        // 1) Гарчиг
        Text(
          title,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 22,
            fontWeight: FontWeight.w700,
          ),
        ),
        const SizedBox(height: 8),

        // 2) Огноо
        Text(
          date,
          style: const TextStyle(color: Color(0xFFA3A3A3), fontSize: 14),
        ),
        const SizedBox(height: 16),

        // 3) Divider
        const Divider(color: Color(0xFF2A2A2D), thickness: 1),
        const SizedBox(height: 16),

        // 4) Body Content
        ...body,
      ],
    );
  }

  // Зураг болон Placeholder-ийг үүсгэх статик функц
  static Widget buildImagePlaceholder(
    String assetPath, {
    Color placeholderColor = const Color(0xFF1F1F22),
    String? placeholderText,
    double height = 200,
  }) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(12),
      child: Image.asset(
        assetPath,
        fit: BoxFit.cover,
        errorBuilder: (_, __, ___) => Container(
          height: height,
          color: placeholderColor,
          alignment: Alignment.center,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(Icons.image_not_supported_outlined, color: Colors.white54, size: 40),
              const SizedBox(height: 8),
              Text(
                placeholderText ?? assetPath,
                style: const TextStyle(color: Colors.white54, fontSize: 12),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
