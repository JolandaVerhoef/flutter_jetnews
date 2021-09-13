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

import '../model/post.dart';

const paragraphsPost2 = [
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

const pietro = PostAuthor("Pietro Maggi", "https://medium.com/@pmaggi");
const manuel = PostAuthor("Manuel Vivo", "https://medium.com/@manuelvicnt");
const florina =
    PostAuthor("Florina Muntenescu", "https://medium.com/@florina.muntenescu");
const jose = PostAuthor("Jose Alcérreca", "https://medium.com/@JoseAlcerreca");

const publication = const Publication("Android Developers",
    "https://cdn-images-1.medium.com/max/258/1*u7oZc2_5mrkcFaxkXEyfYA@2x.png");

const post1 = const Post(
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

const post2 = Post(
    "7446d8dfd7dc",
    "Dagger in Kotlin: Gotchas and Optimizations",
    "Use Dagger in Kotlin! This article includes best practices to optimize your build time and gotchas you might encounter.",
    "https://medium.com/androiddevelopers/dagger-in-kotlin-gotchas-and-optimizations-7446d8dfd7dc",
    publication,
    Metadata(
        manuel,
        "July 30",
        3
    ),
    paragraphsPost2,
  "images/post_2.png",
  "images/post_2_thumb.png",
);

const post3 = Post(
    "ac552dcc1741",
    "From Java Programming Language to Kotlin — the idiomatic way",
    "Learn how to get started converting Java Programming Language code to Kotlin, making it more idiomatic and avoid common pitfalls, by…",
    "https://medium.com/androiddevelopers/from-java-programming-language-to-kotlin-the-idiomatic-way-ac552dcc1741",
    publication,
    Metadata(
        florina,
        "July 09",
        1
    ),
    paragraphsPost2,
  "images/post_3.png",
  "images/post_3_thumb.png",
);

const post4 = Post(
    "84eb677660d9",
    "Locale changes and the AndroidViewModel antipattern",
    "TL;DR: Expose resource IDs from ViewModels to avoid showing obsolete data.",
    "https://medium.com/androiddevelopers/locale-changes-and-the-androidviewmodel-antipattern-84eb677660d9",
    publication,
    Metadata(
        jose,
        "April 02",
        1
    ),
    paragraphsPost2,
  "images/post_4.png",
  "images/post_4_thumb.png",
);

const post5 = Post(
    "55db18283aca",
    "Collections and sequences in Kotlin",
    "Working with collections is a common task and the Kotlin Standard Library offers many great utility functions. It also offers two ways of…",
    "https://medium.com/androiddevelopers/collections-and-sequences-in-kotlin-55db18283aca",
    publication,
    Metadata(
        florina,
        "July 24",
        4
    ),
    paragraphsPost2,
  "images/post_5.png",
  "images/post_5_thumb.png",
);

const allPosts = [post1, post2, post3, post4, post5];
