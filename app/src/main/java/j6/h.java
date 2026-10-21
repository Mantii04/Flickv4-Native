package j6;

import org.jsoup.nodes.Document$QuirksMode;

/* loaded from: classes2.dex */
public final class h extends org.jsoup.nodes.b {

    /* renamed from: r, reason: collision with root package name */
    public org.jsoup.nodes.a f17013r;

    /* renamed from: s, reason: collision with root package name */
    public Document$QuirksMode f17014s;

    public h(String str) {
        super(k6.f.valueOf("#root", k6.d.f17345c), str);
        this.f17013r = new org.jsoup.nodes.a();
        this.f17014s = Document$QuirksMode.f19186b;
    }

    public static org.jsoup.nodes.b f(p pVar) {
        if (pVar.nodeName().equals("body")) {
            return (org.jsoup.nodes.b) pVar;
        }
        int childNodeSize = pVar.childNodeSize();
        for (int i2 = 0; i2 < childNodeSize; i2++) {
            org.jsoup.nodes.b f3 = f(pVar.childNode(i2));
            if (f3 != null) {
                return f3;
            }
        }
        return null;
    }

    public org.jsoup.nodes.b body() {
        return f(this);
    }

    @Override // org.jsoup.nodes.b, j6.p
    public String nodeName() {
        return "#document";
    }

    @Override // j6.p
    public String outerHtml() {
        return super.html();
    }

    public org.jsoup.nodes.a outputSettings() {
        return this.f17013r;
    }

    public Document$QuirksMode quirksMode() {
        return this.f17014s;
    }

    public h quirksMode(Document$QuirksMode document$QuirksMode) {
        this.f17014s = document$QuirksMode;
        return this;
    }

    @Override // org.jsoup.nodes.b, j6.p
    /* renamed from: clone */
    public h mo102clone() {
        h hVar = (h) super.mo102clone();
        hVar.f17013r = this.f17013r.clone();
        return hVar;
    }
}
