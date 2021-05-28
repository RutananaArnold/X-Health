import '../packages_exporter.dart';

var issues = [
  'Accidents',
  'Pregnancy',
  'Heart Attack',
  'Burns',
  'First Aid',
  'Councelling',
  'Stroke',
  'Fainting',
];

class Issue {
  String title, imageUrl;
  List<String> subCategories;

  Issue({
    @required this.title,
    @required this.imageUrl,
    @required this.subCategories,
  });
}

List<Issue> myIssue = [
  Issue(
    title: 'Accidents',
    imageUrl:
        'https://images.unsplash.com/photo-1542092444-400d92b09cea?ixid=MXwxMjA3fDB8MHxjb2xsZWN0aW9uLXBhZ2V8MXw0NTE2OTExfHxlbnwwfHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60',
    subCategories: [
      'Road Accident',
      'Water Accident',
      // 'subCategories',
      // 'subCategories',
    ],
  ),
  Issue(
    title: 'Pregnancy',
    subCategories: [
      'Delivery',
      'Antenatal Care',
      'Pediatrics',
      // 'subCategories',
    ],
    imageUrl:
        'https://images.unsplash.com/photo-1512094476718-4d8f19366c62?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MXx8YmxhY2slMjBwcmVnbmFudCUyMHdvbWFufGVufDB8fDB8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60',
  ),
  Issue(
    title: 'Heart Attack',
    subCategories: [
      // 'subCategories',
      // 'subCategories',
      // 'subCategories',
      // 'subCategories',
    ],
    imageUrl:
        'https://t4.ftcdn.net/jpg/02/64/23/27/240_F_264232733_mEvffWjrQJQtVdfAP0o6RXhGkbGEU0N6.jpg',
  ),
  Issue(
    title: 'Burns',
    subCategories: [
      // 'subCategories',
      // 'subCategories',
      // 'subCategories',
      // 'subCategories',
    ],
    imageUrl:
        'https://t4.ftcdn.net/jpg/02/94/04/59/240_F_294045968_5tplgstTWTStoCXyfbqcbJKyg5qGB4I6.jpg',
  ),
  Issue(
    title: 'First Aid',
    subCategories: [
      // 'Fainting',
      // 'subCategories',
      // 'subCategories',
      // 'subCategories',
    ],
    imageUrl:
        'https://t4.ftcdn.net/jpg/01/79/88/27/240_F_179882754_kGEzk4El5c79XhqQyOAfNzPKKROixiZX.jpg',
  ),
  Issue(
    title: 'Councelling',
    subCategories: [
      // 'subCategories',
      // 'subCategories',
      // 'subCategories',
      // 'subCategories',
    ],
    imageUrl:
        'https://t3.ftcdn.net/jpg/00/84/43/76/240_F_84437671_D6pg3i9uQiPrErVqvb04jHU3fUl5Zpid.jpg',
  ),
  Issue(
    title: 'Stroke',
    subCategories: [
      // 'subCategories',
      // 'subCategories',
      // 'subCategories',
      // 'subCategories',
    ],
    imageUrl:
        'https://t4.ftcdn.net/jpg/00/60/96/23/240_F_60962332_pkCnhd9oKWA7aPwDD24yfpoNIw5nMcx1.jpg',
  ),
  Issue(
    title: 'Fainting',
    subCategories: [
      // 'subCategories',
      // 'subCategories',
      // 'subCategories',
      // 'subCategories',
    ],
    imageUrl:
        'https://t3.ftcdn.net/jpg/01/95/49/84/240_F_195498450_VKTBHvkhmq56KrHQ14TPFKsH53RGl796.jpg',
  ),
];
