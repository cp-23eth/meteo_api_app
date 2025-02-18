import 'package:component_library/component_library.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
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

  int selectedLocation = 0;

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
          : MeteoDesign(
              meteo: state.meteo[selectedLocation],
            ),
    );
  }

  @override
  Widget build(BuildContext context) {
    // final state = context.watch<MeteoListProvider>().state;

    String loca = '';
    if (selectedLocation == 0) {
      loca = 'Saint-Imier';
    } else if (selectedLocation == 1) {
      loca = 'Les Bois';
    } else if (selectedLocation == 2) {
      loca = 'Bienne';
    }

    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF725AC1),
        shadowColor: Colors.grey[500],
        elevation: 6,
        title: Text(
          loca,
          style: GoogleFonts.merriweather(
            fontSize: 28,
            fontWeight: FontWeight.w400,
            color: Colors.white,
          ),
        ),
        actions: [
          PopupMenuButton(
            onSelected: (value) {
              setState(
                () {
                  selectedLocation = value;
                },
              );
            },
            itemBuilder: (BuildContext context) {
              return [
                PopupMenuItem(
                  value: 0,
                  child: Text(
                    'Saint-Imier',
                    style: GoogleFonts.merriweather(
                      color: Colors.grey[700],
                      fontSize: 15,
                    ),
                  ),
                ),
                PopupMenuItem(
                  value: 1,
                  child: Text(
                    'Les Bois',
                    style: GoogleFonts.merriweather(
                      color: Colors.grey[700],
                      fontSize: 15,
                    ),
                  ),
                ),
                PopupMenuItem(
                  value: 2,
                  child: Text(
                    'Bienne',
                    style: GoogleFonts.merriweather(
                      color: Colors.grey[700],
                      fontSize: 15,
                    ),
                  ),
                ),
              ];
            },
          )
        ],
      ),
      body: _showMeteo(),
    );
  }
}
