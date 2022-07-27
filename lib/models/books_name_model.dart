const String tableBook = 'tbl_book';
const String tableBookColId = 'id';
const String tableBookColName = 'name';
const String tableBookColAuth = 'auth';
const String tableBookColImage = 'image';
const String tableBookColCategory = 'cetegory';
class BookModel {
  int? id;
  String name;
  String auth;
  String? image;
  String? category;

  BookModel({
    this.id,
    required this.name,
    required this.auth,
    this.image,
    this.category,
  });


  Map<String, dynamic> toMap() {
    var map = <
        String
    ,dynamic>{
      tableBookColName:name,
      tableBookColAuth:auth
    };
    if(id!=null){
      map[tableBookColId] = id;
    }
    return
      map;
  }

  factory BookModel.fromMap(Map<String, dynamic>map) =>
      BookModel(id: map[tableBookColId],
          name: map[tableBookColName],
          auth: map[tableBookColAuth],
      image: map[tableBookColImage],
      category: map[tableBookColCategory]);

  @override
  String toString() {
    return 'BookModel{id: $id, name: $name, auth: $auth, image: $image, category: $category}';
  }
}
  final CategoryList = <String>[
    'Programming',
    'Development',
    'Poem',
    'Sci-Fi',
    'Novel',
    'Magazine',
    'Research'
  ];
