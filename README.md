Winning entry for the 12hr HerTech Hackathon organized by Facebook, Thoughtworks and WSquare.

## Problem Statement
The teaching landscape is rapidly changing, the technological rise of the 21st century and widespread integration of those technologies into our society, combined with access to the internet has integrally changed teaching in just a few years. How can you implement AI to encourage blended learning that creates customised lessons based on the skill level of students? Suggested Education Datasets (India-specific): NCERT Education Survey data on schools, teachers, enrollments, AspiringMinds data on employability outcomes or obtain your own dataset from another source (e.g. education non-profits, kaggle, google, web scraping public web locations, etc.)

**TL;DR** - With the rapid change in technologies, how can you implement AI to encourage blended learning that creates customised lessons based on the skill level of students?

## Synopsis of the solution
The system allows institutes to automatically generate customised courses based on their own sources (ebooks, pdfs, ppts). Multiple choice questions are automatically generated from the input source using combination of tf-idf, pos-tagging and NER. ELO rating system is used to rate users and questions, albeit with different parameters. This allows the system to estimate user's proficiency with minimum number of questions. Finally, if user chooses incorrect answer, a summary of the input text is provided using text summarization.

**Presentation deck**: [HerTech Hackathon - LevelUp.pdf](https://github.com/AtharvaKhare/HerTech-LevelUp/blob/master/HerTech%20Hackathon%20-%20LevelUp.pdf)

Screenshots:
![Topic screen](https://user-images.githubusercontent.com/19401826/59702680-dbbbd780-9215-11e9-861d-74964f5c82d5.png)
![MCQ Screen](https://user-images.githubusercontent.com/19401826/59702712-f1c99800-9215-11e9-89bc-abda298b9cdf.png)
![Summary Screen](https://user-images.githubusercontent.com/19401826/59702752-132a8400-9216-11e9-8d83-89ba0c3506a4.png)
