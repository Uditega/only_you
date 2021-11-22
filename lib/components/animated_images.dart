import 'package:flutter/material.dart';

class LadyAnimation extends StatefulWidget {
  const LadyAnimation({Key? key}) : super(key: key);

  @override
  _LadyAnimationState createState() => _LadyAnimationState();
}

class _LadyAnimationState extends State<LadyAnimation> with SingleTickerProviderStateMixin {
  late final AnimationController _controller = AnimationController(vsync: this,
    duration: const Duration(seconds: 3)
  )..repeat(reverse: true);

  late final Animation<Offset> _ladyAnimate = Tween(
    begin: const Offset(-0.2,0),
    end: const Offset(0.01,0),
  ).animate(CurvedAnimation(parent: _controller, curve: Curves.easeInOut));

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SlideTransition(
        position: _ladyAnimate,
      child: Image.asset("images/lady cartoon.png",
          width: 300, height: 200
      ),
    );
  }
}


