import 'dart:convert';

import 'package:daymemory/widget/theme/theme_colors_extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:vsc_quill_delta_to_html/vsc_quill_delta_to_html.dart';

class HtmlViewer extends StatefulWidget {
  const HtmlViewer(this.text, {super.key, this.onHashTagPressed, required this.showMoreText, required this.scaleFactor});

  final String? text;

  final double scaleFactor;

  final String showMoreText;

  final Function(String)? onHashTagPressed;

  @override
  State<HtmlViewer> createState() => _HtmlViewerState();
}

class _HtmlViewerState extends State<HtmlViewer> {
  //final double _defaultFontSize = 18;
  final _maxElements = 10;
  bool _isExpanded = false;

  String _getHtml(String text) {
    var html = "";
    try {
      var json = jsonDecode(text);
      var jsonElements = List.castFrom(json);
      final converter = QuillDeltaToHtmlConverter(
        List.castFrom(_isExpanded ? jsonElements : jsonElements.take(_maxElements).toList()),
        ConverterOptions(multiLineParagraph: false),
      );

      html = converter.convert();
      if (!_isExpanded && jsonElements.length > _maxElements) {
        html += "<div><a href='more'>${widget.showMoreText}</a><div>";
      }
    } catch (e) {
      html = e.toString();
    }
    return html;
  }

  @override
  Widget build(BuildContext context) {
    final html = _getHtml(widget.text ?? "").replaceAll("<p><br/></p>", "<p>&#8203;</p>");

    return Html(
      data: html, //innerText,

      onLinkTap: (url, attributes, element) {
        // if (url == null) {
        //   return;
        // }
        if (url == "more") {
          setState(() {
            _isExpanded = true;
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
        "p": Style(
          lineHeight: const LineHeight(1.3),
          fontSize: FontSize(16 * widget.scaleFactor),
          margin: Margins.only(left: 0, right: 0, top: 10, bottom: 10, unit: Unit.px),
        ),
        "h2": Style(
          lineHeight: const LineHeight(1.3),
          fontWeight: FontWeight.w700,
          fontSize: FontSize(22 * widget.scaleFactor),
          margin: Margins.only(left: 0, right: 0, top: 10, bottom: 10, unit: Unit.px),
        ),
        "h3": Style(
          lineHeight: const LineHeight(1.3),
          fontWeight: FontWeight.w700,
          fontSize: FontSize(20 * widget.scaleFactor),
          margin: Margins.only(left: 0, right: 0, top: 15, bottom: 15, unit: Unit.px),
        ),
        "li": Style(
          fontSize: FontSize(16 * widget.scaleFactor),
          padding: HtmlPaddings.only(left: 5, top: 5, bottom: 5, right: 0),
          margin: Margins.only(left: 0, right: 0, top: 0, bottom: 0, unit: Unit.px),
        ),
        "a": Style(
          fontSize: FontSize(16 * widget.scaleFactor),
          textDecoration: TextDecoration.none,
          color: Theme.of(context).extension<ThemeColors>()!.accentColor,
        ),
        "ol": Style(
          fontSize: FontSize(16 * widget.scaleFactor),
          padding: HtmlPaddings.only(left: 15),
          margin: Margins.only(left: 0, bottom: 0, top: 0),
        ),
        "ul": Style(
          fontSize: FontSize(16 * widget.scaleFactor),
          padding: HtmlPaddings.only(left: 15),
          margin: Margins.only(left: 0, bottom: 0, top: 0),
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
