package org.jsoup.parser;

import cz.msebera.android.httpclient.HttpStatus;
import cz.msebera.android.httpclient.message.TokenParser;
import j6.k;
import java.util.Arrays;
import k6.h;
import k6.i;
import k6.j;
import k6.l;
import k6.m;
import k6.n;
import k6.o;

/* loaded from: classes2.dex */
public final class b {

    /* renamed from: r, reason: collision with root package name */
    public static final char[] f19338r;

    /* renamed from: s, reason: collision with root package name */
    public static final int[] f19339s;

    /* renamed from: a, reason: collision with root package name */
    public final k6.a f19340a;

    /* renamed from: b, reason: collision with root package name */
    public final ParseErrorList f19341b;

    /* renamed from: d, reason: collision with root package name */
    public o f19343d;

    /* renamed from: i, reason: collision with root package name */
    public n f19348i;

    /* renamed from: o, reason: collision with root package name */
    public String f19354o;

    /* renamed from: c, reason: collision with root package name */
    public TokeniserState f19342c = TokeniserState.f19278b;

    /* renamed from: e, reason: collision with root package name */
    public boolean f19344e = false;

    /* renamed from: f, reason: collision with root package name */
    public String f19345f = null;

    /* renamed from: g, reason: collision with root package name */
    public final StringBuilder f19346g = new StringBuilder(1024);

    /* renamed from: h, reason: collision with root package name */
    public final StringBuilder f19347h = new StringBuilder(1024);

    /* renamed from: j, reason: collision with root package name */
    public final m f19349j = new m();

    /* renamed from: k, reason: collision with root package name */
    public final l f19350k = new l();

    /* renamed from: l, reason: collision with root package name */
    public final h f19351l = new h();

    /* renamed from: m, reason: collision with root package name */
    public final j f19352m = new j();

    /* renamed from: n, reason: collision with root package name */
    public final i f19353n = new i();

    /* renamed from: p, reason: collision with root package name */
    public final int[] f19355p = new int[1];

    /* renamed from: q, reason: collision with root package name */
    public final int[] f19356q = new int[2];

    static {
        char[] cArr = {'\t', '\n', '\r', '\f', TokenParser.SP, '<', '&'};
        f19338r = cArr;
        f19339s = new int[]{8364, 129, 8218, HttpStatus.SC_PAYMENT_REQUIRED, 8222, 8230, 8224, 8225, 710, 8240, 352, 8249, 338, 141, 381, 143, 144, 8216, 8217, 8220, 8221, 8226, 8211, 8212, 732, 8482, 353, 8250, 339, 157, 382, 376};
        Arrays.sort(cArr);
    }

    public b(k6.a aVar, ParseErrorList parseErrorList) {
        this.f19340a = aVar;
        this.f19341b = parseErrorList;
    }

    public final void a(TokeniserState tokeniserState) {
        this.f19340a.advance();
        this.f19342c = tokeniserState;
    }

    public final void b(String str) {
        ParseErrorList parseErrorList = this.f19341b;
        if (parseErrorList.a()) {
            parseErrorList.add(new k6.c(this.f19340a.pos(), "Invalid character reference: %s", str));
        }
    }

    public final int[] c(Character ch, boolean z6) {
        int i2;
        char c7;
        char c8;
        char c9;
        char c10;
        int[] iArr;
        int i7;
        String b7;
        char c11;
        int i8;
        int i9;
        char c12;
        k6.a aVar = this.f19340a;
        if (!aVar.isEmpty() && (ch == null || ch.charValue() != aVar.current())) {
            char[] cArr = f19338r;
            aVar.a();
            boolean isEmpty = aVar.isEmpty();
            char[] cArr2 = aVar.f17318a;
            if (isEmpty || Arrays.binarySearch(cArr, cArr2[aVar.f17322e]) < 0) {
                aVar.f17324g = aVar.f17322e;
                boolean f3 = aVar.f("#");
                String[] strArr = aVar.f17325h;
                char c13 = 'A';
                int[] iArr2 = this.f19355p;
                if (!f3) {
                    aVar.a();
                    int i10 = aVar.f17322e;
                    while (true) {
                        int i11 = aVar.f17322e;
                        if (i11 >= aVar.f17320c || (((c9 = cArr2[i11]) < 'A' || c9 > 'Z') && ((c9 < 'a' || c9 > 'z') && !Character.isLetter(c9)))) {
                            break;
                        }
                        aVar.f17322e++;
                    }
                    while (true) {
                        i2 = aVar.f17322e;
                        if (i2 < aVar.f17320c && (c8 = cArr2[i2]) >= '0' && c8 <= '9') {
                            aVar.f17322e = i2 + 1;
                        }
                    }
                    String b8 = k6.a.b(cArr2, strArr, i10, i2 - i10);
                    boolean h7 = aVar.h(';');
                    if (!k.isBaseNamedEntity(b8) && (!k.isNamedEntity(b8) || !h7)) {
                        aVar.f17322e = aVar.f17324g;
                        if (!h7) {
                            return null;
                        }
                        b("invalid named referenece '" + b8 + "'");
                        return null;
                    }
                    if (z6 && (aVar.j() || ((!aVar.isEmpty() && (c7 = cArr2[aVar.f17322e]) >= '0' && c7 <= '9') || aVar.i('=', '-', '_')))) {
                        aVar.f17322e = aVar.f17324g;
                        return null;
                    }
                    if (!aVar.f(";")) {
                        b("missing semicolon");
                    }
                    int[] iArr3 = this.f19356q;
                    int codepointsForName = k.codepointsForName(b8, iArr3);
                    if (codepointsForName == 1) {
                        iArr2[0] = iArr3[0];
                        return iArr2;
                    }
                    if (codepointsForName == 2) {
                        return iArr3;
                    }
                    h6.k.fail("Unexpected characters returned for ".concat(b8));
                    return iArr3;
                }
                boolean g7 = aVar.g("X");
                if (g7) {
                    aVar.a();
                    iArr = null;
                    int i12 = aVar.f17322e;
                    c10 = 0;
                    while (true) {
                        i9 = aVar.f17322e;
                        if (i9 >= aVar.f17320c || (((c12 = cArr2[i9]) < '0' || c12 > '9') && ((c12 < c13 || c12 > 'F') && (c12 < 'a' || c12 > 'f')))) {
                            break;
                        }
                        aVar.f17322e = i9 + 1;
                        c13 = 'A';
                    }
                    b7 = k6.a.b(cArr2, strArr, i12, i9 - i12);
                } else {
                    c10 = 0;
                    iArr = null;
                    aVar.a();
                    int i13 = aVar.f17322e;
                    while (true) {
                        i7 = aVar.f17322e;
                        if (i7 >= aVar.f17320c || (c11 = cArr2[i7]) < '0' || c11 > '9') {
                            break;
                        }
                        aVar.f17322e = i7 + 1;
                    }
                    b7 = k6.a.b(cArr2, strArr, i13, i7 - i13);
                }
                if (b7.length() == 0) {
                    b("numeric reference with no numerals");
                    aVar.f17322e = aVar.f17324g;
                    return iArr;
                }
                if (!aVar.f(";")) {
                    b("missing semicolon");
                }
                try {
                    i8 = Integer.valueOf(b7, g7 ? 16 : 10).intValue();
                } catch (NumberFormatException unused) {
                    i8 = -1;
                }
                if (i8 == -1 || ((i8 >= 55296 && i8 <= 57343) || i8 > 1114111)) {
                    b("character outside of valid range");
                    iArr2[c10] = 65533;
                    return iArr2;
                }
                if (i8 >= 128 && i8 < 160) {
                    b("character is not a valid unicode code point");
                    i8 = f19339s[i8 - 128];
                }
                iArr2[c10] = i8;
                return iArr2;
            }
        }
        return null;
    }

    public final n d(boolean z6) {
        n nVar;
        if (z6) {
            nVar = this.f19349j;
            nVar.f();
        } else {
            nVar = this.f19350k;
            nVar.f();
        }
        this.f19348i = nVar;
        return nVar;
    }

    public final void e() {
        o.g(this.f19347h);
    }

    public final void f(char c7) {
        g(String.valueOf(c7));
    }

    public final void g(String str) {
        if (this.f19345f == null) {
            this.f19345f = str;
            return;
        }
        StringBuilder sb = this.f19346g;
        if (sb.length() == 0) {
            sb.append(this.f19345f);
        }
        sb.append(str);
    }

    public final void h(o oVar) {
        h6.k.isFalse(this.f19344e, "There is an unread token pending!");
        this.f19343d = oVar;
        this.f19344e = true;
        Token$TokenType token$TokenType = oVar.f17385a;
        if (token$TokenType == Token$TokenType.f19241e) {
            this.f19354o = ((m) oVar).f17376b;
            return;
        }
        if (token$TokenType != Token$TokenType.f19242f || ((l) oVar).f17384j == null) {
            return;
        }
        ParseErrorList parseErrorList = this.f19341b;
        if (parseErrorList.a()) {
            int pos = this.f19340a.pos();
            k6.c cVar = new k6.c();
            cVar.f17343a = pos;
            cVar.f17344b = "Attributes incorrectly present on end tag";
            parseErrorList.add(cVar);
        }
    }

    public final void i() {
        h(this.f19353n);
    }

    public final void j() {
        h(this.f19352m);
    }

    public final void k() {
        n nVar = this.f19348i;
        if (nVar.f17378d != null) {
            nVar.o();
        }
        h(this.f19348i);
    }

    public final void l(TokeniserState tokeniserState) {
        ParseErrorList parseErrorList = this.f19341b;
        if (parseErrorList.a()) {
            parseErrorList.add(new k6.c(this.f19340a.pos(), "Unexpectedly reached end of file (EOF) in input state [%s]", tokeniserState));
        }
    }

    public final void m(TokeniserState tokeniserState) {
        ParseErrorList parseErrorList = this.f19341b;
        if (parseErrorList.a()) {
            k6.a aVar = this.f19340a;
            parseErrorList.add(new k6.c(aVar.pos(), "Unexpected character '%s' in input state [%s]", Character.valueOf(aVar.current()), tokeniserState));
        }
    }

    public final boolean n() {
        return this.f19354o != null && this.f19348i.m().equalsIgnoreCase(this.f19354o);
    }
}
