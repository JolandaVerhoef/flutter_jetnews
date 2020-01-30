class Post {
  /// Required
  final String id;

  /// Required
  final String title;

  /// Optional
  final String subtitle;

  /// Required
  final String url;

  /// Optional
  final Publication publication;

  /// Required
  final Metadata metadata;

  /// Required
  final List<Paragraph> paragraphs;

  /// Required
  final String imageId;

  /// Required
  final String imageThumbId;

  Post(
      this.id,
      this.title,
      this.subtitle,
      this.url,
      this.publication,
      this.metadata,
      this.paragraphs,
      this.imageId,
      this.imageThumbId);
}

class Metadata {
  /// Required
  final PostAuthor author;

  /// Required
  final String date;

  /// Required
  final int readTimeMinutes;

  Metadata(this.author, this.date, this.readTimeMinutes);
}

class PostAuthor {
  /// Required
  final String name;

  /// Optional
  final String url;

  PostAuthor(this.name, this.url);
}

class Publication {
  /// Required
  final String name;

  /// Required
  final String logoUrl;

  Publication(this.name, this.logoUrl);
}

class Paragraph {
  /// Required
  final ParagraphType type;

  /// Required
  final String text;

  /// Required
  final List<Markup> markups;

  Paragraph(this.type, this.text, this.markups);
}

class Markup {
  /// Required
  final MarkupType type;

  /// Required
  final int start;

  /// Required
  final int end;

  /// Optional
  final String href; // optional

  Markup(this.type, this.start, this.end, this.href);
}

enum MarkupType {
  Link,
  Code,
  Italic,
  Bold,
}

enum ParagraphType {
  Title,
  Caption,
  Header,
  Subhead,
  Text,
  CodeBlock,
  Quote,
  Bullet,
}
