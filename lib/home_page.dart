import 'dart:math';
import 'package:calculator/hesap.dart';
import 'package:calculator/widgets/textbutton.dart';
import 'package:flutter/material.dart';
import 'button_color_selection.dart';
import 'button_metin.dart';

class HomePage extends StatefulWidget {
  var islemYazisi = <String>[];
  Color metinRengi = Colors.indigo;
  Color butonRengi = Colors.indigo;
  Color butonRengi2 = Colors.indigo;
  @override
  State<HomePage> createState() => _HomePageState();
  static String yazilacak = "";
  static var hesap1 = <String>[];
  static listeOlustur(String metin) {
    hesap1.add(metin);

    yazilacak = hesap1.toString();
    print(yazilacak);
  }
}

class _HomePageState extends State<HomePage> {
  String cevap = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(mainAxisAlignment: MainAxisAlignment.end, children: [
        Text(HomePage.yazilacak),
        Expanded(flex: 3, child: SizedBox()),
        Expanded(
          flex: 1,
          child: Container(
            alignment: const Alignment(1.0, 1.0),
            child: Padding(
              padding: EdgeInsets.fromLTRB(0, 0, 12, 6),
              child: Text(
                widget.islemYazisi
                    .toString()
                    .replaceAll(",", "".trim())
                    .replaceAll("[", ""..trim())
                    .replaceAll("]", "".trim())
                    .replaceAll(" ", "".trim()),
                style: TextStyle(fontSize: 30, color: Colors.black54),
              ),
            ),
          ),
        ),
        Expanded(
          flex: 1,
          child: Container(
            alignment: const Alignment(1.0, 1.0),
            child: Padding(
              padding: EdgeInsets.fromLTRB(0, 0, 12, 8),
              child: Text(
                cevap,
                style: const TextStyle(
                  fontSize: 40,
                  color: Colors.black,
                ),
              ),
            ),
          ),
        ),
        Expanded(
          flex: 1,
          child: Container(
            alignment: const Alignment(1.0, 1.0),
            child: Padding(
              padding: EdgeInsets.fromLTRB(0, 0, 12, 8),
              child: IconButton(
                icon: Icon(Icons.arrow_back_ios),
                onPressed: () {
                  if (widget.islemYazisi.isNotEmpty) {
                    widget.islemYazisi.removeLast();
                  }
                  setState(() {});
                },
              ),
            ),
          ),
        ),
        Expanded(
          flex: 1,
          child: birinciRow(),
        ),
        Expanded(
          flex: 1,
          child: ikinciRow(),
        ),
        Expanded(
          flex: 1,
          child: ucuncuRow(),
        ),
        Expanded(
          flex: 1,
          child: dorduncuRow(),
        ),
        Expanded(
          flex: 1,
          child: besinciRow(),
        ),
      ]),
    );
  }

  Row besinciRow() {
    return Row(
      children: [
        Expanded(
            flex: 2,
            child: Container(
              height: 100,
              width: 100,
              child: TextButton(
                style: TextButton.styleFrom(
                    enableFeedback: true,
                    backgroundColor: ButtonColorSelection.colorC,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(0),
                    ),
                    side: BorderSide(color: Color.fromARGB(255, 0, 0, 0))),
                onPressed: () {
                  widget.islemYazisi.clear();
                  ButtonColorSelection.buttonColorSelection(ButtonMetin.c);
                  setState(() {});
                },
                child: Text(
                  ButtonMetin.c,
                  style: TextStyle(color: widget.metinRengi, fontSize: 20),
                ),
              ),
            )),
        Expanded(
            flex: 2,
            child: Container(
              height: 100,
              width: 100,
              child: TextButton(
                style: TextButton.styleFrom(
                    enableFeedback: true,
                    backgroundColor: ButtonColorSelection.colorSifir,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(0),
                    ),
                    side: BorderSide(color: Color.fromARGB(255, 0, 0, 0))),
                onPressed: () {
                  widget.islemYazisi.add("0");
                  ButtonColorSelection.buttonColorSelection(ButtonMetin.sifir);
                  setState(() {});
                },
                child: Text(
                  ButtonMetin.sifir,
                  style: TextStyle(color: widget.metinRengi, fontSize: 20),
                ),
              ),
            )),
        Expanded(
            flex: 2,
            child: Container(
              height: 100,
              width: 100,
              child: TextButton(
                style: TextButton.styleFrom(
                    enableFeedback: true,
                    backgroundColor: ButtonColorSelection.colorNokta,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(0),
                    ),
                    side: BorderSide(color: Color.fromARGB(255, 0, 0, 0))),
                onPressed: () {
                  widget.islemYazisi.add(".");
                  ButtonColorSelection.buttonColorSelection(ButtonMetin.nokta);
                  setState(() {});
                },
                child: Text(
                  ButtonMetin.nokta,
                  style: TextStyle(color: widget.metinRengi, fontSize: 20),
                ),
              ),
            )),
        Expanded(
            flex: 2,
            child: Container(
              height: 100,
              width: 100,
              child: TextButton(
                style: TextButton.styleFrom(
                    enableFeedback: true,
                    backgroundColor: ButtonColorSelection.colorEsittir,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(0),
                    ),
                    side: BorderSide(color: Color.fromARGB(255, 0, 0, 0))),
                onPressed: () {
                  Hesap.islemListesi = widget.islemYazisi
                      .toString()
                      .replaceAll(",", "".trim())
                      .replaceAll("[", ""..trim())
                      .replaceAll("]", "".trim())
                      .replaceAll(" ", "".trim());
                  if (widget.islemYazisi.isNotEmpty) {
                    cevap = Hesap().sonucBulma();
                  }
                  ButtonColorSelection.buttonColorSelection(
                      ButtonMetin.esittir);
                  setState(() {});
                },
                child: Text(
                  ButtonMetin.esittir,
                  style: TextStyle(color: widget.metinRengi, fontSize: 20),
                ),
              ),
            )),
      ],
    );
  }

  Row dorduncuRow() {
    return Row(
      children: [
        Expanded(
            flex: 1,
            child: Container(
              height: 100,
              width: 100,
              child: TextButton(
                style: TextButton.styleFrom(
                    enableFeedback: true,
                    backgroundColor: ButtonColorSelection.colorBir,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(0),
                    ),
                    side: BorderSide(color: Color.fromARGB(255, 0, 0, 0))),
                onPressed: () {
                  widget.islemYazisi.add("1");
                  ButtonColorSelection.buttonColorSelection(ButtonMetin.bir);
                  setState(() {});
                },
                child: Text(
                  ButtonMetin.bir,
                  style: TextStyle(color: widget.metinRengi, fontSize: 20),
                ),
              ),
            )),
        Expanded(
            flex: 1,
            child: Container(
              height: 100,
              width: 100,
              child: TextButton(
                style: TextButton.styleFrom(
                    enableFeedback: true,
                    backgroundColor: ButtonColorSelection.colorIki,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(0),
                    ),
                    side: BorderSide(color: Color.fromARGB(255, 0, 0, 0))),
                onPressed: () {
                  widget.islemYazisi.add("2");
                  ButtonColorSelection.buttonColorSelection(ButtonMetin.iki);
                  setState(() {});
                },
                child: Text(
                  ButtonMetin.iki,
                  style: TextStyle(color: widget.metinRengi, fontSize: 20),
                ),
              ),
            )),
        Expanded(
            flex: 1,
            child: Container(
              height: 100,
              width: 100,
              child: TextButton(
                style: TextButton.styleFrom(
                    enableFeedback: true,
                    backgroundColor: ButtonColorSelection.colorUc,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(0),
                    ),
                    side: BorderSide(color: Color.fromARGB(255, 0, 0, 0))),
                onPressed: () {
                  widget.islemYazisi.add("3");
                  ButtonColorSelection.buttonColorSelection(ButtonMetin.uc);
                  setState(() {});
                },
                child: Text(
                  ButtonMetin.uc,
                  style: TextStyle(color: widget.metinRengi, fontSize: 20),
                ),
              ),
            )),
        Expanded(
            flex: 1,
            child: Container(
              height: 100,
              width: 100,
              child: TextButton(
                style: TextButton.styleFrom(
                    enableFeedback: true,
                    backgroundColor: ButtonColorSelection.colorArti,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(0),
                    ),
                    side: BorderSide(color: Color.fromARGB(255, 0, 0, 0))),
                onPressed: () {
                  widget.islemYazisi.add("+");
                  ButtonColorSelection.buttonColorSelection(ButtonMetin.arti);
                  setState(() {});
                },
                child: Text(
                  ButtonMetin.arti,
                  style: TextStyle(color: widget.metinRengi, fontSize: 20),
                ),
              ),
            )),
      ],
    );
  }

  Row ucuncuRow() {
    return Row(
      children: [
        Expanded(
            flex: 1,
            child: Container(
              height: 100,
              width: 100,
              child: TextButton(
                style: TextButton.styleFrom(
                    enableFeedback: true,
                    backgroundColor: ButtonColorSelection.colorDort,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(0),
                    ),
                    side: BorderSide(color: Color.fromARGB(255, 0, 0, 0))),
                onPressed: () {
                  widget.islemYazisi.add("4");
                  ButtonColorSelection.buttonColorSelection(ButtonMetin.dort);
                  setState(() {});
                },
                child: Text(
                  ButtonMetin.dort,
                  style: TextStyle(color: widget.metinRengi, fontSize: 20),
                ),
              ),
            )),
        Expanded(
            flex: 1,
            child: Container(
              height: 100,
              width: 100,
              child: TextButton(
                style: TextButton.styleFrom(
                    enableFeedback: true,
                    backgroundColor: ButtonColorSelection.colorBes,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(0),
                    ),
                    side: BorderSide(color: Color.fromARGB(255, 0, 0, 0))),
                onPressed: () {
                  widget.islemYazisi.add("5");
                  ButtonColorSelection.buttonColorSelection(ButtonMetin.bes);
                  setState(() {});
                },
                child: Text(
                  ButtonMetin.bes,
                  style: TextStyle(color: widget.metinRengi, fontSize: 20),
                ),
              ),
            )),
        Expanded(
            flex: 1,
            child: Container(
              height: 100,
              width: 100,
              child: TextButton(
                style: TextButton.styleFrom(
                    enableFeedback: true,
                    backgroundColor: ButtonColorSelection.colorAlti,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(0),
                    ),
                    side: BorderSide(color: Color.fromARGB(255, 0, 0, 0))),
                onPressed: () {
                  widget.islemYazisi.add("6");
                  ButtonColorSelection.buttonColorSelection(ButtonMetin.alti);
                  setState(() {});
                },
                child: Text(
                  ButtonMetin.alti,
                  style: TextStyle(color: widget.metinRengi, fontSize: 20),
                ),
              ),
            )),
        Expanded(
            flex: 1,
            child: Container(
              height: 100,
              width: 100,
              child: TextButton(
                style: TextButton.styleFrom(
                    enableFeedback: true,
                    backgroundColor: ButtonColorSelection.colorEksi,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(0),
                    ),
                    side: BorderSide(color: Color.fromARGB(255, 0, 0, 0))),
                onPressed: () {
                  widget.islemYazisi.add("-");
                  ButtonColorSelection.buttonColorSelection(ButtonMetin.eksi);
                  setState(() {});
                },
                child: Text(
                  ButtonMetin.eksi,
                  style: TextStyle(color: widget.metinRengi, fontSize: 20),
                ),
              ),
            )),
      ],
    );
  }

  Row ikinciRow() {
    return Row(
      children: [
        Expanded(
            flex: 1,
            child: Container(
              height: 100,
              width: 100,
              child: TextButton(
                style: TextButton.styleFrom(
                    enableFeedback: true,
                    backgroundColor: ButtonColorSelection.colorYedi,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(0),
                    ),
                    side: BorderSide(color: Color.fromARGB(255, 0, 0, 0))),
                onPressed: () {
                  widget.islemYazisi.add("7");
                  ButtonColorSelection.buttonColorSelection(ButtonMetin.yedi);
                  setState(() {});
                },
                child: Text(
                  ButtonMetin.yedi,
                  style: TextStyle(color: widget.metinRengi, fontSize: 20),
                ),
              ),
            )),
        Expanded(
            flex: 1,
            child: Container(
              height: 100,
              width: 100,
              child: TextButton(
                style: TextButton.styleFrom(
                    enableFeedback: true,
                    backgroundColor: ButtonColorSelection.colorSekiz,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(0),
                    ),
                    side: BorderSide(color: Color.fromARGB(255, 0, 0, 0))),
                onPressed: () {
                  widget.islemYazisi.add("8");
                  ButtonColorSelection.buttonColorSelection(ButtonMetin.sekiz);
                  setState(() {});
                },
                child: Text(
                  ButtonMetin.sekiz,
                  style: TextStyle(color: widget.metinRengi, fontSize: 20),
                ),
              ),
            )),
        Expanded(
            flex: 1,
            child: Container(
              height: 100,
              width: 100,
              child: TextButton(
                style: TextButton.styleFrom(
                    enableFeedback: true,
                    backgroundColor: ButtonColorSelection.colorDokuz,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(0),
                    ),
                    side: BorderSide(color: Color.fromARGB(255, 0, 0, 0))),
                onPressed: () {
                  widget.islemYazisi.add("9");
                  ButtonColorSelection.buttonColorSelection(ButtonMetin.dokuz);
                  setState(() {});
                },
                child: Text(
                  ButtonMetin.dokuz,
                  style: TextStyle(color: widget.metinRengi, fontSize: 20),
                ),
              ),
            )),
        Expanded(
            flex: 1,
            child: Container(
              height: 100,
              width: 100,
              child: TextButton(
                style: TextButton.styleFrom(
                    enableFeedback: true,
                    backgroundColor: ButtonColorSelection.colorCarpi,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(0),
                    ),
                    side: BorderSide(color: Color.fromARGB(255, 0, 0, 0))),
                onPressed: () {
                  widget.islemYazisi.add("*");
                  ButtonColorSelection.buttonColorSelection(ButtonMetin.carpi);
                  setState(() {});
                },
                child: Text(
                  ButtonMetin.carpi,
                  style: TextStyle(color: widget.metinRengi, fontSize: 20),
                ),
              ),
            )),
      ],
    );
  }

  Row birinciRow() {
    return Row(
      children: [
        Expanded(
            flex: 2,
            child: Container(
              height: 100,
              width: 100,
              child: TextButton(
                style: TextButton.styleFrom(
                    enableFeedback: true,
                    backgroundColor: ButtonColorSelection.colorParantezAc,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(0),
                    ),
                    side: BorderSide(color: Color.fromARGB(255, 0, 0, 0))),
                onPressed: () {
                  widget.islemYazisi.add("(");
                  ButtonColorSelection.buttonColorSelection(
                      ButtonMetin.parantezAc);
                  setState(() {});
                },
                child: Text(
                  ButtonMetin.parantezAc,
                  style: TextStyle(color: widget.metinRengi, fontSize: 20),
                ),
              ),
            )),
        Expanded(
            flex: 2,
            child: Container(
              height: 100,
              width: 100,
              child: TextButton(
                style: TextButton.styleFrom(
                    enableFeedback: true,
                    backgroundColor: ButtonColorSelection.colorParantezKapa,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(0),
                    ),
                    side: BorderSide(color: Color.fromARGB(255, 0, 0, 0))),
                onPressed: () {
                  widget.islemYazisi.add(")");
                  ButtonColorSelection.buttonColorSelection(
                      ButtonMetin.parantezKapa);
                  setState(() {});
                },
                child: Text(
                  ButtonMetin.parantezKapa,
                  style: TextStyle(color: widget.metinRengi, fontSize: 20),
                ),
              ),
            )),
        Expanded(
            flex: 2,
            child: Container(
              height: 100,
              width: 100,
              child: TextButton(
                style: TextButton.styleFrom(
                    enableFeedback: true,
                    backgroundColor: ButtonColorSelection.colorMod,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(0),
                    ),
                    side: BorderSide(color: Color.fromARGB(255, 0, 0, 0))),
                onPressed: () {
                  widget.islemYazisi.add("%");
                  ButtonColorSelection.buttonColorSelection(ButtonMetin.mod);
                  setState(() {});
                },
                child: Text(
                  ButtonMetin.mod,
                  style: TextStyle(color: widget.metinRengi, fontSize: 20),
                ),
              ),
            )),
        Expanded(
            flex: 2,
            child: Container(
              height: 100,
              width: 100,
              child: TextButton(
                style: TextButton.styleFrom(
                    enableFeedback: true,
                    backgroundColor: ButtonColorSelection.colorBolme,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(0),
                    ),
                    side:
                        const BorderSide(color: Color.fromARGB(255, 0, 0, 0))),
                onPressed: () {
                  widget.islemYazisi.add("/");
                  ButtonColorSelection.buttonColorSelection(ButtonMetin.bolme);
                  setState(() {});
                },
                child: Text(
                  ButtonMetin.bolme,
                  style: TextStyle(color: widget.metinRengi, fontSize: 20),
                ),
              ),
            )),
      ],
    );
  }
}
