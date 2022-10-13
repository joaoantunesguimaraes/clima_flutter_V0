// Future<void> _dialogBuilder(BuildContext context, String meuTexto) {
//   return showDialog<void>(
//     context: context,
//     builder: (BuildContext context) {
//       return AlertDialog(
//         title: const Text('Basic dialog title'),
//         content: Text('$meuTexto'),
//         actions: <Widget>[
//           TextButton(
//             style: TextButton.styleFrom(
//               textStyle: Theme.of(context).textTheme.labelLarge,
//             ),
//             child: const Text('Disable'),
//             onPressed: () {
//               Navigator.of(context).pop();
//             },
//           ),
//           TextButton(
//             style: TextButton.styleFrom(
//               textStyle: Theme.of(context).textTheme.labelLarge,
//             ),
//             child: const Text('Enable'),
//             onPressed: () async {
//               Navigator.of(context).pop();
//             },
//           ),
//         ],
//       );
//     },
//   );
// }
