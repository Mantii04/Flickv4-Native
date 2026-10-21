package org.jsoup.parser;

import androidx.media3.exoplayer.upstream.CmcdConfiguration;
import h6.j;
import h6.k;
import j6.e;
import j6.l;
import j6.p;
import j6.r;
import java.io.Reader;
import java.util.ArrayList;
import k6.d;
import k6.f;
import k6.g;
import k6.h;
import k6.i;
import k6.m;
import k6.o;

/* loaded from: classes2.dex */
public final class a extends c {

    /* renamed from: k, reason: collision with root package name */
    public HtmlTreeBuilderState f19327k;

    /* renamed from: l, reason: collision with root package name */
    public HtmlTreeBuilderState f19328l;

    /* renamed from: m, reason: collision with root package name */
    public boolean f19329m;

    /* renamed from: n, reason: collision with root package name */
    public org.jsoup.nodes.b f19330n;

    /* renamed from: o, reason: collision with root package name */
    public l f19331o;

    /* renamed from: p, reason: collision with root package name */
    public ArrayList f19332p;

    /* renamed from: q, reason: collision with root package name */
    public ArrayList f19333q;

    /* renamed from: r, reason: collision with root package name */
    public k6.l f19334r;

    /* renamed from: s, reason: collision with root package name */
    public boolean f19335s;

    /* renamed from: t, reason: collision with root package name */
    public boolean f19336t;

    /* renamed from: u, reason: collision with root package name */
    public final String[] f19337u = {null};

    /* renamed from: v, reason: collision with root package name */
    public static final String[] f19322v = {"applet", "caption", "html", "marquee", "object", "table", "td", "th"};

    /* renamed from: w, reason: collision with root package name */
    public static final String[] f19323w = {"ol", "ul"};

    /* renamed from: x, reason: collision with root package name */
    public static final String[] f19324x = {"button"};

    /* renamed from: y, reason: collision with root package name */
    public static final String[] f19325y = {"html", "table"};

    /* renamed from: z, reason: collision with root package name */
    public static final String[] f19326z = {"optgroup", "option"};

    /* renamed from: A, reason: collision with root package name */
    public static final String[] f19320A = {"dd", "dt", "li", "optgroup", "option", "p", "rp", "rt"};

    /* renamed from: B, reason: collision with root package name */
    public static final String[] f19321B = {"address", "applet", "area", "article", "aside", "base", "basefont", "bgsound", "blockquote", "body", CmcdConfiguration.KEY_BITRATE, "button", "caption", "center", "col", "colgroup", "command", "dd", "details", "dir", "div", CmcdConfiguration.KEY_DEADLINE, "dt", "embed", "fieldset", "figcaption", "figure", "footer", "form", "frame", "frameset", "h1", "h2", "h3", "h4", "h5", "h6", "head", "header", "hgroup", "hr", "html", "iframe", "img", "input", "isindex", "li", "link", "listing", "marquee", "menu", "meta", "nav", "noembed", "noframes", "noscript", "object", "ol", "p", "param", "plaintext", "pre", "script", "section", "select", "style", "summary", "table", "tbody", "td", "textarea", "tfoot", "th", "thead", "title", "tr", "ul", "wbr", "xmp"};

    public static boolean u(ArrayList arrayList, org.jsoup.nodes.b bVar) {
        for (int size = arrayList.size() - 1; size >= 0; size--) {
            if (((org.jsoup.nodes.b) arrayList.get(size)) == bVar) {
                return true;
            }
        }
        return false;
    }

    public final void A(org.jsoup.nodes.b bVar) {
        for (int size = this.f19332p.size() - 1; size >= 0; size--) {
            if (((org.jsoup.nodes.b) this.f19332p.get(size)) == bVar) {
                this.f19332p.remove(size);
                return;
            }
        }
    }

    public final void B(org.jsoup.nodes.b bVar) {
        for (int size = this.f19360d.size() - 1; size >= 0; size--) {
            if (((org.jsoup.nodes.b) this.f19360d.get(size)) == bVar) {
                this.f19360d.remove(size);
                return;
            }
        }
    }

    public final void C() {
        boolean z6 = false;
        for (int size = this.f19360d.size() - 1; size >= 0; size--) {
            org.jsoup.nodes.b bVar = (org.jsoup.nodes.b) this.f19360d.get(size);
            if (size == 0) {
                bVar = null;
                z6 = true;
            }
            String nodeName = bVar.nodeName();
            if ("select".equals(nodeName)) {
                this.f19327k = HtmlTreeBuilderState.f19237y;
                return;
            }
            if ("td".equals(nodeName) || ("th".equals(nodeName) && !z6)) {
                this.f19327k = HtmlTreeBuilderState.f19236x;
                return;
            }
            if ("tr".equals(nodeName)) {
                this.f19327k = HtmlTreeBuilderState.f19235w;
                return;
            }
            if ("tbody".equals(nodeName) || "thead".equals(nodeName) || "tfoot".equals(nodeName)) {
                this.f19327k = HtmlTreeBuilderState.f19234v;
                return;
            }
            if ("caption".equals(nodeName)) {
                this.f19327k = HtmlTreeBuilderState.f19232t;
                return;
            }
            if ("colgroup".equals(nodeName)) {
                this.f19327k = HtmlTreeBuilderState.f19233u;
                return;
            }
            if ("table".equals(nodeName)) {
                this.f19327k = HtmlTreeBuilderState.f19230r;
                return;
            }
            if ("head".equals(nodeName)) {
                this.f19327k = HtmlTreeBuilderState.f19228p;
                return;
            }
            if ("body".equals(nodeName)) {
                this.f19327k = HtmlTreeBuilderState.f19228p;
                return;
            }
            if ("frameset".equals(nodeName)) {
                this.f19327k = HtmlTreeBuilderState.f19216B;
                return;
            } else if ("html".equals(nodeName)) {
                this.f19327k = HtmlTreeBuilderState.f19224f;
                return;
            } else {
                if (z6) {
                    this.f19327k = HtmlTreeBuilderState.f19228p;
                    return;
                }
            }
        }
    }

    @Override // org.jsoup.parser.c
    public final d a() {
        return d.f17345c;
    }

    public final org.jsoup.nodes.b b(org.jsoup.nodes.b bVar) {
        for (int size = this.f19360d.size() - 1; size >= 0; size--) {
            if (((org.jsoup.nodes.b) this.f19360d.get(size)) == bVar) {
                return (org.jsoup.nodes.b) this.f19360d.get(size - 1);
            }
        }
        return null;
    }

    public final void c() {
        while (!this.f19332p.isEmpty()) {
            int size = this.f19332p.size();
            if ((size > 0 ? (org.jsoup.nodes.b) this.f19332p.remove(size - 1) : null) == null) {
                return;
            }
        }
    }

    public final void d(String... strArr) {
        for (int size = this.f19360d.size() - 1; size >= 0; size--) {
            org.jsoup.nodes.b bVar = (org.jsoup.nodes.b) this.f19360d.get(size);
            if (j.in(bVar.nodeName(), strArr) || bVar.nodeName().equals("html")) {
                return;
            }
            this.f19360d.remove(size);
        }
    }

    public final void e(HtmlTreeBuilderState htmlTreeBuilderState) {
        if (this.f19363g.a()) {
            this.f19363g.add(new k6.c(this.f19357a.pos(), "Unexpected token [%s] when in state [%s]", this.f19362f.getClass().getSimpleName(), htmlTreeBuilderState));
        }
    }

    public final void f(String str) {
        while (str != null && !b.c.v(this, str) && j.inSorted(currentElement().nodeName(), f19320A)) {
            v();
        }
    }

    public final org.jsoup.nodes.b g(String str) {
        for (int size = this.f19332p.size() - 1; size >= 0; size--) {
            org.jsoup.nodes.b bVar = (org.jsoup.nodes.b) this.f19332p.get(size);
            if (bVar == null) {
                return null;
            }
            if (bVar.nodeName().equals(str)) {
                return bVar;
            }
        }
        return null;
    }

    public final org.jsoup.nodes.b h(String str) {
        for (int size = this.f19360d.size() - 1; size >= 0; size--) {
            org.jsoup.nodes.b bVar = (org.jsoup.nodes.b) this.f19360d.get(size);
            if (bVar.nodeName().equals(str)) {
                return bVar;
            }
        }
        return null;
    }

    public final boolean i(String str) {
        String[] strArr = f19324x;
        String[] strArr2 = f19322v;
        String[] strArr3 = this.f19337u;
        strArr3[0] = str;
        return l(strArr3, strArr2, strArr);
    }

    @Override // org.jsoup.parser.c
    public void initialiseParse(Reader reader, String str, ParseErrorList parseErrorList, d dVar) {
        super.initialiseParse(reader, str, parseErrorList, dVar);
        this.f19327k = HtmlTreeBuilderState.f19222b;
        this.f19328l = null;
        this.f19329m = false;
        this.f19330n = null;
        this.f19331o = null;
        this.f19332p = new ArrayList();
        this.f19333q = new ArrayList();
        this.f19334r = new k6.l();
        this.f19335s = true;
        this.f19336t = false;
    }

    public final boolean j(String str) {
        String[] strArr = f19322v;
        String[] strArr2 = this.f19337u;
        strArr2[0] = str;
        return l(strArr2, strArr, null);
    }

    public final boolean k(String str) {
        for (int size = this.f19360d.size() - 1; size >= 0; size--) {
            String nodeName = ((org.jsoup.nodes.b) this.f19360d.get(size)).nodeName();
            if (nodeName.equals(str)) {
                return true;
            }
            if (!j.inSorted(nodeName, f19326z)) {
                return false;
            }
        }
        k.fail("Should not be reachable");
        return false;
    }

    public final boolean l(String[] strArr, String[] strArr2, String[] strArr3) {
        int size = this.f19360d.size();
        int i2 = size - 1;
        int i7 = i2 > 100 ? size - 101 : 0;
        while (i2 >= i7) {
            String nodeName = ((org.jsoup.nodes.b) this.f19360d.get(i2)).nodeName();
            if (!j.inSorted(nodeName, strArr)) {
                if (j.inSorted(nodeName, strArr2) || (strArr3 != null && j.inSorted(nodeName, strArr3))) {
                    break;
                }
                i2--;
            } else {
                return true;
            }
        }
        return false;
    }

    public final boolean m(String str) {
        String[] strArr = f19325y;
        String[] strArr2 = this.f19337u;
        strArr2[0] = str;
        return l(strArr2, strArr, null);
    }

    public final org.jsoup.nodes.b n(m mVar) {
        if (mVar.f17383i) {
            org.jsoup.nodes.b q6 = q(mVar);
            this.f19360d.add(q6);
            b bVar = this.f19358b;
            bVar.f19342c = TokeniserState.f19278b;
            k6.l lVar = this.f19334r;
            lVar.f();
            lVar.n(q6.tagName());
            bVar.h(lVar);
            return q6;
        }
        f valueOf = f.valueOf(mVar.m(), this.f19364h);
        String str = this.f19361e;
        d dVar = this.f19364h;
        j6.c cVar = mVar.f17384j;
        if (!dVar.f17348b) {
            cVar.normalize();
        }
        org.jsoup.nodes.b bVar2 = new org.jsoup.nodes.b(valueOf, str, cVar);
        t(bVar2);
        this.f19360d.add(bVar2);
        return bVar2;
    }

    public final void o(h hVar) {
        String tagName = currentElement().tagName();
        String str = hVar.f17368b;
        currentElement().appendChild(hVar instanceof g ? new e(str) : (tagName.equals("script") || tagName.equals("style")) ? new j6.g(str) : new r(str));
    }

    public final void p(i iVar) {
        t(new j6.f(iVar.f17369b.toString()));
    }

    @Override // org.jsoup.parser.c
    public boolean process(o oVar) {
        this.f19362f = oVar;
        return this.f19327k.e(oVar, this);
    }

    @Override // org.jsoup.parser.c
    public /* bridge */ /* synthetic */ boolean processStartTag(String str, j6.c cVar) {
        return super.processStartTag(str, cVar);
    }

    public final org.jsoup.nodes.b q(m mVar) {
        f valueOf = f.valueOf(mVar.m(), this.f19364h);
        org.jsoup.nodes.b bVar = new org.jsoup.nodes.b(valueOf, this.f19361e, mVar.f17384j);
        t(bVar);
        if (mVar.f17383i) {
            if (!valueOf.isKnownTag()) {
                valueOf.f17364f = true;
            } else if (!valueOf.isEmpty()) {
                b bVar2 = this.f19358b;
                ParseErrorList parseErrorList = bVar2.f19341b;
                if (parseErrorList.a()) {
                    int pos = bVar2.f19340a.pos();
                    k6.c cVar = new k6.c();
                    cVar.f17343a = pos;
                    cVar.f17344b = "Tag cannot be self closing; not a void tag";
                    parseErrorList.add(cVar);
                    return bVar;
                }
            }
        }
        return bVar;
    }

    public final void r(m mVar, boolean z6) {
        l lVar = new l(f.valueOf(mVar.m(), this.f19364h), this.f19361e, mVar.f17384j);
        this.f19331o = lVar;
        t(lVar);
        if (z6) {
            this.f19360d.add(lVar);
        }
    }

    public final void s(p pVar) {
        org.jsoup.nodes.b bVar;
        org.jsoup.nodes.b h7 = h("table");
        boolean z6 = false;
        if (h7 == null) {
            bVar = (org.jsoup.nodes.b) this.f19360d.get(0);
        } else if (h7.parent() != null) {
            bVar = h7.parent();
            z6 = true;
        } else {
            bVar = b(h7);
        }
        if (!z6) {
            bVar.appendChild(pVar);
        } else {
            k.notNull(h7);
            h7.before(pVar);
        }
    }

    public final void t(p pVar) {
        l lVar;
        if (this.f19360d.size() == 0) {
            this.f19359c.appendChild(pVar);
        } else if (this.f19336t) {
            s(pVar);
        } else {
            currentElement().appendChild(pVar);
        }
        if (pVar instanceof org.jsoup.nodes.b) {
            org.jsoup.nodes.b bVar = (org.jsoup.nodes.b) pVar;
            if (!bVar.tag().isFormListed() || (lVar = this.f19331o) == null) {
                return;
            }
            lVar.addElement(bVar);
        }
    }

    public String toString() {
        return "TreeBuilder{currentToken=" + this.f19362f + ", state=" + this.f19327k + ", currentElement=" + currentElement() + '}';
    }

    public final void v() {
    }

    public final void w(String str) {
        for (int size = this.f19360d.size() - 1; size >= 0; size--) {
            org.jsoup.nodes.b bVar = (org.jsoup.nodes.b) this.f19360d.get(size);
            this.f19360d.remove(size);
            if (bVar.nodeName().equals(str)) {
                return;
            }
        }
    }

    public final boolean x(o oVar, HtmlTreeBuilderState htmlTreeBuilderState) {
        this.f19362f = oVar;
        return htmlTreeBuilderState.e(oVar, this);
    }

    public final void y(org.jsoup.nodes.b bVar) {
        int size = this.f19332p.size() - 1;
        int i2 = 0;
        while (true) {
            if (size >= 0) {
                org.jsoup.nodes.b bVar2 = (org.jsoup.nodes.b) this.f19332p.get(size);
                if (bVar2 == null) {
                    break;
                }
                if (bVar.nodeName().equals(bVar2.nodeName()) && bVar.attributes().equals(bVar2.attributes())) {
                    i2++;
                }
                if (i2 == 3) {
                    this.f19332p.remove(size);
                    break;
                }
                size--;
            } else {
                break;
            }
        }
        this.f19332p.add(bVar);
    }

    public final void z() {
        boolean z6 = true;
        org.jsoup.nodes.b bVar = this.f19332p.size() > 0 ? (org.jsoup.nodes.b) b.c.h(1, this.f19332p) : null;
        if (bVar == null || u(this.f19360d, bVar)) {
            return;
        }
        int size = this.f19332p.size() - 1;
        int i2 = size;
        while (i2 != 0) {
            i2--;
            bVar = (org.jsoup.nodes.b) this.f19332p.get(i2);
            if (bVar == null || u(this.f19360d, bVar)) {
                z6 = false;
                break;
            }
        }
        while (true) {
            if (!z6) {
                i2++;
                bVar = (org.jsoup.nodes.b) this.f19332p.get(i2);
            }
            k.notNull(bVar);
            org.jsoup.nodes.b bVar2 = new org.jsoup.nodes.b(f.valueOf(bVar.nodeName(), this.f19364h), this.f19361e);
            t(bVar2);
            this.f19360d.add(bVar2);
            bVar2.attributes().addAll(bVar.attributes());
            this.f19332p.set(i2, bVar2);
            if (i2 == size) {
                return;
            } else {
                z6 = false;
            }
        }
    }
}
