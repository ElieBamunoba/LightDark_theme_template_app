import 'package:dark_theme/constants/constants.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../app_theme.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: RadialGradient(
              center: const Alignment(-0.8, -0.3),
              radius: 1,
              colors: ThemeProvider(isLightTheme: true)
                  .themeMode()
                  .gradientColors!),
        ),
        child: Stack(
          fit: StackFit.expand,
          children: [
            SafeArea(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(DateTime.now().hour.toString(),
                        style: Theme.of(context).textTheme.displayLarge),
                    SizedBox(
                      width: size.width * .2,
                      child: const Divider(
                          height: 0, thickness: 1, color: Colors.white),
                    ),
                    Text(DateTime.now().minute.toString(),
                        style: Theme.of(context)
                            .textTheme
                            .displayLarge!
                            .copyWith(color: AppColors.white)),
                    const Spacer(),
                    const Text('Light Dark\nPersonal\nSwitch',
                        style: TextStyle(
                            fontSize: 40, fontWeight: FontWeight.bold)),
                    const Spacer(),
                    Container(
                        width: size.width * .2,
                        height: size.width * .2,
                        decoration: BoxDecoration(
                            color: ThemeProvider(isLightTheme: true)
                                .themeMode()
                                .switchColor,
                            borderRadius:
                                BorderRadius.circular(8)), // BoxDecoration
                        child: const Icon(Icons.nights_stay_outlined,
                            size: 50, color: AppColors.white)),
                    SizedBox(
                        width: size.width * .2,
                        child: const Divider(
                            // height: 0,
                            thickness: 1,
                            color: AppColors.white)),
                    Text(
                      "30\u00B0C",
                      style: Theme.of(context)
                          .textTheme
                          .displayMedium!
                          .copyWith(color: AppColors.white),
                    ), // Text
                    Text("Clear",
                        style:
                            Theme.of(context).textTheme.headlineSmall), // Text
                    Text(DateFormat('EEEE').format(DateTime.now()),
                        style:
                            Theme.of(context).textTheme.headlineSmall), // Text
                    Text(DateFormat('MMM d').format(DateTime.now()),
                        style:
                            Theme.of(context).textTheme.headlineSmall), // Text
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
