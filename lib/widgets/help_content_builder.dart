import 'package:flutter/material.dart';
import 'package:monpay_clone/screens/help_detail_screen.dart';
import 'package:monpay_clone/widgets/common_widgets.dart';

class HelpContentBuilder {
  static HelpContent build(String type) {
    switch (type) {
      case "Recharge":
        return _buildRechargeContent();
      case "Loan":
        return _buildLoanContent();
      case "LongLoan":
        return _buildLongLoanContent();
      case "Awww":
        return _buildAwwwContent();
      case "VirtualCard":
        return _buildVirtualCardContent();
      case "MonPayPlus":
        return _buildMonPayPlusContent();
      case "PurchaseLoan":
        return _buildPurchaseLoanContent();
      case "CashbackData":
        return _buildCashbackDataContent();
      case "ReferralData":
        return _buildReferralDataContent();
      case "DataAlwaysOn":
        return _buildDataAlwaysOnContent();
      case "MaxMallGiveaway":
        return _buildMaxMallGiveawayContent();
      case "Mobicom10Percent":
        return _buildMobicom10PercentContent();
      case "MonPayKids":
        return _buildMonPayKidsContent();
      case "SmartData":
        return _buildSmartDataContent();
      case "VirtualCardPromo":
        return _buildVirtualCardPromoContent();
      default:
        return HelpContent(date: "N/A", body: [const Text("Контент олдсонгүй", style: TextStyle(color: Colors.white))]);
    }
  }

  // Utility Widgets
  static Widget _buildBulletPoint(String text) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8, left: 8),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.only(top: 7),
            child: Icon(Icons.circle, size: 5, color: Colors.white),
          ),
          const SizedBox(width: 12),
          Expanded(child: Text(text, style: const TextStyle(color: Color(0xFFDDDDDD), fontSize: 15, height: 1.5))),
        ],
      ),
    );
  }

  static Widget _buildHeaderRow() {
    return Container(
      height: 40,
      decoration: const BoxDecoration(
        color: Color(0xFF1F1F22),
        borderRadius: BorderRadius.only(topLeft: Radius.circular(12), topRight: Radius.circular(12)),
      ),
      child: Row(
        children: [
          const SizedBox(width: 30, child: Center(child: Text("#", style: TextStyle(color: Colors.white, fontSize: 13)))),
          Container(width: 1, height: 40, color: Colors.white24),
          const Expanded(flex: 4, child: Center(child: Text("Багцын нэр", style: TextStyle(color: Colors.white, fontSize: 13)))),
          Container(width: 1, height: 40, color: Colors.white24),
          const Expanded(flex: 2, child: Center(child: Text("Үнэ", style: TextStyle(color: Colors.white, fontSize: 13)))),
          Container(width: 1, height: 40, color: Colors.white24),
          const SizedBox(width: 50, child: Center(child: Text("Cashback", style: TextStyle(color: Colors.white, fontSize: 13)))),
        ],
      ),
    );
  }

  static Widget _buildDataRow({required String index, required String name, required String price, required bool isTenPercent}) {
    return Container(
      decoration: const BoxDecoration(
        border: Border(bottom: BorderSide(color: Colors.white24, width: 1)),
      ),
      child: Row(
        children: [
          SizedBox(
            width: 30,
            child: Padding(
              padding: const EdgeInsets.only(left: 8, top: 8, bottom: 8),
              child: Text(index, style: const TextStyle(color: Colors.white, fontSize: 13)),
            ),
          ),
          Container(width: 1, height: 40, color: Colors.white24),
          Expanded(
            flex: 4,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
              child: Text(name, style: const TextStyle(color: Colors.white, fontSize: 13)),
            ),
          ),
          Container(width: 1, height: 40, color: Colors.white24),
          Expanded(
            flex: 2,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 8),
              child: Text(price, style: const TextStyle(color: Colors.white, fontSize: 13), textAlign: TextAlign.center),
            ),
          ),
          Container(width: 1, height: 40, color: Colors.white24),
          SizedBox(
            width: 50,
            child: Center(
              child: Text(
                isTenPercent ? "10%" : "5%",
                style: const TextStyle(color: Colors.white, fontSize: 13),
              ),
            ),
          ),
        ],
      ),
    );
  }

  // ---------------------------------------------------------------------------
  // 1. Recharge Content
  // ---------------------------------------------------------------------------
  static HelpContent _buildRechargeContent() {
    return HelpContent(
      date: "2024/08/13",
      body: [
        const Text(
          "Хэрэглэгч та Монпэй апликейшны “Цэнэглэх” цэсээр орж Монпэй дансаа цэнэглэх боломжтой. "
          "Эсвэл өөрийн ашигладаг интернет банкны апликейшнаас Мобифинанс ББСБ-г сонгон өөрийн Монпэй дансны дугаараа оруулан шилжүүлэг хийснээр таны Монпэй данс цэнэглэгдэнэ. "
          "(Монпэй апликейшны “Миний булан” цэснээс 99******** загвар бүхий Монпэй дансны дугаараа мэдэж авах боломжтой)",
          style: TextStyle(color: Color(0xFFEEEEEE), fontSize: 16, height: 1.55),
        ),
        const SizedBox(height: 16),
        HelpDetailPageTemplate.buildImagePlaceholder(
          'assets/help/recharge_guide.jpg',
          placeholderColor: const Color(0xFF1F1F22),
          placeholderText: "assets/help/recharge_guide.jpg (зураг нэмэх)",
          height: 320,
        ),
      ],
    );
  }

  // ---------------------------------------------------------------------------
  // 2. Loan Content
  // ---------------------------------------------------------------------------
  static HelpContent _buildLoanContent() {
    return HelpContent(
      date: "2024/08/13",
      body: [
        const Text(
          "Богино хугацаат зээл хэрхэн авах вэ?\n\n"
          "Хэрэглэгч та MonPay аппликейшны үндсэн цэсээс “ЗЭЭЛ АВАХ” товчийг дарж өр орлогын харьцаагаа "
          "тогтоосноор 2,500,000 хүртэлх төгрөгийн зээлийг авах боломжтой.\n\n"
          "Богино хугацаат зээлийн үндсэн мэдээлэл:\n"
          "• Зээлийн дээд хэмжээ 2,500,000 төгрөг хүртэл\n"
          "• 1–3 сар хүртэлх хугацаатай\n"
          "• Сарын хүү 1.9%–3.4%\n"
          "• Зээлийн хүү ашигласан хоногоор тооцогдоно\n"
          "• Барьцаа хөрөнгө шаардахгүй\n\n"
          "Богино хугацаат зээлийн шалгуур:\n"
          "• 18 нас хүрсэн Монгол улсын иргэн байх\n"
          "• Цахим мөнгөний гэрээ байгуулсан\n"
          "• Зээлийн эрх нээх гэрээ байгуулсан\n"
          "• Өр, орлогын харьцаа хэтрээгүй\n"
          "• Зээлийн Мэдээллийн Санд хэвийнээс бусад зээлгүй\n"
          "• Мобикомын дугаараа 6+ сар идэвхтэй ашигласан",
          style: TextStyle(color: Color(0xFFEEEEEE), fontSize: 16, height: 1.55),
        ),
        const SizedBox(height: 18),
        HelpDetailPageTemplate.buildImagePlaceholder(
          'assets/help/loan_guide.jpg',
          placeholderColor: const Color(0xFF1F1F22),
          placeholderText: "assets/help/loan_guide.jpg",
          height: 240,
        ),
      ],
    );
  }

  // ---------------------------------------------------------------------------
  // 3. Long Loan Content
  // ---------------------------------------------------------------------------
  static HelpContent _buildLongLoanContent() {
    return HelpContent(
      date: "2024/08/13",
      body: [
        const Text(
          "Урт хугацаат зээл хэрхэн авах вэ?\n\n"
          "Хэрэглэгч та MonPay аппликейшны үндсэн цэсээс “ЗЭЭЛ АВАХ” товчийг дарж өр орлогын харьцаагаа "
          "тогтоосноор 2,500,000 хүртэлх төгрөгийн зээлийг авах боломжтой.\n\n"
          "Урт хугацаат зээлийн үндсэн мэдээлэл:\n"
          "• Зээлийн дээд хэмжээ 2,500,000 төгрөг хүртэл\n"
          "• 1–3 сар хүртэлх хугацаатай\n"
          "• Сарын хүү 1.9%–3.4%\n"
          "• Зээлийн хүү ашигласан хоногоор тооцогдоно\n"
          "• Барьцаа хөрөнгө шаардахгүй\n\n"
          "Урт хугацаат зээлийн шалгуур:\n"
          "• 18 нас хүрсэн Монгол улсын иргэн байх\n"
          "• Цахим мөнгөний гэрээ байгуулсан\n"
          "• Зээлийн эрх нээх гэрээ байгуулсан\n"
          "• Өр, орлогын харьцаа хэтрээгүй\n"
          "• Зээлийн Мэдээллийн Санд хэвийнээс бусад зээлгүй\n"
          "• Мобикомын дугаараа 6+ сар идэвхтэй ашигласан",
          style: TextStyle(color: Color(0xFFEEEEEE), fontSize: 16, height: 1.55),
        ),
        const SizedBox(height: 18),
        HelpDetailPageTemplate.buildImagePlaceholder(
          'assets/help/long_loan_guide.jpg',
          placeholderColor: const Color(0xFF1F1F22),
          placeholderText: "assets/help/long_loan_guide.jpg",
          height: 240,
        ),
      ],
    );
  }

  // ---------------------------------------------------------------------------
  // 4. Awww Content
  // ---------------------------------------------------------------------------
  static HelpContent _buildAwwwContent() {
    const TextStyle headerStyle = TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.w700);
    const TextStyle bodyStyle = TextStyle(color: Color(0xFFEEEEEE), fontSize: 15, height: 1.6);

    return HelpContent(
      date: "2024/08/13",
      body: [
        const Text("MonPay Awww гэж юу вэ?", style: headerStyle),
        const SizedBox(height: 12),
        const Text(
          "MonPay-чин танд энэ өдрийн мэндийг хүргэе! Та MonPay Awww гэж юу яриад байгаа бол гэж гайхаж байна уу? Эсвэл MonPay Awww-ийг хэрхэн ашиглахаа сайн мэдэхгүй байна уу? Тэгвэл та яг зөв газраа ирсэн байна.",
          style: bodyStyle,
        ),
        const SizedBox(height: 16),
        const Text(
          "MonPay Awww нь цахим худалдааны нэгдсэн платформ бөгөөд хэрэглэгч таны өдөр тутамдаа үйлчлүүлэх дуртай дэлгүүрүүдийн бараа бүтээгдэхүүнийг танд онлайнаар хаанаас ч хэзээ ч авах боломжийг олгох зорилготой MonPay апп дотор байрлах мини апп юм.",
          style: bodyStyle,
        ),
        const SizedBox(height: 24),
        const Text("MonPay Awww руу хэрхэн нэвтрэх вэ гэж бодож байна уу?", style: headerStyle),
        const SizedBox(height: 12),
        const Text(
          "Та MonPay Awww мини апп руу нүүр хуудсан дээр харагдаж байгаа “Awww” логон дээр дараад нэвтрэх боломжтой. Шинээр бүртгүүлсэн хэрэглэгч нартаа 100 лоялти оноо бэлэглэж байгаа гэснэ шүү.",
          style: bodyStyle,
        ),
        const SizedBox(height: 16),
        HelpDetailPageTemplate.buildImagePlaceholder("assets/help/awww_banner_1.jpg", placeholderColor: Colors.orange.shade800),
        const SizedBox(height: 24),
        const Text("MonPay Awww-д таны үйлчлүүлмээр байгаа дэлгүүр байхгүй байна уу?", style: headerStyle),
        const SizedBox(height: 12),
        const Text(
          "Хэрэв танд MonPay Awww-д оруулмаар байгаа дэлгүүр байгаа бол MonPay Awww мини аппын чат хэсгээр дамжуулан манай үйлчилгээний ажилтанд өөрийн санал хүсэлтийг илгээж боломжтой. Бидэнд хэрэглэгч бүрийн санал хүсэлт маш чухал байх болно.",
          style: bodyStyle,
        ),
        const SizedBox(height: 16),
        HelpDetailPageTemplate.buildImagePlaceholder("assets/help/awww_banner_2.jpg", placeholderColor: const Color(0xFFFA7E50)),
        const SizedBox(height: 24),
        const Text("MonPay Awww-ийн давуу талуудыг та мэдмээр байна уу?", style: headerStyle),
        const SizedBox(height: 12),
        _buildBulletPoint("Таны дуртай дэлгүүрийн хямдралууд"),
        _buildBulletPoint("Бэлэгтэй урамшууллууд"),
        _buildBulletPoint("Хөнгөлөлтийн купонуд"),
        _buildBulletPoint("Дэлгүүртэйгээ шууд холбогдох боломж бий шүү дээ."),
        const SizedBox(height: 16),
        HelpDetailPageTemplate.buildImagePlaceholder("assets/help/awww_banner_3.jpg", placeholderColor: const Color(0xFFFDF4E8)),
        const SizedBox(height: 24),
        const Text(
          "Та MonPay Awww-аас бараа худалдаж аваад худалдан авалт тутмаасаа оноо цуглуулаад дараагийн худалдан авалтаасаа оноогоо хасуулж болно гээд боддоо.",
          style: bodyStyle,
        ),
        const SizedBox(height: 16),
        HelpDetailPageTemplate.buildImagePlaceholder("assets/help/awww_banner_4.jpg", placeholderColor: const Color(0xFFFDF4E8)),
        const SizedBox(height: 24),
        const Text("MonPay Awww-аас зээлээр худалдан авалт хиймээр байна гэж үү?", headerStyle),
        const SizedBox(height: 12),
        const Text(
          "Хэрэв та MonPay-ийн зээлийн гэрээтэй бөгөөд зээлэр авах нөхцөлийг бүрэн хангасан бол MonPay Awww-аас хүссэн бараагаа зээлээр авах боломжтой. Та яг одоо оролдоод үзээрэй.",
          style: bodyStyle,
        ),
        const SizedBox(height: 16),
        HelpDetailPageTemplate.buildImagePlaceholder("assets/help/awww_banner_5.jpg", placeholderColor: const Color(0xFF477A5E)),
      ],
    );
  }

  // ---------------------------------------------------------------------------
  // 5. Virtual Card Content
  // ---------------------------------------------------------------------------
  static HelpContent _buildVirtualCardContent() {
    const TextStyle headerStyle = TextStyle(color: Colors.white, fontSize: 17, fontWeight: FontWeight.w700);
    const TextStyle bodyStyle = TextStyle(color: Color(0xFFEEEEEE), fontSize: 15, height: 1.6);
    const TextStyle subHeaderStyle = TextStyle(color: Color(0xFFEEEEEE), fontSize: 15, fontWeight: FontWeight.w600, height: 1.6);

    return HelpContent(
      date: "2024/05/06",
      body: [
        HelpDetailPageTemplate.buildImagePlaceholder("assets/help/vcard_banner.jpg", placeholderColor: const Color(0xFF1A0528)),
        const SizedBox(height: 16),
        const Text(
          "MonPay-н виртуал карт нь таны олон улсын худалдан авалтыг хялбар, хурдан, найдвартай болгоно.",
          style: bodyStyle,
        ),
        const SizedBox(height: 16),
        const Text("Виртуал карт хэрхэн захиалах вэ?", style: headerStyle),
        const SizedBox(height: 12),
        _buildBulletPoint("MonPay апп-ын нүүр хуудасны 'Картууд' цэс рүү орно."),
        _buildBulletPoint("Виртуал карт захиалах товчийг дарна."),
        _buildBulletPoint("Шаардлагатай мэдээллийг бөглөнө."),
        _buildBulletPoint("Баталгаажуулаад, карт тань идэвхжинэ."),
        const SizedBox(height: 16),
        const Text("Виртуал картын давуу талууд:", style: headerStyle),
        const SizedBox(height: 12),
        _buildBulletPoint("Олон улсын бүх цахим худалдаанд ашиглах боломжтой."),
        _buildBulletPoint("Аюулгүй байдал өндөр."),
        _buildBulletPoint("Хурдан шуурхай захиалга."),
        const SizedBox(height: 16),
        const Text("Анхаарах зүйлс:", style: subHeaderStyle),
        const SizedBox(height: 12),
        const Text(
          "Виртуал карт нь зөвхөн онлайн гүйлгээнд зориулагдсан бөгөөд физик карт байхгүй. Картаа идэвхжүүлэхдээ MonPay дансандаа хангалттай үлдэгдэлтэй байх шаардлагатай.",
          style: bodyStyle,
        ),
      ],
    );
  }

  // ---------------------------------------------------------------------------
  // 6. MonPay Plus Content
  // ---------------------------------------------------------------------------
  static HelpContent _buildMonPayPlusContent() {
    const TextStyle headerStyle = TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.w700);
    const TextStyle bodyStyle = TextStyle(color: Color(0xFFEEEEEE), fontSize: 15, height: 1.6);
    const TextStyle subHeaderStyle = TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.w600);

    return HelpContent(
      date: "2024/08/13",
      body: [
        const Text("Monpay plus хэрхэн авах вэ?", style: headerStyle),
        const SizedBox(height: 12),
        const Text(
          "Хэрэглэгч та MonPay Plus үйлчилгээг ашиглан бараа бүтээгдэхүүн худалдан авахдаа MonPay апп-аараа ороод QR кодыг уншуулан өөрт тохируулан 2-6 хуваан төлөх боломжтой.",
          style: bodyStyle,
        ),
        const SizedBox(height: 24),
        const Text("Урт хугацаат зээлийн үндсэн мэдээлэл:", style: subHeaderStyle),
        const SizedBox(height: 8),
        const Text("Зээлийн хэмжээ: 50,000₮ -2,500,000₮ хүртэл", style: bodyStyle),
        const SizedBox(height: 8),
        _buildBulletPoint("1-3 сарын хугацаатай"),
        _buildBulletPoint("Хүү, Урьдчилгаа, Шимтгэлгүй"),
        _buildBulletPoint("2-6 хуваан төлөх боломжтой"),
        const SizedBox(height: 24),
        const Text("Урт Хугацаат Зээлийн шалгуурууд:", style: subHeaderStyle),
        const SizedBox(height: 12),
        _buildBulletPoint("18 нас хүрсэн Монгол улсын иргэн байх;"),
        _buildBulletPoint("Цахим мөнгөний гэрээ байгуулсан;"),
        _buildBulletPoint("Богино хугацаат зээлийн эрх нээх гэрээ байгуулсан;"),
        _buildBulletPoint("Өр, орлогын харьцаа хэтрээгүй;"),
        _buildBulletPoint("Зээлийн Мэдээллийн Санд хэвийнээс бусад зээлгүй;"),
        const SizedBox(height: 24),
        const Text(
          "Хэрэглэгч та дээр дурдсан шалгууруудыг ханган дараах зааврын дагуу MonPay Plus үйлчилгээгээ аваарай.",
          style: bodyStyle,
        ),
        const SizedBox(height: 16),
        HelpDetailPageTemplate.buildImagePlaceholder(
          "assets/help/monpay_plus_guide.jpg",
          placeholderColor: const Color(0xFF182045),
          placeholderText: "MonPay Plus Guide Image",
          height: 240,
        ),
      ],
    );
  }

  // ---------------------------------------------------------------------------
  // 7. Purchase Loan Content
  // ---------------------------------------------------------------------------
  static HelpContent _buildPurchaseLoanContent() {
    const TextStyle headerStyle = TextStyle(color: Colors.white, fontSize: 19, fontWeight: FontWeight.w700);
    const TextStyle bodyStyle = TextStyle(color: Color(0xFFEEEEEE), fontSize: 15, height: 1.6);
    const TextStyle subHeaderStyle = TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.w600, height: 1.6);

    return HelpContent(
      date: "2024/08/13",
      body: [
        const Text("Худалдан авалтын зээл хэрхэн авах вэ?", style: headerStyle),
        const SizedBox(height: 12),
        const Text(
          "Хэрэглэгч та MonPay QR-тай хамтрагч байгууллагуудаас худалдан авалт хийхдээ урьдчилгаа төлбөр төлөлгүйгээр зээл аваад эхний 10 өдөртөө багтааж хүү, шимтгэлгүйгээр зээлээ эргүүлэн төлөөрэй.",
          style: bodyStyle,
        ),
        const SizedBox(height: 20),
        const Text("Урт хугацаат зээлийн үндсэн мэдээлэл:", style: subHeaderStyle),
        const SizedBox(height: 8),
        _buildBulletPoint("Зээлийн хэмжээ: 20,000₮ -2,500,000₮ хүртэл"),
        _buildBulletPoint("Зээл авсан эхний 10 өдөр хүүгүй"),
        _buildBulletPoint("Урьдчилгаа, шимтгэлгүй"),
        _buildBulletPoint("10-аас хойш хоногт сарын зээлийн хүү 4%"),
        _buildBulletPoint("Урт Хугацаат Зээлийн шалгуурууд:"),
        _buildBulletPoint("18 нас хүрсэн Монгол улсын иргэн байх;"),
        const SizedBox(height: 12),
        const Text("Цахим мөнгөний гэрээ байгуулсан;", style: subHeaderStyle),
        const SizedBox(height: 8),
        _buildBulletPoint("Богино хугацаат зээлийн эрх нээх гэрээ байгуулсан;"),
        _buildBulletPoint("Өр, орлогын харьцаа хэтрээгүй;"),
        _buildBulletPoint("Зээлийн Мэдээллийн Санд хэвийнээс бусад зээлгүй;"),
        const SizedBox(height: 24),
        const Text(
          "Хэрэглэгч та дээр дурдсан шалгууруудыг ханган дараах зааврын дагуу Худалдан авалтын зээлээ аваарай.",
          style: bodyStyle,
        ),
        const SizedBox(height: 16),
        HelpDetailPageTemplate.buildImagePlaceholder(
          "assets/help/purchase_loan_guide.jpg",
          placeholderColor: const Color(0xFF151625),
          placeholderText: "purchase_loan_guide.jpg",
          height: 220,
        ),
      ],
    );
  }

  // ---------------------------------------------------------------------------
  // 8. Cashback Data Content
  // ---------------------------------------------------------------------------
  static HelpContent _buildCashbackDataContent() {
    const TextStyle bodyStyle = TextStyle(color: Color(0xFFDDDDDD), fontSize: 15, height: 1.5);

    return HelpContent(
      date: "2024/08/13",
      body: [
        HelpDetailPageTemplate.buildImagePlaceholder(
          "assets/help/cashback_data_banner.jpg",
          placeholderColor: const Color(0xFF1F1F22),
          placeholderText: "Cashback Data Banner",
          height: 200,
        ),
        const SizedBox(height: 24),
        const Text(
          "MonPay-ээр дата багц худалдан аваад 5% болон 10% буцаан олголт аваарай.",
          style: bodyStyle,
        ),
        const SizedBox(height: 16),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: const Color(0xFF171717),
          ),
          child: Column(
            children: [
              _buildHeaderRow(),
              _buildDataRow(index: "1", name: "1GB", price: "2,000₮", isTenPercent: false),
              _buildDataRow(index: "2", name: "3GB", price: "5,000₮", isTenPercent: false),
              _buildDataRow(index: "3", name: "5GB", price: "7,000₮", isTenPercent: false),
              _buildDataRow(index: "4", name: "10GB", price: "10,000₮", isTenPercent: true),
              _buildDataRow(index: "5", name: "20GB", price: "15,000₮", isTenPercent: true),
              _buildDataRow(index: "6", name: "30GB", price: "20,000₮", isTenPercent: true),
              _buildDataRow(index: "7", name: "50GB", price: "30,000₮", isTenPercent: true),
              _buildDataRow(index: "8", name: "100GB", price: "50,000₮", isTenPercent: true),
            ],
          ),
        ),
        const SizedBox(height: 24),
        const Text(
          "Урамшуулал: 2024 оны 12-р сарын 31-ийг дуустал.",
          style: bodyStyle,
        ),
      ],
    );
  }

  // ---------------------------------------------------------------------------
  // 9. Referral Data Content
  // ---------------------------------------------------------------------------
  static HelpContent _buildReferralDataContent() {
    const TextStyle headerStyle = TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.w700);
    const TextStyle bodyStyle = TextStyle(color: Color(0xFFDDDDDD), fontSize: 14, height: 1.5);
    const TextStyle linkStyle = TextStyle(color: Colors.white, fontSize: 14, decoration: TextDecoration.underline);

    return HelpContent(
      date: "2025/02/24",
      body: [
        HelpDetailPageTemplate.buildImagePlaceholder(
          "assets/help/banner.jpg",
          placeholderColor: const Color(0xFF1B1B25),
          placeholderText: "assets/help/banner.jpg",
          height: 200,
        ),
        const SizedBox(height: 24),
        const Text("Дүрэм:", style: headerStyle),
        const SizedBox(height: 12),
        const Text(
          "Хэрэглэгч та урилгын кодоо ашиглан урьдчилсан төлбөрт багцтай найзаа уриад, урьсан найз тань дараа төлбөрт багц руу амжилттай шилжсэн тохиолдолд:",
          style: bodyStyle,
        ),
        const SizedBox(height: 12),
        const Text("- Танд 5GB дата бэлэглэнэ.", style: bodyStyle),
        const SizedBox(height: 8),
        const Text("- Дараа төлбөрт багцын шинэ хэрэглэгч болсон найзад тань 15GB дата бэлэглэнэ.", style: bodyStyle),
        const SizedBox(height: 24),
        const Text("Уралдаан:", style: headerStyle),
        const SizedBox(height: 12),
        const Text(
          "Урьсан 1 найз тань Дараа төлбөрт багц руу амжилттай шилжсэн тохиолдолд та 1 оноотой болно. (Оноо тэнцсэн тохиолдолд багц ахилт хийсэн хугацааг харгалзан зэрэглэл тогтооно.",
          style: bodyStyle,
        ),
        const SizedBox(height: 24),
        GestureDetector(
          onTap: () {
            debugPrint("Link tapped: https://mobicom.mn/mobiapp/referral");
          },
          child: const Text(
            "https://mobicom.mn/mobiapp/referral",
            style: linkStyle,
          ),
        ),
      ],
    );
  }

  // ---------------------------------------------------------------------------
  // 10. Data Always On Content
  // ---------------------------------------------------------------------------
  static HelpContent _buildDataAlwaysOnContent() {
    const TextStyle bodyStyle = TextStyle(color: Color(0xFFDDDDDD), fontSize: 15, height: 1.5);
    const TextStyle subHeaderStyle = TextStyle(color: Color(0xFFDDDDDD), fontSize: 16, fontWeight: FontWeight.w600);

    return HelpContent(
      date: "2025/11/11",
      body: [
        const Text("DATA ALWAYS ON “60GB 60% OFF” УРАМШУУЛАЛ", style: TextStyle(color: Colors.white, fontSize: 16)),
        const SizedBox(height: 16),
        const Text(
          "2025 оны 11 сарын 30-ыг дуустал 30 өдрийн 60GB дата багц 60,000₮-өөс хямдарч 24,000₮ боллоо. Та зөвхөн Мобиком аппликэйшнээр идэвхжүүлэх боломжтой.",
          style: bodyStyle,
        ),
        const SizedBox(height: 16),
        const Text("Идэвхжүүлэх заавар:", style: subHeaderStyle),
        const SizedBox(height: 12),
        const Text("- Мобиком апп нүүр хуудас -> “60GB 60% off” баннер", style: bodyStyle),
        const SizedBox(height: 8),
        const Text("- Мобиком апп нүүр хуудас -> “Урамшуулал цэс” -> “Data always on” баннер", style: bodyStyle),
        const SizedBox(height: 8),
        const Text(
          "- Мобиком апп нүүр хуудас -> “Дата” -> “Урамшуулал дата багц” -> “Data always on” баннер дээр дарж идэвхжүүлээрэй.",
          style: bodyStyle,
        ),
        const SizedBox(height: 24),
        HelpDetailPageTemplate.buildImagePlaceholder(
          "assets/help/60gb.jpg",
          placeholderColor: const Color(0xFF00838F),
          placeholderText: "assets/help/60gb.jpg",
          height: 300,
        ),
      ],
    );
  }

  // ---------------------------------------------------------------------------
  // 11. MaxMall Giveaway Content
  // ---------------------------------------------------------------------------
  static HelpContent _buildMaxMallGiveawayContent() {
    const TextStyle headerStyle = TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.w700);
    const TextStyle bodyStyle = TextStyle(color: Color(0xFFDDDDDD), fontSize: 15, height: 1.5);

    return HelpContent(
      date: "2025/11/04",
      body: [
        const Text(
          "Maxmall-аас худалдан авалт хийж, 1,000,000 төгрөгийн ялагч болох боломжийг MonPay хэрэглэгчиддээ олгож байна.",
          style: bodyStyle,
        ),
        const SizedBox(height: 24),
        const Text("Яаж оролцох вэ?", style: headerStyle),
        const SizedBox(height: 8),
        const Text(
          "Худалдан авалтаа MonPay-р хийхэд л хангалттай. Мөн MonPay PLUS үйлчилгээг ашиглан урьдчилгаагүй, шимтгэлгүй, 2–6 хуваан төлөх нөхцөлтэйгээр худалдан авалт хийгээд Giveaway-д оролцох боломжтой.",
          style: bodyStyle,
        ),
        const SizedBox(height: 24),
        const Text("Шагнал:", style: headerStyle),
        const SizedBox(height: 8),
        const Text(
          "Нийт 1,000,000 төгрөгийн тус бүр 3 азтан тодруулна.",
          style: bodyStyle,
        ),
        const SizedBox(height: 24),
        const Text("Хугацаа:", style: headerStyle),
        const SizedBox(height: 8),
        const Text(
          "2025 оны 11-р сарын 04-нөөс 11-р сарын 30-ныг дуустал.",
          style: bodyStyle,
        ),
        const SizedBox(height: 24),
        HelpDetailPageTemplate.buildImagePlaceholder(
          "assets/help/maxmall_giveaway.jpg",
          placeholderColor: const Color(0xFF1F1F22),
          placeholderText: "MaxMall Giveaway Image",
          height: 200,
        ),
      ],
    );
  }

  // ---------------------------------------------------------------------------
  // 12. Mobicom 10% Content
  // ---------------------------------------------------------------------------
  static HelpContent _buildMobicom10PercentContent() {
    const TextStyle bodyStyle = TextStyle(color: Color(0xFFDDDDDD), fontSize: 15, height: 1.5);

    return HelpContent(
      date: "2024/05/10",
      body: [
        HelpDetailPageTemplate.buildImagePlaceholder(
          "assets/help/10%.jpg",
          placeholderColor: const Color(0xFF8AB4F8),
          placeholderText: "assets/help/10%.jpg",
          height: 300,
        ),
        const SizedBox(height: 24),
        const Text(
          "MonPay апп-р мобикомын төлбөрөө төлөөд 10%, 5% буцаан олголт авах боломжтой.",
          style: bodyStyle,
        ),
        const SizedBox(height: 16),
        _buildBulletPoint("5-10ны өдрийн хооронд төлбөл 10%"),
        _buildBulletPoint("11-20ны өдрийн хооронд төлбөл 5% MonPay дансандаа шууд аваарай."),
        const SizedBox(height: 24),
        const Text("Ямар хэрэглэгч урамшуулалд хамаарах вэ?", style: bodyStyle),
        const SizedBox(height: 12),
        _buildBulletPoint("Хувь хэрэглэгч, байгууллагын хувь хэрэглэгчийн гэрээтэй дараа төлбөрт болон хосолсон төлбөрт хэрэглэгч"),
        _buildBulletPoint("Зөвхөн өөрийн дугаарын төлбөрийг төлсөн хэрэглэгч"),
        const SizedBox(height: 24),
        const Text("Төлөх заавар:", style: bodyStyle),
        const SizedBox(height: 12),
        _buildBulletPoint("monpay апп > Төлбөр цэс > Мобиком төлбөр төлөлт"),
        _buildBulletPoint("mobicom апп > Төлбөр цэс > Төлбөр төлөлт > Утасны төлбөр > monpay-ээр төлөх"),
      ],
    );
  }

  // ---------------------------------------------------------------------------
  // 13. MonPay Kids Content
  // ---------------------------------------------------------------------------
  static HelpContent _buildMonPayKidsContent() {
    const TextStyle bodyStyle = TextStyle(color: Color(0xFFDDDDDD), fontSize: 15, height: 1.55);
    const TextStyle titleStyle = TextStyle(color: Colors.white, fontSize: 17, fontWeight: FontWeight.w700);
    const TextStyle boldStyle = TextStyle(color: Colors.white, fontWeight: FontWeight.w700);

    return HelpContent(
      date: "2023/10/18",
      body: [
        HelpDetailPageTemplate.buildImagePlaceholder(
          "assets/help/promo_kids_main.jpg",
          placeholderColor: Colors.purple,
          placeholderText: "MonPay Kids",
          height: 250,
        ),
        const SizedBox(height: 24),
        const Text(
          "Хүүхдийн дансны үндсэн зорилго нь хүүхдэд санхүүгийн анхан шатны мэдлэг олгож зөв дадал суулгах зорилготой бөгөөд эцэг эх болон хүүхдийн хоорондын санхүүгийн үл ойлголцлыг үгүй болгоход оршино.",
          style: bodyStyle,
        ),
        const SizedBox(height: 16),
        const Text(
          "Эцэг эх нь өөрсдийн Монпэй дансаар хүүхдийнхээ дансны хуулга, үлдэгдэл харж хэрэглээг хянаж, сонирхолтой даалгаваруудыг зохиож, зорилгын дансны биелэлтийг ч мөн харах боломжтой байна.",
          style: bodyStyle,
        ),
        const SizedBox(height: 20),
        Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
          const Text("• ", style: titleStyle),
          Expanded(
            child: RichText(
              text: TextSpan(style: bodyStyle, children: [
                const TextSpan(text: "Task буюу даалгавар: ", style: boldStyle),
                const TextSpan(
                    text: "хүүхэд болон эцэг эх тохиролцон гэрийн ажил хийх, ном унших эсвэл шинэ үг цээжлэх гэх мэт даалгаврууд дээр урамшууллын дүн тохирон биелүүлснээр хүүхдээ урамшуулах функц юм. Энэ функц нь хүүхдэд багаас санхүүгийн харилцаанд орох мэдлэгийг өгөх зорилготой. Хүүхэд даалгавар/task/ биелүүлснээр авах мөнгөний 70%-нь хүүхдийн үндсэн дансанд орно."
                ),
              ]),
            ),
          ),
        ]),
        const SizedBox(height: 16),
        Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
          const Text("• ", style: titleStyle),
          Expanded(
            child: RichText(
              text: TextSpan(style: bodyStyle, children: [
                const TextSpan(text: "Goal буюу зорилгын данс: ", style: boldStyle),
                const TextSpan(
                    text: "зорилгын функц нь хүүхдэд бага наснаас хуримтлал болон мөнгө хадгалах ойлголтыг өгөх зорилготой. Хүүхэд даалгавар/task/ биелүүлснээр авах мөнгөний 30%-нь зорилгын биелэлтэд орно."
                ),
              ]),
            ),
          ),
        ]),
        const SizedBox(height: 16),
        const Text("i Зорилгын функц нь хадгаламж биш учир хүү тооцохгүй", style: TextStyle(color: Colors.white70, fontSize: 13, fontStyle: FontStyle.italic)),
        const SizedBox(height: 24),
        HelpDetailPageTemplate.buildImagePlaceholder(
          "assets/help/promo_kids_diagram.jpg",
          placeholderColor: Colors.white,
          placeholderText: "MonPay Kids Diagram",
          height: 300,
        ),
      ],
    );
  }

  // ---------------------------------------------------------------------------
  // 14. Smart Data Content
  // ---------------------------------------------------------------------------
  static HelpContent _buildSmartDataContent() {
    const TextStyle bodyStyle = TextStyle(color: Color(0xFFDDDDDD), fontSize: 15, height: 1.55);
    const TextStyle headerStyle = TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.w600);
    const TextStyle linkStyle = TextStyle(color: Colors.blue, fontSize: 14, decoration: TextDecoration.underline);

    return HelpContent(
      date: "2025/02/24",
      body: [
        HelpDetailPageTemplate.buildImagePlaceholder(
          "assets/help/banner_smart_data.jpg",
          placeholderColor: Colors.white,
          placeholderText: "Ухаалаг дата багц",
          height: 220,
        ),
        const SizedBox(height: 24),
        const Text("Хэрэгтэйгээ сонго... “Ухаалаг дата багц”", style: headerStyle),
        const SizedBox(height: 12),
        const Text(
          "Хэрэглэгч та өөрийн хэрэгцээнд нийцүүлэн дата багц болон дагалдах эрхээ сонгох боломжтой боллоо. Өөрийн хэрэгцээнд нийцсэн дата багц болон дагалдах эрхээ сонгоод хэрэгтэйгээ аваарай.",
          style: bodyStyle,
        ),
        const SizedBox(height: 24),
        const Text("Дата багцын дагалдах эрхүүд:", style: headerStyle),
        const SizedBox(height: 12),
        const Text("Хэл сурах хүсэлтэй хэрэглэгчдэд зориулсан -> 7 орны хэл сурах боломжтой uTalk аппликэйшны эрх (Англи, Солонгос, Орос, Япон, Турк, Хятад, Франц)", style: bodyStyle),
        const SizedBox(height: 12),
        const Text("Mobile Legends тоглогчдод зориулсан -> Mobile Legends 110 Diamonds", style: bodyStyle),
        const SizedBox(height: 12),
        const Text("Кино хорхойтнуудад зориулсан -> VOO багцууд", style: bodyStyle),
        const SizedBox(height: 12),
        const Text("MonPay хэрэглэгчдэд зориулсан -> MonPay 1000₮, 1500₮, 4500₮ -ийн купон", style: bodyStyle),
        const SizedBox(height: 24),
        const Text("Та дата болон дагалдах эрхээ сонгож хэрэгтэйгээ аваарай.", style: bodyStyle),
        const SizedBox(height: 12),
        const Text("“Ухаалаг дата багц”-аа мобиком аппликэйшний “дата” -> “ухаалаг” цэсээс аваарай.", style: bodyStyle),
        const SizedBox(height: 12),
        const Text("Дагалдах эрхээ идэвхжүүлэх код болон зааврыг таны дугаар руу мессежээр илгээх болно.", style: bodyStyle),
        const SizedBox(height: 16),
        Wrap(
          crossAxisAlignment: WrapCrossAlignment.center,
          children: const [
            Text("Дэлгэрэнгүй мэдээлэл: ", style: bodyStyle),
            Text("https://www.mobicom.mn/mobiapp/data-smart/", style: linkStyle),
          ],
        ),
        const SizedBox(height: 24),
        const Text("“Ухаалаг дата багц”-ын дагалдах эрхүүдийн тухай:", style: headerStyle),
        const SizedBox(height: 12),
        const Text(
          "uTalk нь гадаад хэлний өдөр тутмын хэрэглээний үг, хэллэгийг дуудлага, сонсгол болон харилцаагаар дамжуулан сургах аргыг санал болгодог ба интерактив тоглоом, дасгалуудтай тул хэл сурах явцыг сонирхолтой, хялбар, үр дүнтэй болгодгоороо давуу талтай.Тус аппликэйшнаар Англи, Солонгос, Орос, Япон, Турк, Хятад, Франц хэл суралцах боломжтой бөгөөд гадаад хэлийг эхнээс нь сурах гэж буй хүмүүст ч тохиромжтой.",
          style: bodyStyle,
        ),
        const SizedBox(height: 12),
        const Text(
          "MonPay-р хийж байгаа худалдан авалтын төлбөрөө төлөх үед купоноо ашиглах боломжтой.",
          style: bodyStyle,
        ),
        const SizedBox(height: 12),
        const Text(
          "Гадаад, дотоодын шилдэг кино, контентын ертөнцөөр аялуулах VOO платформ 7 хоногийн эрхтэй Content, Premium, Premium Plus багцуудаас сонгоорой.",
          style: bodyStyle,
        ),
        const SizedBox(height: 12),
        const Text(
          "Mobile Legends тоглоомын 110 Diamonds-г идэвхжүүлэх кодыг таны дугаар руу мессежээр илгээх болно.",
          style: bodyStyle,
        ),
      ],
    );
  }

  // ---------------------------------------------------------------------------
  // 15. Virtual Card Promo Content
  // ---------------------------------------------------------------------------
  static HelpContent _buildVirtualCardPromoContent() {
    const TextStyle bodyStyle = TextStyle(color: Color(0xFFDDDDDD), fontSize: 15, height: 1.5);

    return HelpContent(
      date: "2024/06/24",
      body: [
        const Text(
          "Супер бэлгүүдтэй Монпэй виртуал картын урамшуулал үргэлжилж байна.",
          style: bodyStyle,
        ),
        const SizedBox(height: 16),
        const Text(
          "Монпэй Виртуал картаар олон улсын худалдан авалтаа хийгээд iPhone 15, Playstation 5, Macbook Air-M2 чиптэй, 100,000₮- 1,000,000₮ хүртэлх худалдан авалтын эрхийн бичиг зэрэг олон супер бэлгүүдийн эзэн болоорой.",
          style: bodyStyle,
        ),
        const SizedBox(height: 16),
        const Text(
          "Виртуал картаа ашиглан 30,000₮-с дээш худалдан авалт, төлбөр төлөлт гэх мэт гүйлгээ хийх бүрдээ урамшуулалд оролцох 1 эрх авч тохиролд оролцоорой.",
          style: bodyStyle,
        ),
        const SizedBox(height: 16),
        const Text(
          "Бэлгийн эзнийг 10-р сарын 02-нд Monpay facebook хуудсанд Live-р тодруулна.",
          style: bodyStyle,
        ),
        const SizedBox(height: 16),
        const Text(
          "Урамшуулал 06-р сарын 24-с 09-р сарын 30-г дуустал.",
          style: bodyStyle,
        ),
        const SizedBox(height: 24),
        HelpDetailPageTemplate.buildImagePlaceholder(
          "assets/help/promo_virtual_macbook.jpg",
          placeholderColor: Colors.black,
          placeholderText: "Macbook Promo Image",
          height: 300,
        ),
      ],
    );
  }
}
