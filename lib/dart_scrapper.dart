import 'package:dart_scrapper/model.dart';
import 'package:http/http.dart';
import 'package:html/dom.dart';
import 'package:html/parser.dart';

initiate() async {
  var client = Client();

  Response response =
      await client.get('https://webscraper.io/test-sites/e-commerce/allinone');
  var document = parse(response.body);
  List<Element> links = document.querySelectorAll('h4 > a.title');

  List<Links> linkList = List<Links>();

  for (var link in links) {
    linkList.add(
      Links(
        link: link.attributes['href'],
        title: link.text,
      ),
    );
  }
  return linkList.map((e) => e.toJson());
}
