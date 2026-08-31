import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:latifa_almaneea_project1/model/place_model.dart';
import '../data/places_data.dart';
import '../theme/app_colors.dart';
import '../widgets/recommended_card.dart';
import 'details_screen.dart';
 
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});
 
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}
 
class _HomeScreenState extends State<HomeScreen> {
  int selectedIndex = 0;
  bool isSearching = false;
  String searchQuery = "";
 

  List<PlaceModel> places = [];
 
 //runs exactly once, right when the screen is first created, before build() runs.
  @override
  void initState() {
    super.initState();
    getData();
  }
 
  void getData() {
    for (var item in placesData) {
      places.add(PlaceModel.fromJson(item));
    }
  }
 
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
 
    final filteredPlaces = places.where((place) {
      return place.name.toLowerCase().contains(searchQuery.toLowerCase());
    }).toList();
 
    final popularPlace = places[0];
    final recommendedPlaces = filteredPlaces.length > 1
        ? filteredPlaces.sublist(filteredPlaces.contains(popularPlace) ? 1 : 0)
        : filteredPlaces;
 
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        leading: const Icon(Icons.location_on_outlined, color: Colors.white),
        title: isSearching
            ? TextField(
                autofocus: true,
                style: const TextStyle(color: Colors.white),
                decoration: const InputDecoration(
                  hintText: 'Search destinations...',
                  hintStyle: TextStyle(color: Colors.white70),
                  border: InputBorder.none,
                ),
                onChanged: (value) {
                  setState(() {
                    searchQuery = value;
                  });
                },
              )
            : Text(
                'Rehlati',
                style: GoogleFonts.playfairDisplay(
                  fontWeight: FontWeight.w700,
                  fontSize: 26,
                  color: Colors.white,
                  letterSpacing: 0.5,
                ),
              ),
        centerTitle: true,
        backgroundColor: AppColors.primary,
        elevation: 0,
        actions: [
          IconButton(
            icon: Icon(isSearching ? Icons.close : Icons.search, color: Colors.white),
            onPressed: () {
              setState(() {
                isSearching = !isSearching;
                if (!isSearching) searchQuery = "";
              });
            },
          ),
          IconButton(
            icon: const Icon(Icons.favorite_border, color: Colors.white),
            onPressed: () {},
          ),
        ],
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          if (!isSearching || searchQuery.isEmpty) ...[
            Text(
              'Popular Destination',
              style: GoogleFonts.playfairDisplay(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: AppColors.textDark,
              ),
            ),
            const SizedBox(height: 12),
            buildFeaturedCard(context, popularPlace, screenWidth),
            const SizedBox(height: 28),
          ],
 
          Text(
            isSearching && searchQuery.isNotEmpty ? 'Search Results' : 'Recommended',
            style: GoogleFonts.playfairDisplay(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: AppColors.textDark,
            ),
          ),
          const SizedBox(height: 12),
 
          if (recommendedPlaces.isEmpty)
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Center(
                child: Text(
                  'No destinations found',
                  style: TextStyle(color: AppColors.textLight),
                ),
              ),
            )
          else
       
            // ListView.builder only builds what's visible (plus a small buffer).
            ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: recommendedPlaces.length,
              itemBuilder: (context, index) {
                final place = recommendedPlaces[index];
                return Padding(
                  padding: const EdgeInsets.only(bottom: 16),
                  child: RecommendedCard(
                    place: place,
                    width: screenWidth,
                    onExplore: () => navigateToDetails(context, place),
                  ),
                );
              },
            ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectedIndex,
        onTap: (index) {
          setState(() {
            selectedIndex = index;
          });
        },
        selectedItemColor: AppColors.primary,
        unselectedItemColor: AppColors.textLight,
        backgroundColor: AppColors.cardBackground,
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.favorite), label: 'Favorites'),
          BottomNavigationBarItem(icon: Icon(Icons.map), label: 'Explore'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
        ],
      ),
    );
  }
 
  Widget buildFeaturedCard(BuildContext context, PlaceModel place, double screenWidth) {
    return Container(
      height: 220,
      width: screenWidth,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: AppColors.primary.withOpacity(0.2),
            blurRadius: 8,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: Stack(
          fit: StackFit.expand,
          children: [
            Image.network(place.image, fit: BoxFit.cover),
            Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [Colors.transparent, AppColors.textDark.withOpacity(0.85)],
                ),
              ),
            ),
            Positioned(
              left: 16,
              right: 16,
              bottom: 16,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    place.name,
                    style: const TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    place.description,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(fontSize: 13, color: Colors.white70),
                  ),
                  const SizedBox(height: 10),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: AppColors.secondary,
                      foregroundColor: AppColors.textDark,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
                    ),
                    onPressed: () => navigateToDetails(context, place),
                    child: const Text('Explore'),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
 
  void navigateToDetails(BuildContext context, PlaceModel place) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => DetailsScreen(placeModel: place),
      ),
    );
  }
}
 