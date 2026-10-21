package l6;

import cz.msebera.android.httpclient.message.TokenParser;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.apache.commons.lang3.StringUtils;
import org.jsoup.select.Selector$SelectorParseException;

/* loaded from: classes2.dex */
public final class W {

    /* renamed from: d, reason: collision with root package name */
    public static final String[] f18162d = {",", ">", "+", "~", StringUtils.SPACE};

    /* renamed from: e, reason: collision with root package name */
    public static final String[] f18163e = {"=", "!=", "^=", "$=", "*=", "~="};

    /* renamed from: f, reason: collision with root package name */
    public static final Pattern f18164f = Pattern.compile("(([+-])?(\\d+)?)n(\\s*([+-])?\\s*\\d+)?", 2);

    /* renamed from: g, reason: collision with root package name */
    public static final Pattern f18165g = Pattern.compile("([+-])?(\\d+)");

    /* renamed from: a, reason: collision with root package name */
    public k6.p f18166a;

    /* renamed from: b, reason: collision with root package name */
    public String f18167b;

    /* renamed from: c, reason: collision with root package name */
    public ArrayList f18168c;

    public static S parse(String str) {
        try {
            W w6 = new W();
            w6.f18168c = new ArrayList();
            w6.f18167b = str;
            w6.f18166a = new k6.p(str);
            return w6.g();
        } catch (IllegalArgumentException e3) {
            throw new Selector$SelectorParseException(e3.getMessage(), new Object[0]);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:27:0x00a1  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x010b  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x0117  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x00b2  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void a(char r11) {
        /*
            Method dump skipped, instructions count: 298
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: l6.W.a(char):void");
    }

    public final int b() {
        String trim = this.f18166a.chompTo(")").trim();
        h6.k.isTrue(h6.j.isNumeric(trim), "Index must be numeric");
        return Integer.parseInt(trim);
    }

    public final void c(boolean z6) {
        String str = z6 ? ":containsOwn" : ":contains";
        k6.p pVar = this.f18166a;
        pVar.consume(str);
        String unescape = k6.p.unescape(pVar.chompBalanced('(', ')'));
        h6.k.notEmpty(unescape, ":contains(text) query must not be empty");
        ArrayList arrayList = this.f18168c;
        if (z6) {
            arrayList.add(new C1248s(unescape));
        } else {
            arrayList.add(new C1249t(unescape));
        }
    }

    public final void d(boolean z6, boolean z7) {
        int parseInt;
        String normalize = i6.b.normalize(this.f18166a.chompTo(")"));
        Matcher matcher = f18164f.matcher(normalize);
        Matcher matcher2 = f18165g.matcher(normalize);
        if ("odd".equals(normalize)) {
            r0 = 2;
            parseInt = 1;
        } else if ("even".equals(normalize)) {
            parseInt = 0;
            r0 = 2;
        } else if (matcher.matches()) {
            int parseInt2 = matcher.group(3) != null ? Integer.parseInt(matcher.group(1).replaceFirst("^\\+", "")) : 1;
            parseInt = matcher.group(4) != null ? Integer.parseInt(matcher.group(4).replaceFirst("^\\+", "")) : 0;
            r0 = parseInt2;
        } else {
            if (!matcher2.matches()) {
                throw new Selector$SelectorParseException("Could not parse nth-index '%s': unexpected format", normalize);
            }
            parseInt = Integer.parseInt(matcher2.group().replaceFirst("^\\+", ""));
        }
        ArrayList arrayList = this.f18168c;
        if (z7) {
            if (z6) {
                arrayList.add(new H(r0, parseInt));
                return;
            } else {
                arrayList.add(new I(r0, parseInt));
                return;
            }
        }
        if (z6) {
            arrayList.add(new G(r0, parseInt));
        } else {
            arrayList.add(new F(r0, parseInt));
        }
    }

    public final void e() {
        k6.p pVar = this.f18166a;
        boolean matchChomp = pVar.matchChomp("#");
        ArrayList arrayList = this.f18168c;
        if (matchChomp) {
            String consumeCssIdentifier = pVar.consumeCssIdentifier();
            h6.k.notEmpty(consumeCssIdentifier);
            arrayList.add(new C1251v(consumeCssIdentifier));
            return;
        }
        if (pVar.matchChomp(".")) {
            String consumeCssIdentifier2 = pVar.consumeCssIdentifier();
            h6.k.notEmpty(consumeCssIdentifier2);
            arrayList.add(new C1247q(consumeCssIdentifier2.trim()));
            return;
        }
        if (pVar.matchesWord() || pVar.matches("*|")) {
            String consumeElementSelector = pVar.consumeElementSelector();
            h6.k.notEmpty(consumeElementSelector);
            if (!consumeElementSelector.startsWith("*|")) {
                if (consumeElementSelector.contains("|")) {
                    consumeElementSelector = consumeElementSelector.replace("|", ":");
                }
                arrayList.add(new P(consumeElementSelector.trim()));
                return;
            }
            List asList = Arrays.asList(new P(i6.b.normalize(consumeElementSelector)), new Q(i6.b.normalize(consumeElementSelector.replace("*|", ":"))));
            C1235e c1235e = new C1235e();
            int i2 = c1235e.f18176b;
            ArrayList arrayList2 = c1235e.f18175a;
            if (i2 > 1) {
                arrayList2.add(new C1234d(asList));
            } else {
                arrayList2.addAll(asList);
            }
            c1235e.f18176b = arrayList2.size();
            arrayList.add(c1235e);
            return;
        }
        boolean matches = pVar.matches("[");
        String str = this.f18167b;
        if (matches) {
            k6.p pVar2 = new k6.p(pVar.chompBalanced('[', ']'));
            String consumeToAny = pVar2.consumeToAny(f18163e);
            h6.k.notEmpty(consumeToAny);
            pVar2.consumeWhitespace();
            if (pVar2.isEmpty()) {
                if (consumeToAny.startsWith("^")) {
                    arrayList.add(new C1240j(consumeToAny.substring(1)));
                    return;
                } else {
                    arrayList.add(new C1238h(consumeToAny));
                    return;
                }
            }
            if (pVar2.matchChomp("=")) {
                arrayList.add(new C1241k(consumeToAny, pVar2.remainder()));
                return;
            }
            if (pVar2.matchChomp("!=")) {
                arrayList.add(new C1245o(consumeToAny, pVar2.remainder()));
                return;
            }
            if (pVar2.matchChomp("^=")) {
                arrayList.add(new C1246p(consumeToAny, pVar2.remainder()));
                return;
            }
            if (pVar2.matchChomp("$=")) {
                arrayList.add(new C1243m(consumeToAny, pVar2.remainder()));
                return;
            } else if (pVar2.matchChomp("*=")) {
                arrayList.add(new C1242l(consumeToAny, pVar2.remainder()));
                return;
            } else {
                if (!pVar2.matchChomp("~=")) {
                    throw new Selector$SelectorParseException("Could not parse attribute query '%s': unexpected token at '%s'", str, pVar2.remainder());
                }
                arrayList.add(new C1244n(consumeToAny, Pattern.compile(pVar2.remainder())));
                return;
            }
        }
        if (pVar.matchChomp("*")) {
            arrayList.add(new C1237g());
            return;
        }
        if (pVar.matchChomp(":lt(")) {
            arrayList.add(new C1255z(b()));
            return;
        }
        if (pVar.matchChomp(":gt(")) {
            arrayList.add(new C1254y(b()));
            return;
        }
        if (pVar.matchChomp(":eq(")) {
            arrayList.add(new C1252w(b()));
            return;
        }
        if (pVar.matches(":has(")) {
            pVar.consume(":has");
            String chompBalanced = pVar.chompBalanced('(', ')');
            h6.k.notEmpty(chompBalanced, ":has(el) subselect must not be empty");
            arrayList.add(new Y(parse(chompBalanced)));
            return;
        }
        if (pVar.matches(":contains(")) {
            c(false);
            return;
        }
        if (pVar.matches(":containsOwn(")) {
            c(true);
            return;
        }
        if (pVar.matches(":containsData(")) {
            pVar.consume(":containsData");
            String unescape = k6.p.unescape(pVar.chompBalanced('(', ')'));
            h6.k.notEmpty(unescape, ":containsData(text) query must not be empty");
            arrayList.add(new r(unescape));
            return;
        }
        if (pVar.matches(":matches(")) {
            f(false);
            return;
        }
        if (pVar.matches(":matchesOwn(")) {
            f(true);
            return;
        }
        if (pVar.matches(":not(")) {
            pVar.consume(":not");
            String chompBalanced2 = pVar.chompBalanced('(', ')');
            h6.k.notEmpty(chompBalanced2, ":not(selector) subselect must not be empty");
            arrayList.add(new b0(parse(chompBalanced2)));
            return;
        }
        if (pVar.matchChomp(":nth-child(")) {
            d(false, false);
            return;
        }
        if (pVar.matchChomp(":nth-last-child(")) {
            d(true, false);
            return;
        }
        if (pVar.matchChomp(":nth-of-type(")) {
            d(false, true);
            return;
        }
        if (pVar.matchChomp(":nth-last-of-type(")) {
            d(true, true);
            return;
        }
        if (pVar.matchChomp(":first-child")) {
            arrayList.add(new B());
            return;
        }
        if (pVar.matchChomp(":last-child")) {
            arrayList.add(new D());
            return;
        }
        if (pVar.matchChomp(":first-of-type")) {
            arrayList.add(new C());
            return;
        }
        if (pVar.matchChomp(":last-of-type")) {
            arrayList.add(new E());
            return;
        }
        if (pVar.matchChomp(":only-child")) {
            arrayList.add(new J());
            return;
        }
        if (pVar.matchChomp(":only-of-type")) {
            arrayList.add(new K());
            return;
        }
        if (pVar.matchChomp(":empty")) {
            arrayList.add(new A());
        } else if (pVar.matchChomp(":root")) {
            arrayList.add(new L());
        } else {
            if (!pVar.matchChomp(":matchText")) {
                throw new Selector$SelectorParseException("Could not parse query '%s': unexpected token at '%s'", str, pVar.remainder());
            }
            arrayList.add(new M());
        }
    }

    public final void f(boolean z6) {
        String str = z6 ? ":matchesOwn" : ":matches";
        k6.p pVar = this.f18166a;
        pVar.consume(str);
        String chompBalanced = pVar.chompBalanced('(', ')');
        h6.k.notEmpty(chompBalanced, ":matches(regex) query must not be empty");
        ArrayList arrayList = this.f18168c;
        if (z6) {
            arrayList.add(new O(Pattern.compile(chompBalanced)));
        } else {
            arrayList.add(new N(Pattern.compile(chompBalanced)));
        }
    }

    public final S g() {
        k6.p pVar = this.f18166a;
        pVar.consumeWhitespace();
        String[] strArr = f18162d;
        boolean matchesAny = pVar.matchesAny(strArr);
        ArrayList arrayList = this.f18168c;
        if (matchesAny) {
            arrayList.add(new e0());
            a(pVar.consume());
        } else {
            e();
        }
        while (!pVar.isEmpty()) {
            boolean consumeWhitespace = pVar.consumeWhitespace();
            if (pVar.matchesAny(strArr)) {
                a(pVar.consume());
            } else if (consumeWhitespace) {
                a(TokenParser.SP);
            } else {
                e();
            }
        }
        return arrayList.size() == 1 ? (S) arrayList.get(0) : new C1234d(arrayList);
    }
}
