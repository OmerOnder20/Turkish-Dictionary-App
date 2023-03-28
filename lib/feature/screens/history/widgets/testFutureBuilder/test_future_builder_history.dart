// FutureBuilder<List<UsersModel>?>(
//         future: context.read<KelimeProvider>().usersFutureFetch(),
//         builder: (context, snapshot) {
//           if (snapshot.connectionState == ConnectionState.waiting) {
//             return const CircularProgressIndicator();
//           }
//           if (snapshot.connectionState == ConnectionState.done) {
//             return ListView.builder(
//               itemCount: snapshot.data?.length,
//               itemBuilder: (BuildContext context, int index) {
//                 final datalar = snapshot.data![index];
//                 return ListTile(
//                   title: Text(datalar.email),
//                 );
//               },
//             );
//           } else {
//             return const SizedBox();
//           }
//         },
//       )