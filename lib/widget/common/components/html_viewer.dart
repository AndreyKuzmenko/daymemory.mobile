import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:vsc_quill_delta_to_html/vsc_quill_delta_to_html.dart';

class HtmlViewer extends StatefulWidget {
  const HtmlViewer(this.text, {Key? key, this.onHashTagPressed, required this.showMoreText, required this.scaleFactor}) : super(key: key);

  final String? text;

  final double scaleFactor;

  final String showMoreText;

  final Function(String)? onHashTagPressed;

  @override
  State<HtmlViewer> createState() => _HtmlViewerState();
}

class _HtmlViewerState extends State<HtmlViewer> {
  final double defaultFontSize = 18;
  String _html = "";

  @override
  void initState() {
    super.initState();
    _initHtml(false);
  }

  void _initHtml(bool expandText) {
    var maxElements = 10;
    var json = jsonDecode(widget.text!);
    var jsonElements = List.castFrom(json);
    final converter = QuillDeltaToHtmlConverter(
      List.castFrom(expandText ? jsonElements : jsonElements.take(maxElements).toList()),
      ConverterOptions.forEmail(),
    );

    _html = converter.convert();
    if (!expandText && jsonElements.length > maxElements) {
      _html += "<div><a href='more'>${widget.showMoreText}</a><div>";
    }
  }

  @override
  Widget build(BuildContext context) {
    // var document = parse(text == null ? "" : _parseText(text!.replaceAll("\n", "")));
    // var innerText = "";
    // var max = document.body!.children.length > 10 ? 10 : document.body!.children.length;
    // for (var i = 0; i < max; i++) {
    //   innerText += document.body!.children[i].outerHtml;
    // }

    //innerText = text;

    return Html(
      data: _html, //innerText,
      onLinkTap: (url, attributes, element) {
        // if (url == null) {
        //   return;
        // }
        if (url == "more") {
          setState(() {
            _initHtml(true);
          });
          return;
        }
        if (widget.onHashTagPressed != null && element != null) {
          widget.onHashTagPressed!(element.innerHtml);
        }
        // final uri = Uri.parse(url);
        // canLaunchUrl(uri).then((value) {
        //   launchUrl(uri);
        // });
      },
      style: {
        "body": Style(
          lineHeight: const LineHeight(1.3),
          fontSize: FontSize(16 * widget.scaleFactor),
          margin: Margins.zero,
          padding: HtmlPaddings.all(0),
        ),
        "p": Style(lineHeight: const LineHeight(1.3), fontSize: FontSize(16 * widget.scaleFactor), margin: Margins.only(left: 0, right: 0, top: 0, bottom: 5, unit: Unit.px)),
        "h2": Style(
            lineHeight: const LineHeight(1.3), fontWeight: FontWeight.w700, fontSize: FontSize(22 * widget.scaleFactor), margin: Margins.only(left: 0, right: 0, top: 10, bottom: 10, unit: Unit.px)),
        "h3": Style(
            lineHeight: const LineHeight(1.3), fontWeight: FontWeight.w700, fontSize: FontSize(18 * widget.scaleFactor), margin: Margins.only(left: 0, right: 0, top: 10, bottom: 10, unit: Unit.px)),
        "li": Style(
          fontSize: FontSize(16 * widget.scaleFactor),
          padding: HtmlPaddings.only(left: 10, top: 0, bottom: 5, right: 0),
          margin: Margins.only(left: 0, right: 0, top: 0, bottom: 0, unit: Unit.px),
        ),
        "a": Style(
          fontSize: FontSize(16 * widget.scaleFactor),
          textDecoration: TextDecoration.none,
        ),
        "br": Style(
          fontSize: FontSize(24 * widget.scaleFactor),
        ),
        "ol": Style(
          fontSize: FontSize(16 * widget.scaleFactor),
          padding: HtmlPaddings.only(left: 20),
          margin: Margins.only(left: 10, bottom: 0),
        ),
        "ul": Style(
          fontSize: FontSize(16 * widget.scaleFactor),
          padding: HtmlPaddings.only(left: 20),
          margin: Margins.only(left: 10, bottom: 0),
        ),
        "ul p": Style(
          fontSize: FontSize(16 * widget.scaleFactor),
          padding: HtmlPaddings.all(0),
          margin: Margins.only(left: 0, right: 0, top: 0, bottom: 0, unit: Unit.px),
        ),

        //"p": Style(padding: EdgeInsets.all(0), margin: EdgeInsets.all(0)),
      },
      //  customRender: {
      //   "li": (RenderContext context, Widget child, attributes, dom.Element element) {
      //     return this.customListItem(element);
      //   },
      //}
    );
  }
}
