import 'dart:math';

/// # Assignment 1
///  1. Using the root1 and root2 results from the challenge,
///  store the largest value of two in a different variable.
///  2. Finally, print the variables and their integer values
///  (sentences including the values)
String assignment1() {
  const a = 2.0;
  const b = 3.0;
  const c = 1.0;

  double root1 = (-b + sqrt((pow(b, 2) - (4 * a * c)))) / (2 * a);
  double root2 = (-b - sqrt((pow(b, 2)) - (4 * a * c))) / (2 * a);

  double largestValue = max(root1, root2);

  final results =
      'The first root of the equation is $root1 and its integer is ${root1.toInt()} \n'
      'The second root of the equation is $root2 and its integer is ${root2.toInt()} \n'
      'The largest root has the value equal to $largestValue';

  return results;
}

/// # Assignment 2
/// 1. Create a method that can take the angle(in degrees)
/// of type `int` and then compute the value for the expression
/// of sin2x + cos2x. (Note: You will need to convert the angle
/// in degree to radian
/// 2. Store the solution in a new variable name result of
/// type `var` and print the following (include results and variables in sentences)
/// 3. Apply the increment operator on the result variable with the increment
/// factor equal to sin(angle)
/// 4. Finally, print the following and end the function: (sentence including new value)
//  5. Run the following code by passing the value of 45 as x in the method
void assignment2(int angle) {
  double angleRadian = angle * pi / 180;
  double sinVal = sin(angleRadian);
  double cosVal = cos(angleRadian);
  var result = pow(sinVal, 2) * angleRadian + pow(cosVal, 2) * angleRadian;

  print(
      'The value of the expression sin^2($angle) + cos^2($angle) is $result \n'
      'and its runtype value is ${result.runtimeType} \n');

  result += sinVal;

  print(
      'The value of the expression sun^2($angle) + cos^2($angle) + sin($angle) is $result\n'
      'and its run type value is ${result.runtimeType} ');
}

/// # Assignment 3
/// 1. Initialize 7 variables at the start of the code.
/// 2. Out of 7 variables at least 2 (and at max 4) variables need to be of the type `num`. The remaining variable types can be any type.
/// 3. Now, create a story of at least 150 words using these 7 variables by including String manipulation methods: concatenation and interpolation
String assignment3() {
  num tries = 4;
  num commute = 20;
  num amount = 630.70;
  String breakfast = "waffles";
  String petName = "buttons";
  bool isFact = true;
  String state = "California";

  final story =
      'On Monday, Jessa took her driving road exam. Although she was nervous, she passed \n'
      'with a perfect score after $tries tries. Now that she can drive, her commute time \n'
      'to school and work has gone down from one hour to $commute minutes. On Tuesday she \n'
      'had $breakfast for breakfast. Feeling accomplished, she decided to go to the \n'
      'nearest animal shelter and get a pet, something she has always wanted. She fell \n'
      'in love with a cute kitten and named him $petName. \n'
      ' \n'
      'When she brought the kitten home, her roommates where excited, but then realized that \n'
      'their housing agreement may have mentioned that no pets were allowed. After rummaging \n'
      'through their boxes and finding the agreement, they found this to be $isFact.';

  final ending = ' With $amount dollars \n'
      'in her pocket and a car she bought from her brother, Jessa decided pack her things and \n'
      'drive to $state with $petName and explore a new life.';

  final fullStory = story + ending;

  return fullStory;
}
