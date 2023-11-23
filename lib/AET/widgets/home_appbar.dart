// import 'package:aet/AET/components/custom_search_form_provider.dart';
// import 'package:aet/AET/theme/theme_container.dart';
// import 'package:aet/AET/widgets/leading_Button.dart';
// import 'package:aet/controller/provider_controller.dart';
// import 'package:aet/util/validator_util.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
//
// class homeAppbar extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return GetMaterialApp(
//       home: appbarSearchForm(),
//     );
//   }
// }
//
// class appbarSearchForm extends StatelessWidget {
//   final _formKey = GlobalKey<FormState>();
//   final ProviderController p = Get.put(ProviderController());
//   final _providerSearch = TextEditingController();
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         toolbarHeight: 160, //appbar 높이설정
//         //leadingWidth: 80,
//         backgroundColor: Colors.orangeAccent,
//         elevation: 10, //그림자 길이
//         shadowColor: Colors.black26,
//         shape: RoundedRectangleBorder(
//           borderRadius: BorderRadius.vertical(
//             bottom: Radius.circular(20),
//           )
//         ),
//         flexibleSpace: FlexibleSpaceBar(
//           centerTitle: true,
//           title: Padding(
//           padding: EdgeInsets.symmetric(horizontal: 5, vertical: 10.0),
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               crossAxisAlignment: CrossAxisAlignment.center,
//               children: [
//                 Text( "짐보따리",
//                   style: TextStyle(
//                       fontSize: 20,
//                       fontWeight: FontWeight.bold,
//                       color: Colors.white
//                   ),
//                 ),
//               _searchForm(),
//              ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
//
//   Widget _searchForm() {
//     return Form(
//       key: _formKey,
//       child: Column(
//         children: [
//           Padding(padding: EdgeInsets.fromLTRB(0,10,0,0)),
//           CustomSearchFormProvider(
//             controller: _providerSearch,
//             hint: "ProviderName",
//             funValidator: validatorProvider(),
//           ),
//         ],
//       ),
//     );
//   }
// }
