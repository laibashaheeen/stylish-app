import 'package:flutter/material.dart';

class RatingStar extends StatelessWidget {
  const RatingStar({ super.key });

  @override
  Widget build(BuildContext context) {
    return Row(
                      children: List.generate(
                        5,
                        (index) {
                          if (index < 4) {
                            return const Icon(
                              Icons.star,
                              color: Colors.amber,
                              size: 14,
                            );
                          } else {
                            return const Icon(
                              Icons.star_half,
                              color: Colors.grey,
                              size: 14,
                            );
                          }
                        },
                      ),
                    );
  }
}

