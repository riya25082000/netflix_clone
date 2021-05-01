import 'package:flutter/material.dart';
import 'package:netflix_clone/data/data.dart';
import 'package:netflix_clone/widgets/content_header.dart';
import 'package:netflix_clone/widgets/previews.dart';
import 'package:netflix_clone/widgets/search_previews.dart';
import 'package:netflix_clone/cubits/cubits.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
class Search extends StatefulWidget {
  static const routeName = '/search';
  const Search({Key key}) : super(key: key);
  @override
  _SearchState createState() => _SearchState();
}

class _SearchState extends State<Search> {

  ScrollController _scrollController;


  @override
  void initState() {
    _scrollController = ScrollController()
      ..addListener(() {
        context.bloc<AppBarCubit>().setOffset(_scrollController.offset);
      });
    super.initState();
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      //resizeToAvoidPadding: false,

      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: Icon(Icons.search,color: Colors.white),
        title: TextField(
          decoration: InputDecoration(
            hintText: 'Search for a movie, show or genre ',
            hintStyle: TextStyle(color: Colors.white),
            suffixIcon: IconButton(
              onPressed: null,
              icon: Icon(Icons.mic,color: Colors.grey),
            )
          ),
        ),
      ),
      body: CustomScrollView(
          controller: _scrollController,
          slivers: [

    SliverPadding(
    padding: const EdgeInsets.only(top: 20.0),
    sliver: SliverToBoxAdapter(
    child: SearchPreviews(
    key: PageStorageKey('previews'),
    title: 'Popular Searches',

    contentList: previews,
    ),
    ),
    )
          ],
      ),
    );
  }
}