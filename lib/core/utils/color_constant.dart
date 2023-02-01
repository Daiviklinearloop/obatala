import 'dart:ui';
import 'package:flutter/material.dart';

class ColorConstant {

  static Color appPrimaryColor = fromHex('#703926');

  static Color bluegray50 = fromHex('#f0f0f5');

  static Color black9007b = fromHex('#7b000000');

  static Color lightBlue900 = fromHex('#0063ad');

  static Color black90087 = fromHex('#87000000');

  static Color teal300 = fromHex('#3dada8');

  static Color black900Dd = fromHex('#dd000000');

  static Color gray40052 = fromHex('#52bdbdbd');

  static Color gray600 = fromHex('#707070');

  static Color gray601 = fromHex('#94785e');

  static Color gray400 = fromHex('#bababa');

  static Color gray401 = fromHex('#b0b0b0');

  static Color amber100 = fromHex('#ffebba');

  static Color gray4003b = fromHex('#3bbdbdbd');

  static Color gray200 = fromHex('#ebebeb');

  static Color gray201 = fromHex('#e8e8e8');

  static Color bluegray403 = fromHex('#888888');

  static Color bluegray402 = fromHex('#858f99');

  static Color bluegray600 = fromHex('#52578f');

  static Color bluegray401 = fromHex('#8c8c8c');

  static Color bluegray400 = fromHex('#8a8a8f');

  static Color whiteA700 = fromHex('#ffffff');

  static Color deepOrange50 = fromHex('#ffe3e3');

  static Color gray30075 = fromHex('#75dbdee3');

  static Color gray400A8 = fromHex('#a8bdbdbd');

  static Color blueA700 = fromHex('#2661ff');
  static Color transparent = fromHex('#00FFFFFF');
  static Color appointmentStatusBg = fromHex('#FFE4E4');

  static Color instruction1 = fromHex('#FF8086');
  static Color instruction2 = fromHex('#9D80FF');
  static Color instruction3 = fromHex('#72EC93');

  static Color gray5029 = fromHex('#29fafafa');

  static Color lightGreen100 = fromHex('#dbffb5');

  static Color black90070 = fromHex('#70000000');

  static Color greenA200 = fromHex('#73ed94');

  static Color gray50 = fromHex('#fff7fa');

  static Color red50 = fromHex('#ffedf0');

  static Color amber6004d = fromHex('#4dfcb000');

  static Color pinkA200 = fromHex('#ff4d73');

  static Color black900 = fromHex('#000000');

  static Color black90060 = fromHex('#60000000');

  static Color lightGreen700 = fromHex('#6eb324');

  static Color black901 = fromHex('#030303');

  static Color redA400 = fromHex('#ed1745');

  static Color black90029 = fromHex('#29000000');

  static Color gray300A8 = fromHex('#a8dedede');

  static Color deepPurpleA100 = fromHex('#9e80ff');

  static Color gray501 = fromHex('#969696');

  static Color gray700 = fromHex('#666666');

  static Color red8004d = fromHex('#4ddb002e');

  static Color gray301 = fromHex('#e3e3e3');

  static Color gray500 = fromHex('#999999');
  static Color slotBgColor = fromHex('#008080');

  static Color amber600 = fromHex('#fcb000');

  static Color indigo50 = fromHex('#e8e8ff');

  static Color gray701 = fromHex('#695c5c');

  static Color redA100 = fromHex('#ff8087');

  static Color bluegray100 = fromHex('#d4d4d4');

  static Color gray101 = fromHex('#f2f5f5');

  static Color gray300 = fromHex('#dbdee3');

  static Color gray100 = fromHex('#f2f2f2');

  static Color bluegray900 = fromHex('#2e2e2e');

  static Color redA40066 = fromHex('#66ed1745');

  static Color bluegray300 = fromHex('#9694ad');

  static Color gray70066 = fromHex('#66666666');
  static Color versionColor = fromHex('#9695AD');
  static Color upcoming = fromHex('#ED1846');
  static Color followup = fromHex('#FCB100');
  static Color completed = fromHex('#6DB324');

  static Color fromHex(String hexString) {
    final buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
    buffer.write(hexString.replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }
}
