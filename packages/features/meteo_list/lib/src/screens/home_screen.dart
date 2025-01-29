import 'package:component_library/component_library.dart';
import 'package:flutter/material.dart';
import 'package:meteo_list/meteo_list.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    super.initState();
    _fetchMeteo();
  }

  _fetchMeteo() {
    if (context.read<MeteoListProvider>().state.meteo.isEmpty) {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        context.read<MeteoListProvider>().fetchAndSetMeteo();
      });
    }
  }

  Widget _showMeteo() {
    final state = context.watch<MeteoListProvider>().state;

    if (state.status == MeteoListStatus.initial) {
      return const Center(
        child: Text('Home Screen'),
      );
    }

    return Container(
      child: state.status == MeteoListStatus.loading
          ? const Center(
              child: CircularProgressIndicator(),
            )
          : MeteoCard(meteo: state.meteo[0],),
    );
  }

  @override
  Widget build(BuildContext context) {
    // final state = context.watch<MeteoListProvider>().state;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlue,
        title: const Text('Meteo App'),
      ),
      body: _showMeteo(),
    );
  }
}
