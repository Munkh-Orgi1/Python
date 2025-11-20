import 'package:flutter/material.dart';
import 'package:monpay_clone/screens/help_detail_screen.dart';
import 'package:monpay_clone/screens/mobilife_screen.dart';
import 'package:monpay_clone/screens/placeholder_screen.dart';

// -----------------------------------------------------------------------------
// 1. Theme Data (Colors)
// -----------------------------------------------------------------------------

class AppColors {
  static const Color darkBg = Color(0xFF1F1F22);
  static const Color darkCard = Color(0xFF2A2A2D);
  static const Color lightBg = Colors.white;
  static const Color lightCard = Color(0xFFF5F6F8);
  static const Color primaryBlue = Color(0xFF3840D9);
  static const Color accentPurple = Color(0xFF5D5FEF);
  static const Color accentGreen = Color(0xFF27C46A);
  static const Color accentOrange = Color(0xFFFF9F1C);
  static const Color accentRed = Color(0xFFFB6A5B);
}

// -----------------------------------------------------------------------------
// 2. Promotions Data (Нүүр хуудасны жижиг урамшууллын эгнээ)
// -----------------------------------------------------------------------------

class PromotionsData {
  static final List<Map<String, dynamic>> items = [
    {
      "title": "MonPay Kids",
      "icon": Icons.child_care,
      "color": AppColors.accentPurple,
      "page": const HelpDetailScreen(title: "MonPay Kids - үйлчилгээний заавар", type: "MonPayKids"),
    },
    {
      "title": "Ухаалаг Дата",
      "icon": Icons.wifi,
      "color": const Color(0xFF2C2E3E),
      "page": const HelpDetailScreen(title: "Хэрэгтэйгээ сонго... “Ухаалаг дата багц”", type: "SmartData"),
    },
    {
      "title": "Виртуал Карт",
      "icon": Icons.laptop_mac,
      "color": AppColors.primaryBlue,
      "page": const HelpDetailScreen(title: "Виртуал Карттай, Macbook-тэй", type: "VirtualCardPromo"),
    },
    {
      "title": "MaxMall",
      "icon": Icons.card_giftcard,
      "color": AppColors.accentRed,
      "page": const HelpDetailScreen(title: "MAXMALL GIVEAWAY эхэллээ!", type: "MaxMallGiveaway"),
    },
    {
      "title": "Мобиком 10%",
      "icon": Icons.percent,
      "color": AppColors.accentGreen,
      "page": const HelpDetailScreen(title: "MonPay апп-р мобикомын төлбөрөө төлөөд 10%...", type: "Mobicom10Percent"),
    },
  ];
}

// -----------------------------------------------------------------------------
// 3. Help Buttons Data (Тусламжийн товчлуурын эгнээ)
// -----------------------------------------------------------------------------

class HelpButtonsData {
  static final List<Map<String, dynamic>> items = [
    {
      "text": "Дансаа хэрхэн цэнэглэх вэ?",
      "icon": Icons.account_balance_wallet_rounded,
      "color": AppColors.accentGreen,
      "page": const HelpDetailScreen(title: "Monpray данс цэнэглэх", type: "Recharge"),
    },
    {
      "text": "Зээл хэрхэн авах вэ?",
      "icon": Icons.account_balance_wallet_outlined,
      "color": const Color(0xFF7B61FF),
      "page": const HelpDetailScreen(title: "Богино хугацаат зээл хэрхэн авах вэ?", type: "Loan"),
    },
    {
      "text": "Урт хугацаат зээл хэрхэн авах вэ?",
      "icon": Icons.account_balance_wallet_outlined,
      "color": AppColors.primaryBlue,
      "page": const HelpDetailScreen(title: "Урт хугацаат зээл хэрхэн авах вэ?", type: "LongLoan"),
    },
    {
      "text": "MonPay Awww",
      "icon": Icons.shopping_bag_outlined,
      "color": AppColors.accentOrange,
      "page": const HelpDetailScreen(title: "MonPay Awww гэж юу вэ?", type: "Awww"),
    },
    {
      "text1": "Виртуал карт",
      "text2": "хэрхэн захиалах...",
      "icon": Icons.credit_card,
      "gradient": const LinearGradient(
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
        colors: [Color(0xFF64B5F6), Color(0xFF1976D2)],
      ),
      "page": const HelpDetailScreen(title: "Олон улсын худалдан авалтаа MONPAY ВИРТУАЛ КАРТААР", type: "VirtualCard"),
    },
    {
      "text1": "MonPay Plus",
      "text2": "хэрхэн авах вэ?",
      "icon": Icons.add_circle_outline,
      "gradient": const LinearGradient(
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
        colors: [AppColors.accentRed, Color(0xFFE53935)],
      ),
      "page": const HelpDetailScreen(title: "Monpay plus хэрхэн авах вэ?", type: "MonPayPlus"),
    },
    {
      "text1": "Худалдан",
      "text2": "авалтын зээл хэ...",
      "icon": Icons.credit_card_rounded,
      "color": const Color(0xFF29B6F6),
      "page": const HelpDetailScreen(title: "Худалдан авалтын зээл хэрхэн авах вэ?", type: "PurchaseLoan"),
    },
  ];
}

// -----------------------------------------------------------------------------
// 4. Banner Data (Нүүр хуудасны баннер)
// -----------------------------------------------------------------------------

class BannerData {
  static final List<Map<String, dynamic>> items = [
    {
      "image": 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRmsad61DNexxwFoy_QkYJlhIEDompM8SbEog&s',
      "isNetwork": true,
      "page": const MobilifeScreen(),
      "color": Colors.black,
    },
    {
      "image": 'assets/help/banner_cashback.jpg',
      "page": const HelpDetailScreen(title: "CASHBACK DATA", type: "CashbackData"),
      "color": Colors.black,
    },
    {
      "image": 'assets/help/banner_referral.jpg',
      "page": const HelpDetailScreen(title: "Найзаа уриад дата ав", type: "ReferralData"),
      "color": const Color(0xFF1B1B25),
    },
    {
      "image": 'assets/help/banner_60gb.jpg',
      "page": const HelpDetailScreen(title: "DATA ALWAYS ON “60GB 60% OFF” УРАМШУУЛАЛ", type: "DataAlwaysOn"),
      "color": const Color(0xFF006064),
    },
    {
      "image": 'assets/help/banner_iphone_17.jpg',
      "page": const PlaceholderScreen(title: "iPhone 17 Pro"),
      "color": const Color(0xFF1F1F22),
    },
    {
      "image": 'assets/help/banner_kids.jpg',
      "page": const HelpDetailScreen(title: "MonPay Kids - үйлчилгээний заавар", type: "MonPayKids"),
      "color": AppColors.accentPurple,
    },
    {
      "image": 'assets/help/banner_maxmall.jpg',
      "page": const HelpDetailScreen(title: "MAXMALL GIVEAWAY эхэллээ!", type: "MaxMallGiveaway"),
      "color": const Color(0xFF1F1F22),
    },
    {
      "image": 'assets/help/banner_virtual_macbook.jpg',
      "page": const HelpDetailScreen(title: "Виртуал Карттай, Macbook-тэй", type: "VirtualCardPromo"),
      "color": const Color(0xFF1F1F22),
    },
    {
      "image": 'assets/help/banner_smart_data.jpg',
      "page": const HelpDetailScreen(title: "Хэрэгтэйгээ сонго... “Ухаалаг дата багц”", type: "SmartData"),
      "color": const Color(0xFF1F1F22),
    },
    {
      "image": 'assets/help/banner_10_percent.jpg',
      "page": const HelpDetailScreen(title: "MonPay апп-р мобикомын төлбөрөө төлөөд 10%...", type: "Mobicom10Percent"),
      "color": const Color(0xFF1F1F22),
    },
    {
      "image": 'assets/help/banner_placeholder_1.jpg',
      "page": const PlaceholderScreen(title: "Placeholder 1"),
      "color": AppColors.primaryBlue,
    },
    {
      "image": 'assets/help/banner_placeholder_2.jpg',
      "page": const PlaceholderScreen(title: "Placeholder 2"),
      "color": AppColors.accentPurple,
    },
    {
      "image": 'assets/help/banner_placeholder_3.jpg',
      "page": const PlaceholderScreen(title: "Placeholder 3"),
      "color": AppColors.accentRed,
    },
  ];
}

// -----------------------------------------------------------------------------
// 5. Mobilife Data (Mobilife дэлгэцийн өгөгдөл)
// -----------------------------------------------------------------------------

class MobilifeData {
  static final List<Map<String, dynamic>> products = [
    {
      "title": "Хорт хавдрын даатгал",
      "subtitle": "Та хамгаалалтаа нэмэгдүүлээрэй",
      "amount": "50,000,000₮",
      "icon": Icons.home_outlined,
    },
    {
      "title": "Өөртөө тааруулж сонгох",
      "subtitle": "Сар бүрийн эрх",
      "amount": "100,000₮",
      "icon": Icons.umbrella_outlined,
    },
    {
      "title": "Онлайн бүртгүүлэх",
      "subtitle": "30 секундэд бүртгүүлнэ",
      "amount": "0₮",
      "icon": Icons.file_download_outlined,
    },
  ];
}
