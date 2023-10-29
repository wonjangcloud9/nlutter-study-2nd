import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tiktok/constants/gaps.dart';
import 'package:tiktok/constants/sizes.dart';
import 'package:tiktok/features/authentication/widgets/auth_button.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  void onLoginTap(BuildContext context) {
    Navigator.of(context).pop();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: Sizes.size40,
          ),
          child: Column(
            children: [
              Gaps.v80,
              Text(
                "틱톡에 로그인하세요.",
                style: TextStyle(
                  fontSize: Sizes.size24,
                  fontWeight: FontWeight.w700,
                ),
              ),
              Gaps.v20,
              Text(
                "로그인하여 즐거운 시간을 보내세요.",
                style: TextStyle(
                  fontSize: Sizes.size16,
                  color: Colors.black45,
                  fontWeight: FontWeight.w400,
                ),
              ),
              Gaps.v40,
              AuthButton(
                icon: FaIcon(FontAwesomeIcons.user),
                text: "이메일 주소로 계속하기",
              ),
              Gaps.v16,
              AuthButton(
                icon: FaIcon(FontAwesomeIcons.apple),
                text: "애플 아이디로 계속하기",
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.grey.shade100,
        elevation: 2,
        child: Padding(
          padding: const EdgeInsets.symmetric(
            vertical: Sizes.size32,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "계정이 없으신가요?",
              ),
              Gaps.h5,
              GestureDetector(
                onTap: () => onLoginTap(context),
                child: Text(
                  "가입하기",
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    color: Theme.of(context).primaryColor,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
