// return FutureBuilder(
// future:
// _categories, // here you provide your future. In your case Provider.of<PeopleModel>(context).fetchPeople()
// builder: (BuildContext context, AsyncSnapshot snapshot) {
// var apiResponse = snapshot.data;
// switch (snapshot.connectionState) {
// case ConnectionState.none:
// return TryAgainLater();
// break;
// case ConnectionState.waiting:
// return LoaderFetchingData();
// break;
// case ConnectionState.active:
// return LoaderFetchingData();
// break;
// case ConnectionState.done:
// if (apiResponse.code == 1) {
// return GridView.builder(
// itemCount: apiResponse.object.length,
// scrollDirection: Axis.horizontal,
// gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
// crossAxisCount: 2,
// crossAxisSpacing: .75,
// mainAxisSpacing: .75),
// itemBuilder: (BuildContext context, int index) {
// return _categoryContent(context, apiResponse.object[index]);
// },
// );
// } else {
// return NoData();
// }
// break;
// default:
// return null;
// break;
// }
// });
