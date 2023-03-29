import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:tdk_app/product/service/users_service.dart';

import '../../../../../product/model/users_model.dart';
import '../../../../../product/utility/colors/colors.dart';
import '../../../../../product/utility/sizes/font_sizes.dart';

class DetailCardListViewBuilder extends StatefulWidget {
  const DetailCardListViewBuilder({super.key});

  @override
  State<DetailCardListViewBuilder> createState() => _DetailCardListViewBuilderState();
}

class _DetailCardListViewBuilderState extends State<DetailCardListViewBuilder> {
  late final Future<List<UsersModel>?> futureFetch;
  @override
  void initState() {
    super.initState();
    futureFetch = context.read<UsersService>().fetchUsers();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 400.h,
      width: double.infinity,
      child: Card(
        margin: EdgeInsets.zero,
        color: ColorUtility.bottomAppBar,
        elevation: 2,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.r)),
        child: Padding(
          padding: EdgeInsets.only(
            left: 12.w,
            right: 12.w,
          ),
          child: SizedBox(
            width: double.infinity,
            child: FutureBuilder<List<UsersModel>?>(
              future: futureFetch,
              builder: (context, snapshot) {
                final datas = snapshot.data;
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return const CircularProgressIndicator();
                }
                if (snapshot.connectionState == ConnectionState.done) {
                  return ListView.builder(
                    itemCount: datas?.length,
                    itemBuilder: (BuildContext context, int index) {
                      final datalar = datas?[index];
                      return Padding(
                        padding: EdgeInsets.only(top: 20.h),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Text(
                                    datalar?.id.toString() ?? "",
                                    style: TextStyle(
                                        color: ColorUtility.textParagraph2,
                                        fontSize: FontSizes.font14,
                                        fontWeight: FontWeight.w400),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: 8.w),
                                    child: Text(
                                      //context.watch<KelimeProvider>().holderItems?[index].title ?? ""
                                      datalar?.name ?? "",
                                      style: TextStyle(
                                          color: ColorUtility.tdkMain,
                                          fontSize: FontSizes.font12,
                                          fontWeight: FontWeight.w500,
                                          fontStyle: FontStyle.italic),
                                    ),
                                  )
                                ],
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 15.w, top: 8.h),
                                child: Text(
                                  datalar?.address?.street ?? "",
                                  style: TextStyle(
                                      color: ColorUtility.textHeading,
                                      fontSize: FontSizes.font14,
                                      fontWeight: FontWeight.w600),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 24.w, top: 12.h),
                                child: Text(
                                  datalar?.email ?? "",
                                  // '"Kâğıt, kalem, mürekkep, hepsi masanın üstündedir." - Falih Rıfkı Atay',
                                  style: TextStyle(
                                      color: ColorUtility.textParagraph2,
                                      fontSize: FontSizes.font14,
                                      fontWeight: FontWeight.w700),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(top: 18.h),
                                child: Container(
                                  height: 1.h,
                                  width: double.infinity,
                                  color: ColorUtility.dividerColor2,
                                ),
                              )
                            ]),
                      );
                    },
                  );
                } else {
                  return const SizedBox();
                }
              },
            ),
          ),
        ),
      ),
    );
  }
}
