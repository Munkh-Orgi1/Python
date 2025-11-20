import 'package:flutter/material.dart';
import '../data/app_data.dart';
import 'placeholder_screen.dart';
import '../widgets/home_content.dart';
import '../widgets/common_widgets.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool _isDark = false;
  int _currentPage = 0;
  late PageController _pageController;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: _currentPage);
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  void _toggleTheme() {
    setState(() {
      _isDark = !_isDark;
    });
  }

  void _onPageChanged(int index) {
    setState(() {
      _currentPage = index;
    });
  }

  void _goToProfile() {
    Navigator.push(context, MaterialPageRoute(builder: (_) => const PlaceholderScreen(title: "Профайл")));
  }

  Map<String, dynamic> get _themeData {
    return {
      'isDark': _isDark,
      'bgColor': _isDark ? AppColors.darkBg : AppColors.lightBg,
      'cardColor': _isDark ? AppColors.darkCard : AppColors.lightCard,
      'primaryTextColor': _isDark ? Colors.white : Colors.black,
      'secondaryTextColor': _isDark ? Colors.white70 : Colors.grey.shade700,
      'navBarColor': _isDark ? AppColors.darkBg : AppColors.lightBg,
      'navSelectedColor': _isDark ? Colors.white : AppColors.primaryBlue,
      'navUnselectedColor': _isDark ? Colors.white54 : Colors.grey.shade500,
    };
  }

  @override
  Widget build(BuildContext context) {
    final theme = _themeData;

    return Scaffold(
      backgroundColor: theme['bgColor'],
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: theme['bgColor'],
            expandedHeight: 120,
            pinned: true,
            flexibleSpace: FlexibleSpaceBar(
              titlePadding: EdgeInsets.zero,
              centerTitle: true,
              title: HeaderSection(themeData: theme),
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              [
                // 1. Theme Switch
                ThemeSwitch(isDark: _isDark, toggleTheme: _toggleTheme),
                const SizedBox(height: 16),

                // 2. Banner Section
                BannerSection(
                  pageController: _pageController,
                  currentPage: _currentPage,
                  onPageChanged: _onPageChanged,
                  isDark: _isDark,
                ),
                const SizedBox(height: 24),

                // 3. Promotions Row
                PromotionsRow(themeData: theme),
                const SizedBox(height: 24),

                // 4. Help Buttons Row
                HelpButtonsRow(themeData: theme),
                const SizedBox(height: 24),

                // 5. Placeholder for other content
                Container(
                  height: 300,
                  color: theme['bgColor'],
                  alignment: Alignment.center,
                  child: Text(
                    "Бусад контентууд (Placeholder)",
                    style: TextStyle(color: theme['secondaryTextColor']),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: const QrFab(),
      bottomNavigationBar: CustomBottomNavBar(
        navBarColor: theme['navBarColor'],
        navSelectedColor: theme['navSelectedColor'],
        navUnselectedColor: theme['navUnselectedColor'],
        onProfileTap: _goToProfile,
      ),
    );
  }
}
