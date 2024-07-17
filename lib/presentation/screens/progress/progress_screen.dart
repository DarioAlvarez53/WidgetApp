import 'package:flutter/material.dart';

class ProgressScreen extends StatelessWidget {

  static const name = 'progress_screeen';

  const ProgressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Progress Indicators'),
      ),
      body: const _ProgressView(),
    );
  }
}

class _ProgressView extends StatelessWidget {
  const _ProgressView();

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Column(
        children: [
          SizedBox(
            height: 40,
          ),
          Text('Circular Progress Indicator'),
          SizedBox(height: 20),
          //este es el progress indicator infinito
          CircularProgressIndicator(strokeWidth: 4, backgroundColor: Colors.black12,),
          SizedBox(height: 20),
          Text('Circular y Linear Indicator Controlado'),
          SizedBox(height: 20),
          _ControlledProgressIndicator(),
        ],
      ),
    );
  }
}

class _ControlledProgressIndicator extends StatelessWidget {
  const _ControlledProgressIndicator();

  @override
  Widget build(BuildContext context) {
    return StreamBuilder( //este se va a llenar en tiempo de ejecucion
      stream: Stream.periodic(const Duration(milliseconds: 300), (value) {
        return (value*2)/100;
      }).takeWhile((value) => value < 100),
      builder: (context, snapshot) {

        final progressValue = snapshot.data ?? 0;

        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircularProgressIndicator(value: progressValue, strokeWidth: 4, backgroundColor: Colors.black12,),
              const SizedBox(width: 20, ),
              Expanded(
                child: LinearProgressIndicator(value: progressValue,))
            ],
          ),
        );
      }
    );
  }
}