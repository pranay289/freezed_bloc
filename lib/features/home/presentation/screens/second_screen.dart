import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:go_router/go_router.dart';
// import 'dart:ui' as ui;

class MySecondScreen extends StatelessWidget {
  const MySecondScreen({super.key});
  static const platform = MethodChannel("MY_CHANNEL");

  Future<bool> showToast(String message) async {
    try {
      final result = await platform.invokeMethod("showToast", message);
      return result;
    }  catch (_) {
      return false;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Center(
            child: Text("Second"),
          ),
          TextButton(
            key: const Key("tap"),
            onPressed: () {
              context.goNamed("second");
              showToast("Hello flutter channel");
            },
            child: const Text("data"),
          )
        ],
      ),
    );
  }
}

// /// The body of the app. We'll use this stateful widget to manage initialization
// /// of the shader program.
// class MySecondScreen extends StatefulWidget {
//   const MySecondScreen({super.key,});

//   // final String title;

//   @override
//   State<MySecondScreen> createState() => _MySecondScreenState();
// }

// class _MySecondScreenState extends State<MySecondScreen> {
//   bool _futuresInitialized = false;

//   static const String _shaderKey = 'shaders/example.frag';

//   Future<void> _initializeFutures() async {
//     // Loading the shader from an asset is an asynchronous operation, so we
//     // need to wait for it to be loaded before we can use it to generate
//     // Shader objects.
//     await FragmentProgramManager.initialize(_shaderKey);
//     if (!mounted) {
//       return;
//     }
//     setState(() {
//       _futuresInitialized = true;
//     });
//   }

//   @override
//   void initState() {
//     _initializeFutures();
//     super.initState();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             if (_futuresInitialized)
//               AnimatedShader(
//                 program: FragmentProgramManager.lookup(_shaderKey),
//                 duration: const Duration(seconds: 2),
//                 size:  Size(MediaQuery.sizeOf(context).width, MediaQuery.sizeOf(context).height),
//               )
//             else
//               const Text('Loading...'),
//           ],
//         ),
//       ),
//     );
//   }
// }

// /// A custom painter that updates the float uniform at index 0 with the
// /// current animation value and uses the shader to configure the Paint
// /// object that draws a rectangle onto the canvas.
// class AnimatedShaderPainter extends CustomPainter {
//   AnimatedShaderPainter(this.shader, this.animation) : super(repaint: animation);

//   final ui.FragmentShader shader;
//   final Animation<double> animation;

//   @override
//   void paint(Canvas canvas, Size size) {
//     shader.setFloat(0, animation.value);
//     canvas.drawRect(Offset.zero & size, Paint()..shader = shader);
//   }

//   @override
//   bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
// }

// /// This widget drives the animation of the AnimatedProgramPainter above.
// class AnimatedShader extends StatefulWidget {
//   const AnimatedShader({
//     super.key,
//     required this.program,
//     required this.duration,
//     required this.size,
//   });

//   final ui.FragmentProgram program;
//   final Duration duration;
//   final Size size;

//   @override
//   State<AnimatedShader> createState() => AnimatedShaderState();
// }

// class AnimatedShaderState extends State<AnimatedShader>
//                           with SingleTickerProviderStateMixin {
//   late AnimationController _controller;
//   late final ui.FragmentShader _shader;

//   @override
//   void initState() {
//     super.initState();
//     _shader = widget.program.fragmentShader()
//       ..setFloat(0, 0.0)
//       ..setFloat(1, widget.size.width.toDouble())
//       ..setFloat(2, widget.size.height.toDouble());
//     _controller = AnimationController(
//       vsync: this,
//       duration: widget.duration,
//     )
//     ..addListener(() {
//       setState(() {});
//     })
//     ..addStatusListener((AnimationStatus status) {
//       switch (status) {
//         case AnimationStatus.completed:
//           _controller.reverse();
//           break;
//         case AnimationStatus.dismissed:
//           _controller.forward();
//           break;
//         default:
//           break;
//       }
//     })
//     ..forward();
//   }

//   @override
//   void didUpdateWidget(AnimatedShader oldWidget) {
//     super.didUpdateWidget(oldWidget);
//     _controller.duration = widget.duration;
//   }

//   @override
//   void dispose() {
//     _controller.dispose();
//     _shader.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return CustomPaint(
//       painter: AnimatedShaderPainter(_shader, _controller),
//       size: widget.size,
//     );
//   }
// }

// /// A utility class for initializing shader programs from asset keys.
// class FragmentProgramManager {
//   static final Map<String, ui.FragmentProgram> _programs = <String, ui.FragmentProgram>{};

//   static Future<void> initialize(String assetKey) async {
//     if (!_programs.containsKey(assetKey)) {
//       final ui.FragmentProgram program = await ui.FragmentProgram.fromAsset(
//         assetKey,
//       );
//       _programs.putIfAbsent(assetKey, () => program);
//     }
//   }

//   static ui.FragmentProgram lookup(String assetKey) => _programs[assetKey]!;
// }