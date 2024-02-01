import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

// Define a StatefulWidget for an Instagram-like widget
class IgWidget extends StatefulWidget {
  final String nameSurname; // User's name and surname
  final String? imageUrl; // User's profile image URL (nullable)
  final String photos; // URL of the photo posted by the user

  IgWidget({
    required this.nameSurname,
    this.imageUrl,
    required this.photos,
  });

  @override
  _IgWidgetState createState() => _IgWidgetState();
}

class _IgWidgetState extends State<IgWidget> {
  bool isFavorite = false; // State variable for the like button
  bool isBookmark = false; // State variable for the bookmark button

  @override
  Widget build(BuildContext context) {
    // Build the main Card widget that represents an Instagram post
    return Card(
      elevation: 0, // Set elevation to 0 for a flat appearance
      child: Column(
        children: [
          // User information section
          Row(
            children: [
              // Display user's profile image or a default icon
              Padding(
                padding: const EdgeInsets.only(bottom: 20, left: 10, top: 20),
                child: Container(
                  // Decorate the circular container with a gradient
                  padding: const EdgeInsets.all(4),
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    gradient: LinearGradient(
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                      colors: [
                        Color(0xff8a3ab9),
                        Color(0xffe95950),
                        Color(0xffbc2a8d),
                        Color(0xfffccc63),
                        Color(0xfffbad50),
                        Color(0xffcd486b),
                        Color(0xff4c68d7)
                      ],
                    ),
                  ),
                  // Display user's profile image or a default icon
                  child: CircleAvatar(
                    radius: 30,
                    foregroundImage: widget.imageUrl != null
                        ? NetworkImage(widget.imageUrl!)
                        : null,
                    child: widget.imageUrl == null
                        ? const Icon(
                            Icons.person,
                            size: 50,
                          )
                        : null,
                  ),
                ),
              ),
              const SizedBox(width: 10),
              // Display user's name and surname
              Padding(
                padding: const EdgeInsets.only(left: 5),
                child: Text(
                  widget.nameSurname,
                  style: const TextStyle(
                      fontSize: 22, fontWeight: FontWeight.bold),
                ),
              ),
              const Spacer(),
              // More options button
              IconButton(
                icon: const Icon(
                  Icons.more_vert,
                  size: 30,
                ),
                onPressed: () {},
              ),
            ],
          ),
          // User's posted photo
          SizedBox(
            width: double.infinity,
            child: Image.network(
              widget.photos,
              fit: BoxFit.fill,
            ),
          ),
          // Interaction buttons section (like, comment, location, bookmark)
          Column(
            children: [
              // Like button
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 5),
                    child: IconButton(
                      icon: Icon(Icons.favorite,
                          size: 30,
                          color: isFavorite ? Colors.red : Colors.black),
                      onPressed: () {
                        setState(() {
                          isFavorite = !isFavorite;
                        });
                      },
                    ),
                  ),
                  // Comment button
                  SizedBox(
                    child: IconButton(
                      onPressed: () {},
                      icon: const FaIcon(
                        FontAwesomeIcons.comment,
                        color: Colors.black,
                        size: 30,
                      ),
                    ),
                  ),
                  // Location Arrow button
                  SizedBox(
                    child: IconButton(
                      onPressed: () {},
                      icon: const FaIcon(
                        FontAwesomeIcons.locationArrow,
                        color: Colors.black,
                        size: 30,
                      ),
                    ),
                  ),
                  const Spacer(),
                  // Bookmark button
                  SizedBox(
                    child: IconButton(
                      onPressed: () {
                        setState(() {
                          isBookmark = !isBookmark;
                        });
                      },
                      icon: FaIcon(
                        isBookmark
                            ? FontAwesomeIcons.solidBookmark
                            : FontAwesomeIcons.bookmark,
                        color: Colors.black,
                      ),
                    ),
                  )
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
