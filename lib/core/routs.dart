import 'package:e_shilf/pages/login/view/sign_in.dart';
import 'package:e_shilf/pages/registration/view/otp.dart';
import 'package:flutter/material.dart';

import '../pages/dashboard/view/home_screen.dart';
import '../pages/login/view/otp_login.dart';
import '../pages/onboarding/view/onboarding.dart';
import '../pages/registration/view/register_status.dart';
import '../pages/registration/view/sign_up.dart';
import '../pages/registration/view/sign_up_phone.dart';
import '../pages/registration/view/upload_document.dart';
import '../pages/reset_password/otp_reset_password.dart';
import '../pages/reset_password/reset_password.dart';

class AppRouts {
  static const String onboarding = "/onboarding";
  static const String signUp = "/signUp";
  static const String signin = "/signin";
  static const String signUpPoneNumber = "/signUpPoneNumber";
  static const String otp = "/OTPscreen";
  static const String oTPLogin = "/OTPLoginScreen";
  static const String resetPassword = "/ResetPassword";
  static const String otpResetPassword = "/OtpResetPassword";
  static const String uploadDocumentScreen = "/UploadDocumentScreen";
  static const String registerStatus = "/RegisterStatus";
  static const String homeScreen = "/HomeScreen";
}

Map<String, WidgetBuilder> routes = {
  AppRouts.onboarding: (context) => const OnboardingScreen(),
  AppRouts.signUp: (context) => const SignUp(),
  AppRouts.signin: (context) => const SignIn(),
  AppRouts.signUpPoneNumber: (context) => const SignUpPhoneNumber(),
  AppRouts.otp: (context) => const OTPScreen(),
  AppRouts.oTPLogin: (context) => const OTPLoginScreen(),
  AppRouts.resetPassword: (context) => const ResetPassword(),
  AppRouts.otpResetPassword: (context) => const OtpResetPassword(),
  AppRouts.uploadDocumentScreen: (context) => const UploadDocumentScreen(),
  AppRouts.registerStatus: (context) => const RegisterStatus(),
  AppRouts.homeScreen: (context) => const HomeScreen(),
};
