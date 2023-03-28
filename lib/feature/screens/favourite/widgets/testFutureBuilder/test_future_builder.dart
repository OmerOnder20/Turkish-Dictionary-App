// Center(
//           child: Padding(
//         padding: EdgeInsets.symmetric(horizontal: 24.w),
//         child: FutureBuilder<ProductsModel?>(
//           future: context.watch<KelimeProvider>().fetchFutureProducts(),
//           builder: (context, snapshot) {
//             final datalar = snapshot.data!;

//             if (snapshot.connectionState == ConnectionState.waiting) {
//               return Center(
//                 child: Container(
//                   height: 100,
//                   width: 100,
//                   color: Colors.green,
//                   child: const CircularProgressIndicator(color: Colors.white),
//                 ),
//               );
//             }
//             if (snapshot.connectionState == ConnectionState.done) {
//               return ListView.builder(
//                 itemCount: datalar.products.length,
//                 itemBuilder: (BuildContext context, int index) {
//                   return ListTile(
//                     leading: Text(datalar.skip.toString()),
//                     trailing: Text(datalar.products[index].brand),
//                     title: Text(datalar.limit.toString()),
//                     subtitle: Text(datalar.total.toString()),
//                   );
//                 },
//               );
//             } else {
//               return const SizedBox();
//             }
//           },
//         ),
//       ))