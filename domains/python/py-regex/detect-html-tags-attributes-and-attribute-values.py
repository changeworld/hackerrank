from html.parser import HTMLParser

class CustumHTMLParser(HTMLParser):
    def handle_starttag(self, tag, attrs):
        print(tag)
        for e in attrs: print('-> ' + e[0]+ ' > ' + str(e[1]))
    def handle_endtag(self, tag):
        pass
    def handle_startendtag(self, tag, attrs):
        print(tag)
        for e in attrs: print('-> ' + e[0]+ ' > ' + str(e[1]))

parser = CustumHTMLParser()
for _ in range(int(input())):
    parser.feed(input())