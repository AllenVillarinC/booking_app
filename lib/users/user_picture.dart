import 'package:booking_app/configs/imports.dart';

class UserPicture extends StatefulWidget {
  final double size;
  final String image;
  const UserPicture({super.key, required this.size, required this.image});

  @override
  State<UserPicture> createState() => _UserPictureState();
}

class _UserPictureState extends State<UserPicture> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: widget.size,
      height: widget.size,
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(widget.size / 2),
            color: Color(backgroundColors[avatarBackgroundNumber])),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(widget.size / 2),
          child: Image.asset(
            widget.image,
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
