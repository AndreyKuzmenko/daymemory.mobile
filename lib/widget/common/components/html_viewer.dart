import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_html/flutter_html.dart';

class HtmlViewer extends StatelessWidget {
  const HtmlViewer(this.text, {Key? key, this.onHashTagPressed, required this.scaleFactor}) : super(key: key);

  final String? text;

  final double scaleFactor;

  final Function(String)? onHashTagPressed;

  final double defaultFontSize = 18;

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
      data: text == null ? "" : text!.replaceAll("\n", ""), //innerText,
      onLinkTap: (url, attributes, element) {
        // if (url == null) {
        //   return;
        // }
        if (onHashTagPressed != null && element != null) {
          onHashTagPressed!(element.innerHtml);
        }
        // final uri = Uri.parse(url);
        // canLaunchUrl(uri).then((value) {
        //   launchUrl(uri);
        // });
      },
      style: {
        "body": Style(
          lineHeight: const LineHeight(1.3),
          fontSize: FontSize(16 * scaleFactor),
          margin: Margins.zero,
          padding: HtmlPaddings.all(0),
        ),
        "p": Style(lineHeight: const LineHeight(1.3), fontSize: FontSize(16 * scaleFactor), margin: Margins.only(left: 0, right: 0, top: 0, bottom: 5, unit: Unit.px)),
        "h2": Style(lineHeight: const LineHeight(1.3), fontWeight: FontWeight.w700, fontSize: FontSize(22 * scaleFactor), margin: Margins.only(left: 0, right: 0, top: 5, bottom: 5, unit: Unit.px)),
        "h3": Style(lineHeight: const LineHeight(1.3), fontWeight: FontWeight.w700, fontSize: FontSize(18 * scaleFactor), margin: Margins.only(left: 0, right: 0, top: 5, bottom: 5, unit: Unit.px)),
        "li": Style(
          fontSize: FontSize(16 * scaleFactor),
          padding: HtmlPaddings.only(left: 5, top: 0, bottom: 5, right: 0),
          margin: Margins.only(left: 0, right: 0, top: 0, bottom: 0, unit: Unit.px),
        ),
        "a": Style(
          fontSize: FontSize(16 * scaleFactor),
          textDecoration: TextDecoration.none,
        ),
        "ol": Style(
          fontSize: FontSize(16 * scaleFactor),
          padding: HtmlPaddings.all(0),
          margin: Margins.zero,
        ),
        "ul": Style(
          fontSize: FontSize(16 * scaleFactor),
          padding: HtmlPaddings.all(0),
          margin: Margins.zero,
        ),
        "ul p": Style(
          fontSize: FontSize(16 * scaleFactor),
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

  // String _parseText(String text) {
  //   String result = text;
  //   RegExp reg = RegExp(r"(#(?:[^\x00-\x7F]|\w)+)");
  //   Iterable<Match> matches = reg.allMatches(result);

  //   while (matches.isNotEmpty) {
  //     var match = matches.first;
  //     var t = result.substring(match.start, match.end);
  //     result = result.replaceRange(match.start, match.end, "<a href='link'>${t.replaceAll("#", "")}</a>");
  //     matches = reg.allMatches(result);
  //   }

  //   return result.replaceAll("<a href='link'>", "<a href='link'>#");
  // }
}
