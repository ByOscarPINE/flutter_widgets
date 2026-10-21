import 'package:flutter/material.dart';

class ButtonsScreen extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},),
        appBar: AppBar(
          title: Text('Botones'),
          backgroundColor: Colors.indigo,
          foregroundColor: Colors.white,
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              TextButton(
                onPressed: () {
          
                },
                child: Text('Text Button'),
              ),
              SizedBox(height: 10),
              FilledButton(
                onPressed: () {
          
                },
                child: Text('Filled Button'),
              ),
              SizedBox(height: 10),
              OutlinedButton(
                onPressed: () {
          
                },
                child: Text('Outlined Button'),
              ),
              SizedBox(height: 10),
              IconButton(
                onPressed: () {
          
                },
                icon: Icon(Icons.thumb_up),
              ),
              SizedBox(height: 10),
              FilledButton.icon(
                onPressed: () {
          
                },
                icon: Icon(Icons.send),
                label: Text('Send'),
              ),
              SizedBox(height: 10),
              OutlinedButton.icon(
                onPressed: () {
          
                },
                icon: Icon(Icons.tungsten),
                label: Text('Add'),
              ),
              SizedBox(height: 10),
              IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: Icon(Icons.arrow_back),
              ),
              SizedBox(height: 10),
              //cambio de estilo
              FilledButton(
                onPressed: () {
          
                },
                style: ButtonStyle(
                  backgroundColor: WidgetStateProperty.all<Color>(Colors.green),
                ),
                child: Text('Custom Style Button'),
              ),
              SizedBox(height: 10),
              //cambio de forma
                FilledButton(
                  onPressed: () {
            
                  },
                  style: FilledButton.styleFrom(
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(16.0),
                          bottomRight: Radius.circular(16.0),
                        ),
                      ),
                    ),
                  child: Text('Custom Shape Button'),
                ),
              SizedBox(height: 10),
              //degradaro
              ShaderMask(
                shaderCallback: (bounds) {
                  return const LinearGradient(
                    colors: [Colors.purple, Colors.blue],
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                  ).createShader(bounds);
                },
                blendMode: BlendMode.srcATop,
                child: FilledButton.tonalIcon(
                  onPressed: () {},
                  icon: const Icon(Icons.gradient),
                  label: const Text('Tonal Icon Button'),
                ),
              )
            ],
          ),
        )
    );
  }
}