// import 'package:blyr/ui/common/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class FilledBtn extends StatelessWidget {
  final String text;
  final Color? textColor;
  final Color? backgroundColor;
  final Function()? onPressed;
  final Color? borderColor;
  final double borderWidth;
  final bool hasIcon;
  final String? icon;

  const FilledBtn({
    super.key,
    required this.text,
    this.textColor = Colors.white,
    this.onPressed,
    this.backgroundColor,
    this.borderColor,
    this.borderWidth = 2.0,
    this.hasIcon = false,
    this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 43,
      child: TextButton(
        style: ButtonStyle(
          backgroundColor: WidgetStateProperty.all(
            backgroundColor ?? Color(0xff0357ee),
          ),
          shape: WidgetStateProperty.all(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(4.r),
            ),
          ),
          overlayColor: WidgetStateProperty.all(Colors.transparent),
          foregroundColor: WidgetStateProperty.all(Colors.transparent),
        ),
        onPressed: onPressed,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: hasIcon
              ? Row(
                  children: [
                    SvgPicture.asset(
                      icon!,
                      color: textColor,
                      height: 15,
                    ),
                    const SizedBox(width: 6),
                    Text(
                      text,
                      style: GoogleFonts.karla(
                        fontSize: 14,
                        // height: 1.65,
                        fontWeight: FontWeight.w600,
                        letterSpacing: -.2,
                        color: textColor,
                      ),
                    ),
                  ],
                )
              : Text(
                  text,
                  style: GoogleFonts.karla(
                    fontSize: 14,
                    // height: 1.65,
                    fontWeight: FontWeight.w600,
                    letterSpacing: -.2,
                    color: textColor,
                  ),
                ),
        ),
      ),
    );
  }
}
