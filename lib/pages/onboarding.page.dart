import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:realstate/pages/login.page.dart';

class OnboardingPage1 extends StatelessWidget {
  const OnboardingPage1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF6F7FB),
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(height: 10.h),

            /// ==== TOP ILLUSTRATION ====
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: Image.asset(
                "assets/Frame 1171275471.png", // replace with your exact illustration
                height: 320,
                fit: BoxFit.contain,
              ),
            ),

            SizedBox(height: 20.h),

            /// ==== TITLE ====
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 25.w),
              child: Text(
                "Find Your Perfect Home\nEasily",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 28.sp,
                  fontWeight: FontWeight.w700,
                  color: Color(0xffE86A34),
                  height: 1.3,
                ),
              ),
            ),

            SizedBox(height: 15.h),

            /// ==== DESCRIPTION ====
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 28.w),
              child: Text(
                "Discover verified properties, trusted agents, "
                "and smooth buying–selling experiences — all in one place. "
                "Your dream home is now just a tap away.",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 15.sp,
                  height: 1.55,
                  color: Color(0xff7B7B7B),
                ),
              ),
            ),

            const Spacer(),

            /// ==== PAGE INDICATOR DOTS ====
            Row(
              children: [
                /// LEFT EMPTY SPACE
                Expanded(child: SizedBox()),

                /// CENTER DOTS
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    dot(true),
                    SizedBox(width: 10.w),
                    dot(false),
                    SizedBox(width: 10.w),
                    dot(false),
                  ],
                ),

                /// RIGHT ARROW BUTTON
                Expanded(
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          CupertinoPageRoute(builder: (context) => LoginPage()),
                        );
                      },
                      child: Container(
                        margin: EdgeInsets.only(right: 25.w),
                        height: 50.h,
                        width: 50.w,
                        decoration: const BoxDecoration(
                          color: Color(0xffE86A34),
                          shape: BoxShape.circle,
                        ),
                        child: const Icon(
                          Icons.arrow_forward,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 40.h),
            Align(
              alignment: AlignmentGeometry.centerRight,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 28.w),
                child: const Text(
                  "Skip",
                  style: TextStyle(
                    fontSize: 16,
                    color: Color(0xffE86A34),
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),

            SizedBox(height: 25.h),
          ],
        ),
      ),
    );
  }

  /// Page indicator dot
  Widget dot(bool active) {
    return Container(
      width: 14,
      height: 14,
      decoration: BoxDecoration(
        color: active ? const Color(0xffE86A34) : const Color(0xffF2C3A5),
        shape: BoxShape.circle,
      ),
    );
  }
}
