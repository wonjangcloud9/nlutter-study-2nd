import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tiktok/constants/sizes.dart';
import 'package:tiktok/utils.dart';

class UserPost2 extends StatelessWidget {
  const UserPost2({
    super.key,
    required this.faker,
  });

  final Faker faker;

  String truncateWithEllipsis(String text, int cutoff) {
    return text.length > cutoff ? '${text.substring(0, cutoff)}...' : text;
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 400,
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: Sizes.size4,
          vertical: Sizes.size8,
        ),
        child: Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: Sizes.size12,
                    vertical: Sizes.size2,
                  ),
                  child: CircleAvatar(
                    backgroundImage: NetworkImage(
                      faker.image.image(),
                      scale: 1.5,
                    ),
                  ),
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text(
                            truncateWithEllipsis(
                              faker.person.name(),
                              15,
                            ),
                            style: const TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(
                            width: Sizes.size4,
                          ),
                          const Spacer(),
                          Text(
                            '${faker.randomGenerator.integer(10)}h',
                            style: const TextStyle(
                              fontSize: 20,
                              color: Colors.grey,
                            ),
                          ),
                          const SizedBox(
                            width: Sizes.size4,
                          ),
                          GestureDetector(
                            onTap: () {},
                            child: const Icon(
                              Icons.more_horiz,
                              size: 30,
                            ),
                          ),
                        ],
                      ),
                      Text(
                        faker.lorem.sentence(),
                        style: const TextStyle(
                          fontSize: 20,
                        ),
                      ),
                      const SizedBox(
                        height: Sizes.size8,
                      ),
                      Container(
                        height: 240,
                        width: 330,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.grey,
                          ),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  ScaleTransition(
                                    scale: const AlwaysStoppedAnimation(0.8),
                                    child: CircleAvatar(
                                      backgroundImage: NetworkImage(
                                        faker.image.image(),
                                        scale: 1,
                                      ),
                                    ),
                                  ),
                                  Text("  ${faker.person.name()}"),
                                  const Icon(
                                    Icons.check_circle,
                                    color: Colors.blue,
                                    size: 15,
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: Sizes.size8,
                              ),
                              Text("  ${faker.lorem.sentence()}"),
                              const SizedBox(
                                height: Sizes.size8,
                              ),
                              Expanded(
                                child: Container(
                                  width: 330,
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      color: Colors.grey,
                                    ),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Image.network(
                                    faker.image.image(),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: Sizes.size8,
                      ),
                      Row(
                        children: [
                          SizedBox(
                            height: 30,
                            width: 30,
                            child: Icon(
                              FontAwesomeIcons.heart,
                              color: isDarkMode(context)
                                  ? Colors.white
                                  : Colors.black,
                              size: 25,
                            ),
                          ),
                          const SizedBox(
                            width: Sizes.size8,
                          ),
                          SizedBox(
                            height: 30,
                            width: 30,
                            child: Icon(
                              FontAwesomeIcons.comment,
                              color: isDarkMode(context)
                                  ? Colors.white
                                  : Colors.black,
                              size: 25,
                            ),
                          ),
                          const SizedBox(
                            width: Sizes.size8,
                          ),
                          SizedBox(
                            height: 30,
                            width: 30,
                            child: Icon(
                              FontAwesomeIcons.recycle,
                              color: isDarkMode(context)
                                  ? Colors.white
                                  : Colors.black,
                              size: 25,
                            ),
                          ),
                          const SizedBox(
                            width: Sizes.size8,
                          ),
                          SizedBox(
                            height: 30,
                            width: 30,
                            child: Icon(
                              FontAwesomeIcons.paperPlane,
                              color: isDarkMode(context)
                                  ? Colors.white
                                  : Colors.black,
                              size: 25,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const Divider(
              thickness: 1,
            ),
          ],
        ),
      ),
    );
  }
}
