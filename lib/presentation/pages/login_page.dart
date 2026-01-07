import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:query_07_01_2025/query_07_01_2025.dart';
import 'package:query_07_01_2025/src/data/models/AuthModel.dart';
import 'package:ui_kit_07_01_2026/ui_kit_07_01_2026.dart';

class LoginPage extends StatelessWidget {
  final _email = TextEditingController();
  final _password = TextEditingController();

  LoginPage({super.key});


  void onResponse(){

  }
  void onError(){

  }

  @override
  Widget build(BuildContext context) {
    var theme = CustomTheme.of(context);
    return Scrollbar(
      child: Scaffold(
        backgroundColor: theme.palette.white,
        body: Padding(
          padding: EdgeInsets.only(
            top: 103.h,
            bottom: 56.h,
            left: 20.w,
            right: 20.w,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(bottom: 64.h),
                    child: Column(
                      spacing: 23.h,
                      children: [
                        Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(left: 16.w),
                              child: SizedBox(width: 32.w, height: 32.h),
                            ),
                            Text(
                              'Добро пожаловать!',
                              style: theme.style.title1Heavy14,
                            ),
                          ],
                        ),
                        Text(
                          'Войдите, чтобы пользоваться функциями приложения',
                          style: theme.style.textRegular15.copyWith(
                            color: theme.palette.black,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(bottom: 14.h),
                    child: InputWidget(
                      label: "Вход по E-mail",
                      hint: "example@mail.com",
                      error: '',
                      controller: _email,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(bottom: 14.h),
                    child: InputWidget(
                      label: "Пароль",
                      hint: "",
                      error: '',
                      controller: _password,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(bottom: 15.h),
                    child: BigButtonWidget.filled(
                      text: "Далее",
                      onTap: () {},
                      //   QueryUseCase().login(onResponse: onResponse, onError: onError,
                      //       email: _email.text,
                      //       password: _password.text);
                      // },

                      theme: theme,
                    ),
                  ),
                  Center(
                    child: Text(
                      'Зарегистрироваться',
                      style: theme.style.textRegular15.copyWith(
                        color: theme.palette.accent,
                      ),
                    ),
                  ),
                  SizedBox(height: 10.h),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
