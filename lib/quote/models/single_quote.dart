class SingleQuote {
  final String id;
  final String author;
  final String content;

  SingleQuote({required this.id, required this.author, required this.content});

  static final empty =
      SingleQuote(id: "id", author: "author", content: "content");

  factory SingleQuote.fromJson(Map<String, dynamic> json) => SingleQuote(
      id: json['_id'], author: json['author'], content: json['content']);

  factory SingleQuote.fromRepository(SingleQuote quote) {
    return SingleQuote(
        id: quote.id, author: quote.author, content: quote.content);
  }

  SingleQuote copyWith({
    String? id,
    String? content,
    String? author,
  }) {
    return SingleQuote(
        id: id ?? this.id,
        author: author ?? this.author,
        content: content ?? this.content);
  }
}
