# COVID-19 Hackathon Quiz

[![Language: Dart](https://img.shields.io/badge/Language-Dart-0175C2)](https://github.com/kleberandrade/hackathon-quiz-covid19-flutter/blob/master/pubspec.yaml)
[![Framework: Flutter](https://img.shields.io/badge/Framework-Flutter-02569B)](https://github.com/kleberandrade/hackathon-quiz-covid19-flutter/blob/master/pubspec.yaml)

Flutter educational quiz created for the COVID-19 Global Hackathon.

## Getting started

- Select a Flutter release whose bundled Dart SDK satisfies the manifest constraint, then run the commands below from the repository root.

```sh
flutter pub get
flutter run
```

- If the app depends on Firebase or another external service, configure your own service project using the dependencies and original notes; credentials are not supplied by this guide.

## Recorded requirements

- Dart SDK constraint from [`pubspec.yaml`](https://github.com/kleberandrade/hackathon-quiz-covid19-flutter/blob/master/pubspec.yaml): `>=2.1.0 <3.0.0`.

## Repository map

- [lib](https://github.com/kleberandrade/hackathon-quiz-covid19-flutter/tree/master/lib)
- [test](https://github.com/kleberandrade/hackathon-quiz-covid19-flutter/tree/master/test)
- [android](https://github.com/kleberandrade/hackathon-quiz-covid19-flutter/tree/master/android)
- [ios](https://github.com/kleberandrade/hackathon-quiz-covid19-flutter/tree/master/ios)

## Validation status

This update documents the tracked source and project metadata. It does not certify a successful build, device test or compatibility with a current toolchain. Follow any project-specific validation instructions in the original material.

## License and attribution

No standalone repository-wide license file was identified in this review. Preserve the original credits and any component-specific licenses; this documentation update grants no additional rights.

---

## Original project material

# Quiz COVID19

Project of a quiz created for the COVID-19 Global Hackathon 1.0

## Inspiration

Many people like to play quiz games on Facebook, so I thought of creating an educational quiz about the virus. Thus, people can learn and have fun at the same time.

## What it does

Quiz COVID19 is a game of questions and answers about the Virus. The player when participating in the game, learns about the virus and can also share the quiz for other people to play. In addition, the player can continue playing until he gets all the questions right.

## How we built it

I made a spreadsheet with Google Sheets and published an API with Google Script. After that, I created an interface with Flutter for mobile and finally, added support for Portuguese and English.

## Challenges I ran into

It was hard to think of something original, so I decided to create a quiz to help verify people's knowledge about the virus.

## What I learned

Mixing between the vision of the user and the vision of an IT expert

## What's next for Quiz COVID19?

*   Support for more languages;
*   Add more questions;
*   Creating a ranking;
*   Map the average of hits by cities.

## License

    Copyright 2020 Kleber de Oliveira Andrade
    
    Permission is hereby granted, free of charge, to any person obtaining a copy
    of this software and associated documentation files (the "Software"), to deal
    in the Software without restriction, including without limitation the rights
    to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
    copies of the Software, and to permit persons to whom the Software is
    furnished to do so, subject to the following conditions:
    
    The above copyright notice and this permission notice shall be included in all
    copies or substantial portions of the Software.
    
    THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
    IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
    FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
    AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
    LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
    OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
    SOFTWARE.
