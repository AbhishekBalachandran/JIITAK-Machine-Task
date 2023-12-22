import 'package:flutter/material.dart';
import 'package:machine_task/utils/constants/color_constants/color_constants.dart';

class ImageContainer extends StatefulWidget {
  final String heading;
  final String sideHeading;
  final List images;

  const ImageContainer(
      {super.key,
      required this.heading,
      required this.sideHeading,
      required this.images});

  @override
  State<ImageContainer> createState() => _ImageContainerState();
}

class _ImageContainerState extends State<ImageContainer> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.sizeOf(context).height;
    return Container(
      child: Column(
        children: [
          // heading
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  widget.heading,
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: ColorConstants.primaryBlack),
                ),
                Text(
                  '*',
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: ColorConstants.primaryRed),
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  '(${widget.sideHeading})',
                  style: TextStyle(
                      color: Color.fromARGB(255, 156, 152, 150),
                      fontSize: 14,
                      fontWeight: FontWeight.w500),
                )
              ],
            ),
          ),
          Container(
            height: height * 0.15,
            width: double.infinity,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) => Padding(
                padding: const EdgeInsets.all(4),
                child: Container(
                  width: 100,
                  height: 100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                        image: AssetImage(
                          widget.images[index],
                        ),
                        fit: BoxFit.contain),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          IconButton(
                              onPressed: () {
                                setState(() {
                                  widget.images.removeAt(index);
                                });
                              },
                              icon: Icon(
                                Icons.close,
                                color: ColorConstants.primaryWhite,
                              ))
                        ],
                      )
                    ],
                  ),
                ),
              ),
              itemCount: widget.images.length,
            ),
          )
        ],
      ),
    );
  }
}

class ImageContainer2 extends StatefulWidget {
  const ImageContainer2({super.key});

  @override
  State<ImageContainer2> createState() => _ImageContainer2State();
}

class _ImageContainer2State extends State<ImageContainer2> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.sizeOf(context).height;
    List images = [
      'assets/images/gift1.png',
      'assets/images/gift2.png',
      'assets/images/gift3.png'
    ];
    return Container(
      height: height * 0.15,
      width: double.infinity,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => Padding(
          padding: const EdgeInsets.all(4),
          child: Container(
            width: 100,
            height: 100,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              image: DecorationImage(
                  image: AssetImage(
                    images[index],
                  ),
                  fit: BoxFit.contain),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    IconButton(
                        onPressed: () {
                          setState(() {
                            images.removeAt(index);
                          });
                        },
                        icon: Icon(
                          Icons.close,
                          color: ColorConstants.primaryWhite,
                        ))
                  ],
                )
              ],
            ),
          ),
        ),
        itemCount: images.length,
      ),
    );
  }
}
