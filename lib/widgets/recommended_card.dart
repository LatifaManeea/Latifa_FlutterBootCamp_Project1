import 'package:flutter/material.dart';
import 'package:latifa_almaneea_project1/model/place_model.dart';
import '../theme/app_colors.dart';

class RecommendedCard extends StatefulWidget {
  final PlaceModel place;
  final double width;
  final VoidCallback onExplore;

  const RecommendedCard({
    super.key,
    required this.place,
    required this.width,
    required this.onExplore,
  });

  @override
  State<RecommendedCard> createState() => _RecommendedCardState();
}

class _RecommendedCardState extends State<RecommendedCard> {
  bool isHovering = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => setState(() => isHovering = true),
      onExit: (_) => setState(() => isHovering = false),
      child: GestureDetector(
        onTap: widget.onExplore,
        child: AnimatedScale(
          scale: isHovering ? 1.03 : 1.0,
          duration: const Duration(milliseconds: 150),
          curve: Curves.easeOut,
          child: Container(
            height: 140,
            width: widget.width,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              boxShadow: [
                BoxShadow(
                  color: AppColors.primary.withOpacity(isHovering ? 0.3 : 0.15),
                  blurRadius: isHovering ? 12 : 6,
                  offset: const Offset(0, 3),
                ),
              ],
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(16),
              child: Row(
                children: [
                  SizedBox(
                    width: 140,
                    height: 140,
                    child: Image.network(widget.place.image, fit: BoxFit.cover),
                  ),
                  Expanded(
                    child: Container(
                      padding: const EdgeInsets.all(12),
                      color: AppColors.cardBackground,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            widget.place.name,
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: AppColors.textDark,
                            ),
                          ),
                          const SizedBox(height: 6),
                          Text(
                            widget.place.description,
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(fontSize: 12, color: AppColors.textLight),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}