class BooksNameModel{

  int? id;
  String name;
  String authorName;
  String category;

  BooksNameModel(this.id,
      {
        required this.name,
        required this.authorName,
       required this.category
      });

}
final AuthorList=<String>[
  'Tamim Shahriar',
  'Kabi Nazrul',
  'Mostak Ahmed',
  'Rabindranath',
  'Enayet Chowdhury',
  'Humayun Ahmed',
'Maria Chaudhari',
'K Anis Ahmed',
'Kaiser Haq',
'Farah Ghuznavi ',
'Mahmud Rahman',
'Khademul Islam',
];
final CategoryList = <String>[
  'Programming',
  'Development',
  'Poem',
  'Sci-Fi',
  'Novel',
  'Magazine',
  'Research'
];
