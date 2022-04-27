import 'dart:core';
import 'dart:io';

var morseMap = <String, String>{
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
var invCd = [
  "a",
  "b",
  "c",
  "d",
  "e",
  "f",
  "g",
  "h",
  "i",
  "j",
  "k",
  "l",
  "m",
  "n",
  "o",
  "p",
  "q",
  "r",
  "s",
  "t",
  "u",
  "v",
  "w",
  "x",
  "y",
  "z",
  " ",
  "/",
  "`",
  "~",
  "_",
  "+",
  "=",
  "!",
  "@",
  "#",
  "%",
  "^",
  "&",
  "*",
  "(",
  ")",
  "?",
  "<",
  ">",
  "'",
  "{",
  "}",
  "[",
  "]",
  ":",
  ";"
];
var result = [];
int stateCh = 0;
void main() {
  print("Input Morse Code: ");
  var usrin = stdin.readLineSync();
  String trs = usrin.toString();

  for (int j = 0; j <= 51; j++) {
    if (trs.contains(invCd[j])) {
      stateCh = stateCh + 1;
      break;
    }
  }
  if (stateCh == 0) {
    print("Processing Begin");
    Translator(usrin!, "");

    print("Input Accepted: $usrin");

    for (String s in result) {
      print(s);
    }
  } else {
    print("Input Declined");
  }
}

void Translator(String code, String decodedValue) {
  if (code.length == 0 || code == Null) {
    result.add(decodedValue);
  }
  for (int i = 1; i <= code.length && i <= 5; i++) {
    String temp = code.substring(0, i);
    if (morseMap.containsKey(temp)) {
      var temp2 = morseMap[temp];
      Translator(code.substring(i), decodedValue + temp2!);
    }
  }
}
