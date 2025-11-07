import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '/presentation/providers/providers.dart';


// class RiverpodProviderScreen extends ConsumerWidget {
//   const RiverpodProviderScreen({super.key});

//   @override
//   Widget build(BuildContext context, WidgetRef ref ) {

//     final name = ref.watch(simpleNameProvider);
    
    // return Scaffold(
    //   appBar: AppBar(
    //     title: const Text('Provider'),
    //   ),
    //   body: Center(
    //     child: Text(name),
    //   ),
    // );
//   }
// }

class RiverpodProviderScreen extends ConsumerStatefulWidget {
  const RiverpodProviderScreen({super.key});

  @override
  RiverpodProviderScreenState createState() => RiverpodProviderScreenState();
}

class RiverpodProviderScreenState extends ConsumerState<RiverpodProviderScreen> {

  @override
  Widget build(BuildContext context) {

    final name = ref.watch(simpleNameProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Simple Riverpod Provider'),
      ),
      body: Center(
        child: Text(name),
      ),
    );
  }
}