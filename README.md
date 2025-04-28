# Flutter Quiz App

This is my **first Flutter app** showing multiple screens — it is a simple, fun, and educational **Quiz App**!  
It allows users to select from multiple programming language categories and answer a set of questions.  
At the end of each quiz, users receive a **results screen** showing their performance, with correct answers highlighted in **green** and wrong answers in **red**.

---

## ✨ Features

- 📚 Multiple **quiz categories** (e.g., Flutter, JavaScript, Python, etc.).
- ❓ Dynamic question selection based on the chosen category.
- 🎯 **Results screen** showing:
  - Total questions answered
  - Correct answers (highlighted in green ✅)
  - Wrong answers (highlighted in red ❌)
- 🧭 Smooth navigation between screens.
- 🖥️ Simple and beginner-friendly UI.
- 🚀 Built completely using **Flutter**.

---

## 📱 Screens Overview

- **Home Screen**:  
  Displays available quiz categories for users to select.

- **Quiz Screen**:  
  Presents questions one at a time based on the selected category. Users choose answers and navigate through the quiz.

- **Result Screen**:  
  Shows a summary of the user's performance, with color-coded feedback for each answer.

---

## 🛠️ Built With

- **Flutter** (Framework)
- **Dart** (Programming Language)

---

## 📦 Installation

1. Clone the repository:

   ```bash
   git clone https://github.com/TemiladeRebecca/Quiz_App.git
   cd Quiz_App
   ```

2. Install dependencies:

   ```bash
   flutter pub get
   ```

3. Run the app:

   ```bash
   flutter run
   ```

---

## 📊 Project Structure

```
lib/
├── main.dart
├── screens/
│   ├── home_screen.dart       # Category selection screen
│   ├── quiz_screen.dart       # Quiz question screen
│   └── result_screen.dart     # Result summary screen
├── models/
│   └── questions.dart         # Static list of questions for different categories
│   └── category.dart          
├── widgets/
│   └── answers_button.dart
│   └── details_button.dart     # Reusable widgets (buttons, cards, etc.)
│   └── question_category.dart  # Question model (question, options, correct answer)
│   └── question_details.dart
│   └── question_summary.dart
│   └── quiz_questions.dart

```

---

## 🎯 Future Improvements

- Add a timer for each quiz.
- Implement randomized questions.
- Save user scores and display high scores.
- Add animations between transitions.
- Enhance UI with themes and sound effects.

---

## 📜 License

This project is open-source and available under the [MIT License](LICENSE).

---

## 👨‍💻 Author

- **Talabi Rebecca**  
  [LinkedIn](https://www.linkedin.com/in/talabirebecca-virtualdev) | [GitHub](https://github.com/TemiladeRebecca)


