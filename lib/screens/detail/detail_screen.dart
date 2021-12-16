// import 'package:lab5_app/bloc/seve_word_bloc.dart';
import 'package:lab5_app/model/word_response.dart';
import 'package:flutter/material.dart';


class DetailScreen extends StatefulWidget {
  final WordResponse wordResponse;

  const DetailScreen(this.wordResponse, {Key? key}) : super(key: key);

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  // final _bloc = SaveWordBloc();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[900],
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.all(32),
          width: double.infinity,
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    widget.wordResponse.word,
                    style: const TextStyle(color: Colors.white, fontSize: 36),
                  ),
                  IconButton(
                    icon: const Icon(Icons.star_outline, size: 40, color: Colors.orange),
                    onPressed: () => {
                      // _bloc.SaveEvent.add(IncrementEvent())
                    },
                  ),
                ],
              ),
              const SizedBox(
                height: 16,
              ),
              Expanded(
                child: ListView.separated(
                  itemBuilder: (context, index) {
                    final meaning = widget.wordResponse.meanings[index];
                    final definitions = meaning.definitions;
                    print(definitions);

                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          meaning.partOfSpeech,
                          style: const TextStyle(color: Colors.white),
                        ),
                        const SizedBox(height: 8,),
                        ListView.separated(
                          itemBuilder: (context, index) => Column(
                            children: [
                              Text("Definition : "+ definitions[index].definition, style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
                              const SizedBox(height: 4,),
                              Text("Sentence  : ${definitions[index].example}", style: const TextStyle(color: Colors.white),),
                            ],
                            crossAxisAlignment: CrossAxisAlignment.start,
                          ),
                          separatorBuilder: (context, index) => const SizedBox(height: 8,),
                          itemCount: definitions.length,
                          shrinkWrap: true,
                        )
                      ],
                    );
                  },
                  itemCount: widget.wordResponse.meanings.length,
                  separatorBuilder: (context, index) => const SizedBox(
                    height: 32,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
