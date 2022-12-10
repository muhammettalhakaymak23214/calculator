import 'package:flutter/material.dart';

import 'button_color.dart';

class ButtonColorSelection {
  //Seçimler
  static int secim1 = 0;
  static int secim2 = 0;
  static int secim3 = 0;
  static int secim4 = 0;
  static int secim5 = 0;
  static int secim6 = 0;
  static int secim7 = 0;
  static int secim8 = 0;
  static int secim9 = 0;
  static int secim0 = 0;
  static int secimArti = 0;
  static int secimEksi = 0;
  static int secimBolme = 0;
  static int secimCarpma = 0;
  static int secimEsittir = 0;
  static int secimMod = 0;
  static int secimNokta = 0;
  static int secimArtiEksi = 0;
  static int secimC = 0;
  static int secimParantezAc = 0;
  static int secimParantezKapa = 0;
  //Buton renkleri
  static Color colorBir = Color.fromARGB(255, 255, 250, 250);
  static Color colorIki = Color.fromARGB(255, 255, 250, 250);
  static Color colorUc = Color.fromARGB(255, 255, 250, 250);
  static Color colorDort = Color.fromARGB(255, 255, 250, 250);
  static Color colorBes = Color.fromARGB(255, 255, 250, 250);
  static Color colorAlti = Color.fromARGB(255, 255, 250, 250);
  static Color colorYedi = Color.fromARGB(255, 255, 250, 250);
  static Color colorSekiz = Color.fromARGB(255, 255, 250, 250);
  static Color colorDokuz = Color.fromARGB(255, 255, 250, 250);
  static Color colorSifir = Color.fromARGB(255, 255, 250, 250);
  static Color colorArtiEksi = Color.fromARGB(255, 255, 250, 250);
  static Color colorNokta = Color.fromARGB(255, 255, 250, 250);
  static Color colorEsittir = Color.fromARGB(255, 255, 250, 250);
  static Color colorEksi = Color.fromARGB(255, 255, 250, 250);
  static Color colorCarpi = Color.fromARGB(255, 255, 250, 250);
  static Color colorBolme = Color.fromARGB(255, 255, 250, 250);
  static Color colorC = Color.fromARGB(255, 255, 250, 250);
  static Color colorParantezAc = Color.fromARGB(255, 255, 250, 250);
  static Color colorParantezKapa = Color.fromARGB(255, 255, 250, 250);
  static Color colorMod = Color.fromARGB(255, 255, 250, 250);
  static Color colorArti = Color.fromARGB(255, 255, 250, 250);

  static void buttonColorSelection(String metin) {
    if (metin == "1") {
      colorBir = buttonColorSecici(secim1, metin);
    } else if (metin == "2") {
      colorIki = buttonColorSecici(secim2, metin);
    } else if (metin == "3") {
      colorUc = buttonColorSecici(secim3, metin);
    } else if (metin == "4") {
      colorDort = buttonColorSecici(secim4, metin);
    } else if (metin == "5") {
      colorBes = buttonColorSecici(secim5, metin);
    } else if (metin == "6") {
      colorAlti = buttonColorSecici(secim6, metin);
    } else if (metin == "7") {
      colorYedi = buttonColorSecici(secim7, metin);
    } else if (metin == "8") {
      colorSekiz = buttonColorSecici(secim8, metin);
    } else if (metin == "9") {
      colorDokuz = buttonColorSecici(secim9, metin);
    } else if (metin == "0") {
      colorSifir = buttonColorSecici(secim0, metin);
    } else if (metin == "+/-") {
      colorArtiEksi = buttonColorSecici(secimArtiEksi, metin);
    } else if (metin == "%") {
      colorMod = buttonColorSecici(secimMod, metin);
    } else if (metin == "(") {
      colorParantezAc = buttonColorSecici(secimParantezAc, metin);
    } else if (metin == ")") {
      colorParantezKapa = buttonColorSecici(secimParantezKapa, metin);
    } else if (metin == "/") {
      colorBolme = buttonColorSecici(secimBolme, metin);
    } else if (metin == "*") {
      colorCarpi = buttonColorSecici(secimCarpma, metin);
    } else if (metin == "-") {
      colorEksi = buttonColorSecici(secimEksi, metin);
    } else if (metin == "+") {
      colorArti = buttonColorSecici(secimArti, metin);
    } else if (metin == "C") {
      colorC = buttonColorSecici(secimC, metin);
    } else if (metin == ".") {
      colorNokta = buttonColorSecici(secimNokta, metin);
    } else if (metin == "=") {
      colorEsittir = buttonColorSecici(secimEsittir, metin);
    } else {
      print("hatahatahatahata");
    }
  }

  static Color buttonColorSecici(int secim, String metin) {
    if (secim == 0) {
      if (metin == "1") {
        secim1 = 1;
        print("dssdfsdfdsddddddddddddddddddddddddddddd");
      } else if (metin == "2") {
        secim2 = 1;
      } else if (metin == "3") {
        secim3 = 1;
      } else if (metin == "4") {
        secim4 = 1;
      } else if (metin == "5") {
        secim5 = 1;
      } else if (metin == "6") {
        secim6 = 1;
      } else if (metin == "7") {
        secim7 = 1;
      } else if (metin == "8") {
        secim8 = 1;
      } else if (metin == "9") {
        secim9 = 1;
      } else if (metin == "0") {
        secim0 = 1;
      } else if (metin == "+") {
        secimArti = 1;
      } else if (metin == "/") {
        secimBolme = 1;
      } else if (metin == "-") {
        secimEksi = 1;
      } else if (metin == "*") {
        secimCarpma = 1;
      } else if (metin == "(") {
        secimParantezAc = 1;
      } else if (metin == ")") {
        secimParantezKapa = 1;
      } else if (metin == ".") {
        secimNokta = 1;
      } else if (metin == "+/-") {
        secimArtiEksi = 1;
      } else if (metin == "=") {
        secimEsittir = 1;
      } else if (metin == "%") {
        secimMod = 1;
      } else if (metin == "C") {
        secimC = 1;
      }

      return ButtonColor.aktifColor;
    } else {
      if (metin == "1") {
        secim1 = 0;
      } else if (metin == "2") {
        secim2 = 0;
      } else if (metin == "3") {
        secim3 = 0;
      } else if (metin == "4") {
        secim4 = 0;
      } else if (metin == "5") {
        secim5 = 0;
      } else if (metin == "6") {
        secim6 = 0;
      } else if (metin == "7") {
        secim7 = 0;
      } else if (metin == "8") {
        secim8 = 0;
      } else if (metin == "9") {
        secim9 = 0;
      } else if (metin == "0") {
        secim0 = 0;
      } else if (metin == "+") {
        secimArti = 0;
      } else if (metin == "/") {
        secimBolme = 0;
      } else if (metin == "-") {
        secimEksi = 0;
      } else if (metin == "*") {
        secimCarpma = 0;
      } else if (metin == "(") {
        secimParantezAc = 0;
      } else if (metin == ")") {
        secimParantezKapa = 0;
      } else if (metin == ".") {
        secimNokta = 0;
      } else if (metin == "+/-") {
        secimArtiEksi = 0;
      } else if (metin == "=") {
        secimEsittir = 0;
      } else if (metin == "%") {
        secimMod = 0;
      } else if (metin == "C") {
        secimC = 0;
      }

      return ButtonColor.pasifColor;
    }
  }
}
