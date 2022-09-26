import 'dart:math';

// Enums
enum DaysOfTheWeek {
  sunday,
  monday,
  tuesday,
  wednesday,
  thursday,
  friday,
  saturday,
}

enum Weather {
  sunny,
  cloudy,
  thunderstorm,
  rainy
}

enum Food {
  thaiFood,
  hamSandwich,
  pizza,
  tacos
}

const week = [DaysOfTheWeek.monday,DaysOfTheWeek.tuesday,
  DaysOfTheWeek.wednesday, DaysOfTheWeek.thursday, DaysOfTheWeek.friday,
  DaysOfTheWeek.saturday, DaysOfTheWeek.sunday];

const weather_ = [Weather.sunny, Weather.cloudy, Weather.thunderstorm, Weather.rainy];

String helperFoodChoice(Enum dayOfWeek, Enum weather) {
  String weather_ = weather.name;
  switch(dayOfWeek.name) {
    case 'thursday':
      if(weather_ == Weather.rainy.name) {
        return Food.thaiFood.name;
      }
      break;
    case 'wednesday':
      if(weather_ == Weather.cloudy.name) {
        return Food.thaiFood.name;
      }
      break;
    case 'tuesday':
      return Food.pizza.name;

    default: {
      return Food.hamSandwich.name;
    }
  }

  if(weather_ == Weather.thunderstorm.name && dayOfWeek.name != DaysOfTheWeek.tuesday.name) {
    return Food.tacos.name;
  }

  return Food.tacos.name;
}
String helperGenerateMealChoice(Enum weather, Enum day) {
  String food = helperFoodChoice(weather, day);
  String weatherStr = weather.name;
  String dayStr = day.name;
  //String foodStr = food.toString();
  String str = '$dayStr is $weatherStr, so Sarah made a $food \n';
  return str;
}

// Main function to run assignment, and retrieve output
String sarahsMealChoice() {
  String output = '';
  week.forEach((day) {
    var random = Random();
    int randomInt = random.nextInt(weather_.length);
    Enum randomW = weather_[randomInt];
    String result = helperGenerateMealChoice(randomW, day);
    output += result;
  });
  return output;
}



