import 'package:dayfi_website/ui/components/buttons/filled_btn.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(const DayfiWebsite());
}

final theme = ThemeData(
  primaryColor: const Color(0xFF6B4EFF),
  textTheme: GoogleFonts.spaceGroteskTextTheme(),
  colorScheme: const ColorScheme.light(
    primary: Color(0xFF6B4EFF),
    secondary: Color(0xFFEEEBFF),
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      backgroundColor: const Color(0xFF6B4EFF),
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
      textStyle: GoogleFonts.spaceGrotesk(
        fontSize: 16,
        fontWeight: FontWeight.w500,
      ),
    ),
  ),
  textButtonTheme: TextButtonThemeData(
    style: TextButton.styleFrom(
      textStyle: GoogleFonts.spaceGrotesk(
        fontSize: 16,
        fontWeight: FontWeight.w500,
      ),
    ),
  ),
);

class DayfiWebsite extends StatelessWidget {
  const DayfiWebsite({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(375, 812), // Adjust based on your design
        minTextAdapt: true,
        builder: (context, child) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'Dayfi',
            theme: theme,
            builder: (context, child) => ResponsiveBreakpoints.builder(
              child: child!,
              breakpoints: [
                const Breakpoint(start: 0, end: 450, name: MOBILE),
                const Breakpoint(start: 451, end: 800, name: TABLET),
                const Breakpoint(start: 801, end: 1920, name: DESKTOP),
              ],
            ),
            home: const HomePage(),
          );
        });
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const NavBar(),
              const HeroSection(),
              const FeatureSection(),
              const StepsSection(),
              const FAQSection(),
              const SignUpSection(),
              const FooterSection(),
            ],
          ),
        ),
      ),
    );
  }
}

class NavBar extends StatelessWidget {
  const NavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 1380,
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            flex: 4,
            child: RichText(
              text: TextSpan(
                text: "dayfi",
                style: GoogleFonts.spaceGrotesk(
                  fontWeight: FontWeight.w900,
                  fontSize: 24,
                ),
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextButton(
                  onPressed: () {},
                  child: RichText(
                    text: TextSpan(
                      text: 'Our Products',
                      style: GoogleFonts.spaceGrotesk(
                          fontWeight: FontWeight.w600,
                          fontSize: 16,
                          color: Colors.grey.shade600),
                    ),
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  child: RichText(
                    text: TextSpan(
                      text: 'About Us',
                      style: GoogleFonts.spaceGrotesk(
                          fontWeight: FontWeight.w600,
                          fontSize: 16,
                          color: Colors.grey.shade600),
                    ),
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  child: RichText(
                    text: TextSpan(
                      text: 'Help',
                      style: GoogleFonts.spaceGrotesk(
                          fontWeight: FontWeight.w600,
                          fontSize: 16,
                          color: Colors.grey.shade600),
                    ),
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  child: RichText(
                    text: TextSpan(
                      text: 'Our Blog',
                      style: GoogleFonts.spaceGrotesk(
                          fontWeight: FontWeight.w600,
                          fontSize: 16,
                          color: Colors.grey.shade600),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 4,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const SizedBox(),
                SizedBox(
                  child: FilledBtn(
                    onPressed: () {},
                    text: "Join the waiting list",
                    textColor: Colors.white,
                    backgroundColor: Color(0xff0357ee),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class HeroSection extends StatelessWidget {
  const HeroSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 1380,
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 48),
      child: Column(
        children: [
          const SizedBox(height: 16),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 200),
            child: RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                text:
                    'Trade coins, make\npayments with the DayFi\nWeb3 ecosystem.',
                style: GoogleFonts.spaceGrotesk(
                  fontSize: 72,
                  height: 1.05,
                  fontWeight: FontWeight.w800,
                  letterSpacing: -1,
                ),
              ),
            ),
          ),
          const SizedBox(height: 32),
          Text(
            'Seamlessly transition into Web3 and manage digital assets with ease.\nThe best part? Tap your debit card to buy digital assets instantly.\n\nJoin DayFi today and experience the future of DeFi.',
            style: GoogleFonts.karla(
              fontSize: 16,
              height: 1.65,
              fontWeight: FontWeight.w500,
              letterSpacing: -.4,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 40),
          SizedBox(
            child: FilledBtn(
              onPressed: () {},
              text: "Join the waiting list",
              textColor: Colors.white,
              backgroundColor: Color(0xff0357ee),
            ),
          ),
          const SizedBox(height: 40),
          Text(
            'Coming soon',
            style: GoogleFonts.karla(
              fontSize: 12,
              height: 1.65,
              fontWeight: FontWeight.w600,
              color: Colors.black.withOpacity(.6),
              letterSpacing: -.2,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 40),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                child: FilledBtn(
                  onPressed: () {},
                  text: "App Store",
                  hasIcon: true,
                  icon: "assets/svgs/apple-black-logo-svgrepo-com.svg",
                  textColor: Colors.white,
                  backgroundColor: Color(0xff022c77),
                ),
              ),
              const SizedBox(width: 8),
              SizedBox(
                child: FilledBtn(
                  onPressed: () {},
                  text: "Play Store",
                  hasIcon: true,
                  icon: "assets/svgs/android-svgrepo-com.svg",
                  textColor: Colors.white,
                  backgroundColor: Color(0xff022c77),
                ),
              ),
            ],
          ),
          const SizedBox(height: 126),
        ],
      ),
    );
  }
}

class FeatureSection extends StatelessWidget {
  const FeatureSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 1380,
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 48),
      child: Column(
        children: [
          RichText(
            textAlign: TextAlign.center,
            text: TextSpan(
              text: 'Our Products',
              style: GoogleFonts.spaceGrotesk(
                fontSize: 20,
                height: 1.275,
                fontWeight: FontWeight.w800,
                letterSpacing: -.5,
                color: Color.fromARGB(255, 3, 164, 238),
                decoration: TextDecoration.underline,
              ),
            ),
          ),
          const SizedBox(height: 12),
          RichText(
            textAlign: TextAlign.center,
            text: TextSpan(
              text: 'A new era for finance\nwith dayfi',
              style: GoogleFonts.spaceGrotesk(
                fontSize: 40,
                height: 1.2,
                fontWeight: FontWeight.w800,
                letterSpacing: -.4,
              ),
            ),
          ),
          const SizedBox(height: 6),
          Text(
            'We’re redefining how people trade and transact in the Web3 space. With innovative features,\nDayFi makes digital asset management and global payments seamless, secure, and\naccessible to everyone.',
            style: GoogleFonts.karla(
              fontSize: 16,
              height: 1.65,
              fontWeight: FontWeight.w500,
              letterSpacing: -.4,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 32),
          Container(
            width: MediaQuery.of(context).size.width,
            height: 380,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(48),
              color: Color(0xffcac5fc),
            ),
            padding: const EdgeInsets.only(top: 40, left: 40),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // if (item.imageUrl != null)
                //   Image.network(
                //     item.imageUrl!,
                //     width: 100,
                //     height: 100,
                //     fit: BoxFit.cover,
                //   ),
                const SizedBox(height: 16),

                RichText(
                  textAlign: TextAlign.start,
                  text: TextSpan(
                    text: "Multiple Assets =\nMultiple Wallets!",
                    style: GoogleFonts.spaceGrotesk(
                      fontSize: 40,
                      height: 1.2,
                      fontWeight: FontWeight.w800,
                      letterSpacing: -.4,
                    ),
                  ),
                ),

                const SizedBox(height: 15),
                Text(
                  "Effortlessly manage and swap between multiple digital coins with Dayfi. Hold\nmultiple wallets, transact seamlessly, and stay in control of your crypto\nassets—all in one place.",
                  style: GoogleFonts.karla(
                    fontSize: 19,
                    height: 1.4,
                    fontWeight: FontWeight.w400,
                    color: Colors.black.withOpacity(.85),
                    letterSpacing: -.4,
                  ),
                  textAlign: TextAlign.start,
                ),
              ],
            ),
          ),
          ColoredBoxGrid(
            items: [
              BoxItem(
                title: "Want to receive digital\nassets?",
                description:
                    "With Dayfi, distance is no barrier. Send and receive digital assets seamlessly, no matter where you are. Our secure platform keeps your transactions safe and helps you track your payments effortlessly—keeping you connected at all times.",
                color: Color(0xff93d9c2),
                imageUrl: "assets/images/oneplus.png",
                onTap: () {
                  print("Green Box Tapped!");
                },
              ),
              BoxItem(
                title: "Fast and Hassle-free\nasset transfer!",
                description:
                    "Get lightning-fast, hassle-free money transfers with Dayfi. Our platform allows you to send and receive payments quickly and securely, faster than many other platforms.",
                color: Color(0xffffadd2),
                imageUrl: "assets/images/oneplus.png",
                onTap: () {
                  print("Pink Box Tapped!");
                },
              ),
              BoxItem(
                title: "Virtual cards just\ngot better!",
                description:
                    "Easily create and manage virtual cards for secure online and in-store purchases. Enjoy the flexibility of using a card without needing a physical card, all while keeping your financial information secure.",
                color: Color(0xfffce9b3),
                imageUrl: "assets/images/oneplus.png",
                onTap: () {
                  print("Yellow Box Tapped!");
                },
              ),
              BoxItem(
                title: "Swap Currencies\nQuickly and Securely",
                description:
                    "Our platform allows you to quickly and securely swap between various currencies, so you can easily make transactions and manage your finances in different currencies.",
                color: Color(0xffafecfa),
                imageUrl: "assets/images/oneplus.png",
                onTap: () {
                  print("Blue Box Tapped!");
                },
              ),
            ],
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            height: 380,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(48),
              color: Color(0xfff7c7a8),
            ),
            padding: const EdgeInsets.only(top: 40, left: 40),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // if (item.imageUrl != null)
                //   Image.network(
                //     item.imageUrl!,
                //     width: 100,
                //     height: 100,
                //     fit: BoxFit.cover,
                //   ),
                const SizedBox(height: 16),
                RichText(
                  textAlign: TextAlign.start,
                  text: TextSpan(
                    text: "Send and receive for\nFREE with your Dayfi ID!",
                    style: GoogleFonts.spaceGrotesk(
                      fontSize: 40,
                      height: 1.2,
                      fontWeight: FontWeight.w800,
                      letterSpacing: -.4,
                    ),
                  ),
                ),

                const SizedBox(height: 15),
                Text(
                  "Our platform allows you to make transactions without incurring charges by\nusing a unique tag generated within the app. Enjoy the convenience and\ncost-saving benefits of this feature with Dayfi.",
                  style: GoogleFonts.karla(
                    fontSize: 19,
                    height: 1.4,
                    fontWeight: FontWeight.w400,
                    color: Colors.black.withOpacity(.85),
                    letterSpacing: -.4,
                  ),
                  textAlign: TextAlign.start,
                ),
              ],
            ),
          ),
          const SizedBox(height: 12),
        ],
      ),
    );
  }
}

class ColoredBoxGrid extends StatelessWidget {
  final List<BoxItem> items;

  const ColoredBoxGrid({super.key, required this.items});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        for (int i = 0; i < items.length; i += 2) ...[
          const SizedBox(height: 24),
          Row(
            children: [
              Expanded(child: _buildColoredBox(context, items[i])),
              if (i + 1 < items.length) ...[
                const SizedBox(width: 24),
                Expanded(child: _buildColoredBox(context, items[i + 1])),
              ],
            ],
          ),
        ],
        const SizedBox(height: 24),
      ],
    );
  }

  Widget _buildColoredBox(BuildContext context, BoxItem item) {
    return GestureDetector(
      onTap: item.onTap,
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 380 * 2.5,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(48),
          color: item.color,
        ),
        padding: const EdgeInsets.only(top: 40, left: 40, right: 60),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 16),
            RichText(
              textAlign: TextAlign.start,
              text: TextSpan(
                text: item.title,
                style: GoogleFonts.spaceGrotesk(
                  fontSize: 40,
                  height: 1.2,
                  fontWeight: FontWeight.w800,
                  letterSpacing: -.4,
                ),
              ),
            ),
            const SizedBox(height: 15),
            Text(
              item.description,
              style: GoogleFonts.karla(
                fontSize: 19,
                height: 1.4,
                fontWeight: FontWeight.w400,
                color: Colors.black.withOpacity(.85),
                letterSpacing: -.4,
              ),
              textAlign: TextAlign.start,
            ),
            Spacer(),
            Align(
              alignment: Alignment.bottomCenter,
              child: Image.asset(
                item.imageUrl!,
                fit: BoxFit.cover,
              ),
            )
          ],
        ),
      ),
    );
  }
}

class BoxItem {
  final String title;
  final String description;
  final Color color;
  final String? imageUrl;
  final VoidCallback? onTap;

  BoxItem({
    required this.title,
    required this.description,
    required this.color,
    this.imageUrl,
    this.onTap,
  });
}

class StepsSection extends StatelessWidget {
  const StepsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 1380,
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          RichText(
            textAlign: TextAlign.center,
            text: TextSpan(
              text: 'Want To Join Us?',
              style: GoogleFonts.spaceGrotesk(
                fontSize: 20,
                height: 1.275,
                fontWeight: FontWeight.w800,
                letterSpacing: -.5,
                color: Color.fromARGB(255, 3, 164, 238),
                decoration: TextDecoration.underline,
              ),
            ),
          ),
          const SizedBox(height: 12),
          RichText(
            textAlign: TextAlign.center,
            text: TextSpan(
              text: 'Get started in three\neasy steps',
              style: GoogleFonts.spaceGrotesk(
                fontSize: 40,
                height: 1.2,
                fontWeight: FontWeight.w800,
                letterSpacing: -.4,
              ),
            ),
          ),
          const SizedBox(height: 6),
          Text(
            'Setting up Dayfi is easy. Follow the steps below to get started.',
            style: GoogleFonts.karla(
              fontSize: 16,
              height: 1.65,
              fontWeight: FontWeight.w500,
              letterSpacing: -.4,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 32),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              StepCard(
                  color: Color(0xffcac5fc),
                  number: 1,
                  top: 12,
                  title: "Find the Dayfi app",
                  description:
                      "Find the Dayfi app in the App Store (for Apple devices) or the Play Store (for Android devices) or you can use the Web app (for Desktop devices). You can search for the app or follow a link to the app's page."),
              SizedBox(width: MediaQuery.of(context).size.width * .05),
              StepCard(
                color: Color(0xff95dbc4),
                number: 2,
                top: 12 + 64,
                title: "Install Dayfi app",
                description:
                    "Install the app on your device by tapping the 'Install' button and waiting for the download process to complete. Depending on your device and internet connection, this may take a few minutes",
              ),
              SizedBox(width: MediaQuery.of(context).size.width * .05),
              StepCard(
                color: Color(0xffffadd2),
                number: 3,
                top: 12 + 128,
                title: "Register/Log in",
                description:
                    "Once the app is installed, launch it and register for a new account or log in to your existing account to access all of the features and benefits of Dayfi.",
              ),
            ],
          ),
          const SizedBox(height: 48),
        ],
      ),
    );
  }
}

class StepCard extends StatelessWidget {
  final double top;
  final int number;
  final String title;
  final String description;
  final Color color;
  const StepCard({
    super.key,
    required this.top,
    required this.number,
    required this.title,
    required this.description,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(48),
        ),
        padding: EdgeInsets.only(top: top),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CircleAvatar(
              radius: 28,
              backgroundColor: color,
              child: RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                  text: number.toString(),
                  style: GoogleFonts.spaceGrotesk(
                    fontSize: 28,
                    height: 1.275,
                    fontWeight: FontWeight.w800,
                    letterSpacing: -.5,
                    color: Color(0xff022c77),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 24),
            RichText(
              textAlign: TextAlign.start,
              text: TextSpan(
                text: title,
                style: GoogleFonts.spaceGrotesk(
                  fontSize: 24,
                  height: 1.2,
                  fontWeight: FontWeight.w800,
                  letterSpacing: -.4,
                ),
              ),
            ),
            const SizedBox(height: 15),
            Text(
              description,
              style: GoogleFonts.karla(
                fontSize: 16,
                height: 1.55,
                fontWeight: FontWeight.w500,
                letterSpacing: -.4,
              ),
              textAlign: TextAlign.start,
            ),
          ],
        ),
      ),
    );
  }
}

class FAQSection extends StatelessWidget {
  const FAQSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 900,
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 48),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          RichText(
            textAlign: TextAlign.center,
            text: TextSpan(
              text: 'Answered Questions',
              style: GoogleFonts.spaceGrotesk(
                fontSize: 20,
                height: 1.275,
                fontWeight: FontWeight.w800,
                letterSpacing: -.5,
                color: Color.fromARGB(255, 3, 164, 238),
                decoration: TextDecoration.underline,
              ),
            ),
          ),
          const SizedBox(height: 12),
          RichText(
            textAlign: TextAlign.center,
            text: TextSpan(
              text: 'Questions? We got\nanswers!',
              style: GoogleFonts.spaceGrotesk(
                fontSize: 40,
                height: 1.2,
                fontWeight: FontWeight.w800,
                letterSpacing: -.4,
              ),
            ),
          ),
          const SizedBox(height: 32),
          Column(
            children: [
              CustomExpansionTile(
                title:
                    'What are the fees associated with card/debit transactions?',
                content:
                    'For card debit transactions, a 1% transaction fee is applicable based on the transaction amount. However, there is a minimum charge of \$1 and a maximum fee of \$5.\n\nAdditionally, there is a \$1 monthly maintenance fee per card. This fee will only be deducted after your first debit transaction in a given month.',
              ),
              Divider(
                height: 0,
                color: Color(0xff0357ee).withOpacity(.1),
              ),
              CustomExpansionTile(
                title: 'How can I sign up on Dayfi?',
                content:
                    'Applicable based on the transaction amount. However, there is a minimum charge of \$1 and a maximum fee of \$5.\n\nAdditionally, there is a \$1 monthly maintenance fee per card. This fee will only be deducted after your first debit transaction in a given month.',
              ),
              Divider(
                height: 0,
                color: Color(0xff0357ee).withOpacity(.1),
              ),
              CustomExpansionTile(
                title:
                    'What are the fees associated with card/debit transactions?',
                content:
                    'For card debit transactions, a 1% transaction fee is applicable based on the transaction amount. However, there is a minimum charge of \$1 and a maximum fee of \$5.\n\nAdditionally, there is a \$1 monthly maintenance fee per card. This fee will only be deducted after your first debit transaction in a given month.',
              ),
              Divider(
                height: 0,
                color: Color(0xff0357ee).withOpacity(.1),
              ),
              CustomExpansionTile(
                title: 'How can I sign up on Dayfi?',
                content:
                    'Applicable based on the transaction amount. However, there is a minimum charge of \$1 and a maximum fee of \$5.\n\nAdditionally, there is a \$1 monthly maintenance fee per card. This fee will only be deducted after your first debit transaction in a given month.',
              ),
            ],
          ),
          const SizedBox(height: 24),
        ],
      ),
    );
  }
}

class CustomExpansionTile extends StatelessWidget {
  final String title;
  final String content;

  const CustomExpansionTile({
    super.key,
    required this.title,
    required this.content,
  });

  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.zero, side: BorderSide.none),
      collapsedShape: RoundedRectangleBorder(
          borderRadius: BorderRadius.zero, side: BorderSide.none),
      tilePadding: const EdgeInsets.symmetric(vertical: 14, horizontal: 12),
      title: RichText(
        textAlign: TextAlign.start,
        text: TextSpan(
          text: title,
          style: GoogleFonts.spaceGrotesk(
            fontSize: 20,
            height: 1.2,
            fontWeight: FontWeight.w800,
            letterSpacing: -.4,
            color: Colors.black, // Ensure text is visible
          ),
        ),
      ),
      children: [
        Padding(
          padding: const EdgeInsets.all(16),
          child: Text(
            content,
            style: GoogleFonts.karla(
              fontSize: 16,
              height: 1.65,
              fontWeight: FontWeight.w500,
              letterSpacing: -.4,
              color: Colors.black87, // Ensure text is visible
            ),
            textAlign: TextAlign.start,
          ),
        ),
      ],
    );
  }
}

class SignUpSection extends StatelessWidget {
  const SignUpSection({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 1380,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Container(
          height: 400,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(48),
            color: Color(0xff022c77),
          ),
          padding:
              const EdgeInsets.only(top: 40, left: 40, right: 40, bottom: 40),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  RichText(
                    textAlign: TextAlign.start,
                    text: TextSpan(
                      text: "Ready to join the\nGeng? Sign up today!",
                      style: GoogleFonts.spaceGrotesk(
                          fontSize: 40,
                          height: 1.2,
                          fontWeight: FontWeight.w800,
                          letterSpacing: -.4,
                          color: Colors.white),
                    ),
                  ),
                  const SizedBox(),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        child: FilledBtn(
                          onPressed: () {},
                          text: "Join the waiting list",
                          textColor: Colors.white,
                          backgroundColor: Color(0xff0357ee),
                        ),
                      ),
                      const SizedBox(height: 40),
                      Text(
                        'Coming soon',
                        style: GoogleFonts.karla(
                          fontSize: 12,
                          height: 1.65,
                          fontWeight: FontWeight.w600,
                          color: Colors.white70,
                          letterSpacing: -.2,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(height: 40),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            child: FilledBtn(
                              onPressed: () {},
                              text: "App Store",
                              hasIcon: true,
                              icon:
                                  "assets/svgs/apple-black-logo-svgrepo-com.svg",
                              textColor: Color(0xff022c77),
                              backgroundColor: Color(0xfff6f5ff),
                            ),
                          ),
                          const SizedBox(width: 8),
                          SizedBox(
                            child: FilledBtn(
                              onPressed: () {},
                              text: "Play Store",
                              hasIcon: true,
                              icon: "assets/svgs/android-svgrepo-com.svg",
                              textColor: Color(0xff022c77),
                              backgroundColor: Color(0xfff6f5ff),
                            ),
                          ),
                        ],
                      ),
                    ],
                  )
                ],
              ),
              const SizedBox(),
            ],
          ),
        ),
      ),
    );
  }
}

class FooterSection extends StatelessWidget {
  const FooterSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 60),
      width: MediaQuery.of(context).size.width,
      color: const Color(0xFFF5F5FF),
      child: Center(
        child: SizedBox(
          width: 1380,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 48),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  flex: 2,
                  child: Padding(
                    padding: const EdgeInsets.only(right: 96.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        RichText(
                          text: TextSpan(
                            text: "dayfi",
                            style: GoogleFonts.spaceGrotesk(
                              fontWeight: FontWeight.w900,
                              fontSize: 24,
                            ),
                          ),
                        ),
                        const SizedBox(height: 10),
                        Text(
                          'Dayfi offers a reliable way to send and receive money from any part of the world. We eliminate the risks and hiccups associated with online transactions by delivering a cheap, quick, and secure portal for completing financial obligations.',
                          style: GoogleFonts.karla(
                            fontSize: 14,
                            height: 1.65,
                            fontWeight: FontWeight.w400,
                            letterSpacing: -.2,
                          ),
                          textAlign: TextAlign.start,
                        ),
                        const SizedBox(height: 4),
                        Text(
                          '© 2025 Dayfi. All rights reserved.',
                          style: GoogleFonts.karla(
                            fontSize: 12,
                            height: 1.65,
                            fontWeight: FontWeight.w400,
                            letterSpacing: -.2,
                          ),
                          textAlign: TextAlign.start,
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(right: 32.0),
                    child: const FooterColumn(
                      title: 'Our Products',
                      items: [
                        'Virtual Cards',
                        'Money Transfer',
                        'Currency Exchange'
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(right: 32.0),
                    child: const FooterColumn(
                      title: 'Company',
                      items: [
                        'About Us',
                        'Privacy Policy',
                        'Terms of Use',
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(right: 32.0),
                    child: const FooterColumn(
                      title: 'Contact',
                      items: [
                        'support@dayfi.co',
                        'Victoria Crest Estate II, Lekki Penninsula II 101244, Lekki, Lagos.',
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class FooterColumn extends StatelessWidget {
  final String title;
  final List<String> items;

  const FooterColumn({
    super.key,
    required this.title,
    required this.items,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        RichText(
          text: TextSpan(
            text: title,
            style: GoogleFonts.spaceGrotesk(
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          ),
        ),
        const SizedBox(height: 10),
        ...items.map((item) => Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Text(
                item,
                style: GoogleFonts.karla(
                  fontSize: 16,
                  height: 1.65,
                  color: Colors.black87,
                  fontWeight: FontWeight.w400,
                  letterSpacing: -.2,
                ),
                textAlign: TextAlign.start,
              ),
            )),
      ],
    );
  }
}
