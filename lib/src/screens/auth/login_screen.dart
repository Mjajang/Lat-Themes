import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:lat_theme/src/screens/home/home_screen.dart';
import 'package:lat_theme/src/values/components/components.dart';
import 'package:lat_theme/src/values/constants/constants.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool passwordVisible = true;

  void _togglePasswordVisibility() {
    setState(() {
      passwordVisible = !passwordVisible;
    });
  }

  void login() {
    if (emailController.text.isNotEmpty && passwordController.text.isNotEmpty) {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (_) => const HomeScreen(),
        ),
      );
    } else {
      showCustomSnackbar(context, 'Semua field wajib diisi');
    }
  }

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light.copyWith(
      statusBarColor: Colors.transparent,
    ));

    return Scaffold(
      body: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage(Images.bgLogin),
              fit: BoxFit.cover,
            ),
          ),
          alignment: const Alignment(0, 0),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                    Container(
                      height: 94,
                      width: 94,
                      padding: const EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        color: Theme.of(context).colorScheme.surfaceVariant,
                        shape: BoxShape.circle,
                      ),
                      child: const FlutterLogo(),
                    ),
                    const SpaceHeight(20),
                    Text(
                      "UNIVERSITAS ABC",
                      style: Theme.of(context).textTheme.labelLarge!.copyWith(
                            fontWeight: FontWeight.bold,
                            letterSpacing: 0.3,
                            color: Colors.white,
                          ),
                    ),
                  ],
                ),
                const SpaceHeight(46),
                Column(
                  children: [
                    CustomTextFormFieldAuth(
                      controller: emailController,
                      title: 'Email',
                      inputAction: TextInputAction.next,
                    ),
                    const SpaceHeight(10),
                    CustomTextFormFieldAuth(
                      controller: passwordController,
                      title: 'Password',
                      obscureText: passwordVisible,
                      showSuffixIcon: true,
                      suffixIcon: passwordVisible
                          ? Icons.visibility_off
                          : Icons.visibility,
                      onSuffixIconPressed: _togglePasswordVisibility,
                      onEditingComplete: () => login(),
                    ),
                    const SpaceHeight(20),
                    Container(
                      margin: const EdgeInsets.symmetric(horizontal: 16),
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.25),
                            blurRadius: 4,
                            offset: const Offset(0, 5),
                          )
                        ],
                      ),
                      child: CustomButton.filledSecondary(
                        onPressed: () => login(),
                        label: 'Login',
                      ),
                    ),
                  ],
                ),
                const SpaceHeight(20),
                Align(
                  alignment: Alignment.centerRight,
                  child: Padding(
                    padding: const EdgeInsets.only(right: 20),
                    child: Text(
                      "v.1.0.0",
                      style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                            color: Colors.white,
                          ),
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
