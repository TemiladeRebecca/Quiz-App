import 'package:quiz_app/quiz_questions.dart';


const questions = [
  QuizQuestion(
    'Flutter',
    'What are the main building blocks of Flutter UIs?',
    [
      'Widgets',
      'Components',
      'Blocks',
      'Functions',
    ],
  ),
  QuizQuestion(
    'Flutter',
    'How are Flutter UIs built?', [
    'By combining widgets in code',
    'By combining widgets in a visual editor',
    'By defining widgets in config files',
    'By using XCode for iOS and Android Studio for Android',
  ]),
  QuizQuestion(
    'Flutter',
    'What\'s the purpose of a StatefulWidget?',
    [
      'Update UI as data changes',
      'Update data as UI changes',
      'Ignore data changes',
      'Render UI that does not depend on data',
    ],
  ),
  QuizQuestion(
    'Flutter',
    'Which widget should you try to use more often: StatelessWidget or StatefulWidget?',
    [
      'StatelessWidget',
      'StatefulWidget',
      'Both are equally good',
      'None of the above',
    ],
  ),
  QuizQuestion(
    'Flutter',
    'What happens if you change data in a StatelessWidget?',
    [
      'The UI is not updated',
      'The UI is updated',
      'The closest StatefulWidget is updated',
      'Any nested StatefulWidgets are updated',
    ],
  ),
  QuizQuestion(
    'Flutter',
    'How should you update data inside of StatefulWidgets?',
    [
      'By calling setState()',
      'By calling updateData()',
      'By calling updateUI()',
      'By calling updateState()',
    ],
  ),
  QuizQuestion(
    'React',
    'What is JSX in React?',
    [
      'A syntax extension for JavaScript',
      'A new programming language',
      'A CSS preprocessor',
      'A database query language',
    ],
  ),
  QuizQuestion(
    'React',
    'What is the correct way to update state in a React component?',
    [
      'Using setState or useState setter function',
      'Modifying the state variable directly',
      'Calling this.state = newValue',
      'Using forceUpdate()',
    ],
  ),

  QuizQuestion(
    'React',
    'Which hook is used for managing side effects in a functional component?',
    [
      'useEffect',
      'useState',
      'useRef',
      'useReducer',
    ],
  ),

  QuizQuestion(
    'React',
    'Which library is commonly used for state management in React applications?',
    [
      'Redux',
      'Axios',
      'React Router',
      'React Query',
    ],
  ),
  QuizQuestion(
  'React Native',
  'Which command is used to run a React Native app on an Android emulator?',
  [
    'npx react-native run-android',
    'npx react-native start',
    'npx expo start',
    'react-native build-android',
  ],
),
  QuizQuestion(
    'React Native',
    'Which component is used for mobile navigation in React Native?',
    [
      'React Navigation',
      'React Router',
      'Navigator API',
      'NavigationController',
    ],
  ),
  QuizQuestion(
    'React Native',
    'Which command is used to create a new React Native project with Expo?',
    [
      'npx create-expo-app myApp',
      'npx react-native init myApp',
      'expo create myApp',
      'react-native new myApp',
    ],
  ),

  QuizQuestion(
    'React Native',
    'Which core component is used to display text in React Native?',
    [
      'Text',
      'Paragraph',
      'Span',
      'Label',
    ],
  ),

  QuizQuestion(
    'React Native',
    'How do you handle gestures in React Native?',
    [
      'React Native Gesture Handler',
      'Touch API',
      'React Router',
      'Gesture Navigator',
    ],
  ),
   QuizQuestion(
    'JavaScript',
    'What is used to declare a variable in JavaScript?',
    [
      'var, let, and const',
      'int, double, and String',
      'define, require, and import',
      'select, fetch, and get',
    ],
  ),
  QuizQuestion(
    'JavaScript',
    'Which keyword is used to declare a constant variable in JavaScript?',
    [
      'const',
      'let',
      'var',
      'static',
    ],
  ),

  QuizQuestion(
    'JavaScript',
    'What is the output of `typeof null` in JavaScript?',
    [
      'object',
      'null',
      'undefined',
      'string',
    ],
  ),

  QuizQuestion(
    'JavaScript',
    'Which function is used to parse a JSON string into a JavaScript object?',
    [
      'JSON.parse()',
      'JSON.stringify()',
      'JSON.decode()',
      'JSON.objectify()',
    ],
  ),

  QuizQuestion(
    'JavaScript',
    'Which method is used to remove the last element from an array in JavaScript?',
    [
      'pop()',
      'shift()',
      'splice()',
      'remove()',
    ],
  ),
]; 