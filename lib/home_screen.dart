import 'package:flutter/material.dart';
import 'package:material_you/theme/app_theme.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _count = 0;
  int _bottomNavIndex = 0;

  bool get _isHomeSelected => _bottomNavIndex == 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Home')),
      body: _isHomeSelected ? CounterBody(number: _count) : const PaletteBody(),
      floatingActionButton: AnimatedSwitcher(
        duration: const Duration(milliseconds: 200),
        child: _isHomeSelected
            ? FloatingActionButton(
                onPressed: () => setState(_incrementCount),
                child: const Icon(Icons.add),
              )
            : const Offstage(),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _bottomNavIndex,
        onTap: _changeBottomNavIndex,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Counter',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.palette_outlined),
            label: 'Palette',
          ),
        ],
      ),
    );
  }

  void _incrementCount() {
    _count++;
  }

  void _changeBottomNavIndex(int index) {
    setState(() => _bottomNavIndex = index);
  }
}

class CounterBody extends StatelessWidget {
  const CounterBody({
    Key? key,
    required this.number,
  }) : super(key: key);

  final int number;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: Text('Tapped: $number'),
    );
  }
}

class PaletteBody extends StatelessWidget {
  const PaletteBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final styleData = AppTheme.of(context);
    final colorScheme = styleData.colorScheme;

    return ListView(
      padding: const EdgeInsets.all(16),
      children: [
        Text(
          'App Color Scheme',
          style: styleData.textTheme.headlineMedium,
        ),
        const SizedBox(height: 16),
        ColorTile(name: 'disabled', color: colorScheme.disabled),
        ColorTile(name: 'onDisabled', color: colorScheme.onDisabled),
        Text(
          'Material3 Color Scheme',
          style: styleData.textTheme.headlineMedium,
        ),
        const SizedBox(height: 16),
        Text(
          'brightness: ${colorScheme.brightness}',
          style: styleData.textTheme.headlineSmall,
        ),
        const SizedBox(height: 8),
        ColorTile(name: 'primary', color: colorScheme.primary),
        ColorTile(name: 'onPrimary', color: colorScheme.onPrimary),
        ColorTile(
            name: 'primaryContainer', color: colorScheme.primaryContainer),
        ColorTile(
            name: 'onPrimaryContainer', color: colorScheme.onPrimaryContainer),
        ColorTile(name: 'secondary', color: colorScheme.secondary),
        ColorTile(name: 'onSecondary', color: colorScheme.onSecondary),
        ColorTile(
            name: 'secondaryContainer', color: colorScheme.secondaryContainer),
        ColorTile(
            name: 'onSecondaryContainer',
            color: colorScheme.onSecondaryContainer),
        ColorTile(name: 'tertiary', color: colorScheme.tertiary),
        ColorTile(name: 'onTertiary', color: colorScheme.onTertiary),
        ColorTile(
            name: 'tertiaryContainer', color: colorScheme.tertiaryContainer),
        ColorTile(
            name: 'onTertiaryContainer',
            color: colorScheme.onTertiaryContainer),
        ColorTile(name: 'error', color: colorScheme.error),
        ColorTile(name: 'onError', color: colorScheme.onError),
        ColorTile(name: 'errorContainer', color: colorScheme.errorContainer),
        ColorTile(
            name: 'onErrorContainer', color: colorScheme.onErrorContainer),
        ColorTile(name: 'background', color: colorScheme.background),
        ColorTile(name: 'onBackground', color: colorScheme.onBackground),
        ColorTile(name: 'surface', color: colorScheme.surface),
        ColorTile(name: 'onSurface', color: colorScheme.onSurface),
        ColorTile(name: 'surfaceVariant', color: colorScheme.surfaceVariant),
        ColorTile(
            name: 'onSurfaceVariant', color: colorScheme.onSurfaceVariant),
        ColorTile(name: 'outline', color: colorScheme.outline),
        ColorTile(name: 'shadow', color: colorScheme.shadow),
        ColorTile(name: 'inverseSurface', color: colorScheme.inverseSurface),
        ColorTile(
            name: 'onInverseSurface', color: colorScheme.onInverseSurface),
        ColorTile(name: 'inversePrimary', color: colorScheme.inversePrimary),
      ],
    );
  }
}

class ColorTile extends StatelessWidget {
  const ColorTile({
    Key? key,
    required this.name,
    required this.color,
  }) : super(key: key);

  final String name;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(name, style: AppTheme.of(context).textTheme.headlineSmall),
        const SizedBox(height: 8),
        SizedBox.square(
          dimension: 100,
          child: ColoredBox(color: color),
        ),
        const SizedBox(height: 8),
      ],
    );
  }
}
