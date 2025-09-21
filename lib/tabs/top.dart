import 'package:crypto_glass_app/widgets/nft_card.dart';
import 'package:flutter/material.dart';

class TopTab extends StatelessWidget {
  const TopTab({super.key});

  @override
  Widget build(BuildContext context) {
    return const NftCard(
      imagePath: 'assets/images/ape2.png',
    );
  }
}
