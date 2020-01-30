import '../model/post.dart';

var paragraphsPost2 = [
  Paragraph(
      ParagraphType.Text,
      "Dagger is a popular Dependency Injection framework commonly used in Android. It provides fully static and compile-time dependencies addressing many of the development and performance issues that have reflection-based solutions.",
      [Markup(MarkupType.Link, 0, 6, "https://dagger.dev/")]),
  Paragraph(
      ParagraphType.Text,
      "This month, a new tutorial was released to help you better understand how it works. This article focuses on using Dagger with Kotlin, including best practices to optimize your build time and gotchas you might encounter.",
      [
        Markup(MarkupType.Link, 14, 26, "https://dagger.dev/tutorial/"),
        Markup(MarkupType.Bold, 114, 132, null),
        Markup(MarkupType.Bold, 144, 159, null),
        Markup(MarkupType.Bold, 191, 198, null),
      ]),
  Paragraph(
      ParagraphType.Text,
      "Dagger is implemented using Java’s annotations src.model and annotations in Kotlin are not always directly parallel with how equivalent Java code would be written. This post will highlight areas where they differ and how you can use Dagger with Kotlin without having a headache.",
      []),
];

// Define hardcoded posts to avoid handling any non-src.ui operations.

var pietro = PostAuthor("Pietro Maggi", "https://medium.com/@pmaggi");
var manual = PostAuthor("Manuel Vivo", "https://medium.com/@manuelvicnt");
var florina =
    PostAuthor("Florina Muntenescu", "https://medium.com/@florina.muntenescu");
var jose = PostAuthor("Jose Alcérreca", "https://medium.com/@JoseAlcerreca");

var publication = Publication("Android Developers",
    "https://cdn-images-1.medium.com/max/258/1*u7oZc2_5mrkcFaxkXEyfYA@2x.png");

var post1 = Post(
  "dc523f0ed25c",
  "A Little Thing about Android Module Paths",
  "How to configure your module paths, instead of using Gradle’s default.",
  "https://medium.com/androiddevelopers/gradle-path-configuration-dc523f0ed25c",
  publication,
  Metadata(pietro, "August 02", 1),
  paragraphsPost2,
  //paragraphsPost1
  "images/post_1.png",
  "images/post_1_thumb.png",
);

var posts = [post1];
