/*
 * Copyright 2020 The Android Open Source Project
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

class Post {
  final String id;
  final String title;
  final String? subtitle;
  final String url;
  final Publication? publication;
  final Metadata metadata;
  final List<Paragraph> paragraphs;
  final String? imageId;
  final String imageThumbId;

  const Post(this.id, this.title, this.subtitle, this.url, this.publication,
      this.metadata, this.paragraphs, this.imageId, this.imageThumbId);
}

class Metadata {
  final PostAuthor author;
  final String date;
  final int readTimeMinutes;

  const Metadata(this.author, this.date, this.readTimeMinutes);
}

class PostAuthor {
  final String name;
  final String? url;

  const PostAuthor(this.name, this.url);
}

class Publication {
  final String name, logoUrl;
  const Publication(this.name, this.logoUrl);
}

class Paragraph {
  final ParagraphType type;
  final String text;
  final List<Markup> markups;

  const Paragraph(this.type, this.text, this.markups);
}

class Markup {
  final MarkupType type;
  final int start;
  final int end;
  final String? href;

  const Markup(this.type, this.start, this.end, this.href);
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
