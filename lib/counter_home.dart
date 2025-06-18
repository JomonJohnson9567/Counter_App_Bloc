import 'package:counter_app/Bloc/bloc_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterHome extends StatelessWidget {
  const CounterHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 224, 248, 4),
        title: Text('Counter App', style: TextStyle(color: Colors.black)),
        leading: Icon(Icons.merge_type, color: Colors.black),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            BlocBuilder<CounterBloc, CounterState>(
              builder: (context, state) {
                return Container(
                  width: 400,
                  height: 300,

                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 233, 222, 222),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,

                      children: [
                        Text(
                          'Counter Value: ${state.count}',
                          style: const TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                        const SizedBox(height: 20),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            ElevatedButton.icon(
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.red,
                              ),
                              onPressed: () {
                                context.read<CounterBloc>().add(
                                  CounterDecrementEvent(state.count - 1),
                                );
                              },
                              icon: const Icon(
                                Icons.remove,
                                color: Colors.white,
                              ),
                              label: const Text(
                                'Decrement',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            const SizedBox(width: 20),
                            ElevatedButton.icon(
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.green,
                              ),
                              onPressed: () {
                                context.read<CounterBloc>().add(
                                  CounterIncrementEvent(state.count + 1),
                                );
                              },
                              icon: const Icon(Icons.add, color: Colors.white),
                              label: const Text(
                                'Increment',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 20),
                        FloatingActionButton(
                          backgroundColor: Colors.black,
                          onPressed: () {
                            context.read<CounterBloc>().add(
                              CounterResetEvent(),
                            );
                          },
                          child: Icon(
                            Icons.refresh,
                            color: const Color.fromARGB(255, 224, 248, 4),
                            size: 30,
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
