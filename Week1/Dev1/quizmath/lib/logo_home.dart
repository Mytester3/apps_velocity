import 'package:flutter/material.dart';

class LogoHome extends StatefulWidget {
  @override
  _LogoHomeState createState() => _LogoHomeState();
}

class _LogoHomeState extends State<LogoHome>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();

    _animationController = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 1000),
    );

    _animation = Tween<double>(begin: 10.0, end: 1.3).animate(
      CurvedAnimation(
        parent: _animationController,
        curve: Curves.easeInOut,
      ),
    );
    _animationController.reset();
    _animationController.forward();
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        _animationController.reset();
        _animationController.forward();
        // TODO: Handle button tap
      },
      child: AnimatedBuilder(
          animation: _animationController,
          builder: (context, child) {
            return Transform.scale(
              scale: _animation.value,
              child: child,
            );
          },
          child: Column(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Container(
                  width: 80,
                  height: 80,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.blue,
                  ),
                  child: Image.asset(
                    'assets/hinhhuongdan.png',
                    width: 40,
                    height: 40,
                  ),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4),
                  color: Colors.green.withOpacity(0.4),
                ),
                child: Container(
                  margin: const EdgeInsets.symmetric(horizontal: 12),
                  child: const Text(
                    "Quiz Math Kid",
                  ),
                ),
              )
            ],
          )),
    );
  }
}
