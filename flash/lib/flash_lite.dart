import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:torch_controller/torch_controller.dart';

class FlashLite extends StatefulWidget {
  const FlashLite({Key? key}) : super(key: key);

  @override
  State<FlashLite> createState() => _FlashLiteState();
}

class _FlashLiteState extends State<FlashLite> {
  final bgColor = const Color(0xff2C3333);
  final textColor = const Color(0xffE7F6F2);
  var isActive = false;
  var controller = TorchController();

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: bgColor,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        centerTitle: true,
        title: Text(
          "FlashLite",
          style: TextStyle(color: textColor),
        ),
      ),
      body: Column(
        children: [
          Expanded(
              child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    isActive ? 'assets/torch_on.png' : 'assets/torch_off.png',
                    width: 200,
                    height: 200,
                    color: isActive ? null : textColor.withOpacity(0.2),
                  ),
                  SizedBox(
                    height: size.height * 0.1,
                  ),
                  CircleAvatar(
                      minRadius: 30,
                      maxRadius: 45,
                      child: Transform.scale(
                        scale: 1.5,
                        child: IconButton(
                          onPressed: () {
                            controller.toggle();
                            isActive = !isActive;
                            setState(() {});
                          },
                          icon: const Icon(Icons.power_settings_new),
                        ),
                      )),
                ],
              ),
            ),
          )),
          Text(
            "Developed by BroTech",
            style: TextStyle(color: textColor, fontSize: 14.0),
          ),
          SizedBox(
            height: size.height * 0.05,
          ),
        ],
      ),
    );
  }
}
