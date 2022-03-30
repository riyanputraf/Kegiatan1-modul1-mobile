class Book{
  final String titleBook;
  final String author;

  Book({
    required this.author,
    required this.titleBook,


  });

  String getTitleBook(){
    return titleBook;
  }

  String getAuthor(){
    return author;
  }



}