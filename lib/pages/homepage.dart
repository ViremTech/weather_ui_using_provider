import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:weather_ui/themes/theme_provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.more_vert,
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(
              right: 10.0,
            ),
            child: Consumer<ThemeProvider>(
              builder: (context, themeProvider, child) {
                return Switch(
                  activeColor: Colors.white,
                  inactiveThumbColor: Colors.white,
                  thumbColor: const WidgetStatePropertyAll(
                    Colors.orange,
                  ),
                  thumbIcon: WidgetStatePropertyAll(
                    themeProvider.isSeleted
                        ? const Icon(Icons.nights_stay)
                        : const Icon(Icons.sunny),
                  ),
                  inactiveTrackColor: Colors.transparent,
                  value: themeProvider.isSeleted,
                  onChanged: (value) {
                    context.read<ThemeProvider>().toogleTheme();
                  },
                );
              },
            ),
          ),
        ],
      ),
      body: Consumer<ThemeProvider>(
        builder: (context, themeProviders, child) => Container(
          child: Center(
            child: Column(
              children: [
                const Text(
                  'Paris',
                  style: TextStyle(
                    fontSize: 36,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(
                  height: 30.0,
                ),
                Icon(
                  themeProviders.isSeleted ? Icons.nights_stay : Icons.sunny,
                  size: 250.0,
                  color: themeProviders.isSeleted
                      ? Colors.deepPurple
                      : Colors.orange,
                ),
                const SizedBox(
                  height: 30.0,
                ),
                const Text(
                  '20° C',
                  style: TextStyle(
                    fontSize: 30,
                  ),
                ),
                Text(
                  'Good Morning',
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.grey.shade500,
                  ),
                ),
                Text(
                  'NOIDA',
                  style: TextStyle(
                    fontSize: 38,
                    color: Colors.grey.shade600,
                  ),
                ),
                const SizedBox(
                  height: 50,
                ),
                const SizedBox(
                  width: 50,
                  child: Divider(
                    thickness: 3,
                  ),
                ),
                const SizedBox(
                  height: 50,
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Icon(
                            Icons.wb_twighlight,
                          ),
                          Text(
                            'SUNRISE',
                          ),
                          Text('7:00')
                        ],
                      ),
                      SizedBox(
                        height: 50,
                        child: VerticalDivider(
                          thickness: 1,
                          color: Colors.black,
                        ),
                      ),
                      Column(
                        children: [
                          Icon(
                            Icons.air,
                          ),
                          Text(
                            'Wind',
                          ),
                          Text('4m/s')
                        ],
                      ),
                      SizedBox(
                        height: 50,
                        child: VerticalDivider(
                          thickness: 1,
                          color: Colors.black,
                        ),
                      ),
                      Column(
                        children: [
                          Icon(
                            Icons.thermostat,
                          ),
                          Text(
                            'Temperature',
                          ),
                          Text('23')
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
