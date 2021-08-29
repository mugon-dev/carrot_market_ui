import 'package:carrot_market_ui/models/neighborhood_life.dart';
import 'package:flutter/material.dart';

class LifeBody extends StatelessWidget {
  final NeighborhoodLife neighborhoodLife;
  const LifeBody({Key? key, required this.neighborhoodLife}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white,
          border: Border(
            bottom: BorderSide(width: 0.5, color: Color(0xffd4d5dd)),
          )),
      child: Column(
        children: [
          _buildTop(),
          _buildWriter(),
          _buildWriting(),
          _buildImage(),
          Divider(height: 1, thickness: 1, color: Colors.grey[300]),
          _buildTail(neighborhoodLife.commentCount),
        ],
      ),
    );
  }

  Widget _buildTail(int commentCount) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Container(color: Colors.lime[100], height: 50),
    );
  }

  Widget _buildImage() {
    return Padding(
      padding: const EdgeInsets.only(left: 16, right: 16, bottom: 16),
      child: Container(color: Colors.black, height: 150),
    );
  }

  Widget _buildWriting() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
      child: Container(color: Colors.blue[100], height: 50),
    );
  }

  Widget _buildWriter() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Container(color: Colors.red[100], height: 30),
    );
  }

  Widget _buildTop() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
      child: Container(color: Colors.orange[100], height: 30),
    );
  }
}
