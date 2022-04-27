import 'dart:core';
import 'dart:io';

final morseMap = <String, String>{
  ".-": "a",
  "-...": "b",
  "-.-.": "c",
  "-..": "d",
  ".": "e",
  "..-.": "f",
  "--.": "g",
  "....": "h",
  "..": "i",
  ".---": "j",
  "-.-": "k",
  ".-..": "l",
  "--": "m",
  "-.": "n",
  "---": "o",
  ".--.": "p",
  "--.-": "q",
  ".-.": "r",
  "...": "s",
  "-": "t",
  "..-": "u",
  "...-": "v",
  ".--": "w",
  "-..-": "x",
  "-.--": "y",
  "--..": "z"
};
var result = [];
void main() {
  print("Input Morse Code: ");
  String? usrin = stdin.readLineSync();
  Translator(usrin!, "");
  print("Input Accepted: $usrin");
  for (String s in result) {
    print(s);
  }
}

void Translator(String code, String decodedValue) {
  if (code.length == 0 || code.isEmpty) {
    result.add(decodedValue);
  }
  for (int i = 1; i <= code.length && i <= 5; i++) {
    String temp = code.substring(0, i);
    if (code.contains(temp)) {
      var temp2 = morseMap[temp];
      Translator(code.substring(i), decodedValue + temp2!);
    }
  }
}
