package j6;

/* loaded from: classes2.dex */
public final class g extends m {
    public g(String str) {
        this.f17020f = str;
    }

    @Override // j6.p
    public final void a(Appendable appendable, int i2, org.jsoup.nodes.a aVar) {
        appendable.append(getWholeData());
    }

    @Override // j6.m, j6.p
    public /* bridge */ /* synthetic */ String absUrl(String str) {
        return super.absUrl(str);
    }

    @Override // j6.m, j6.p
    public /* bridge */ /* synthetic */ String attr(String str) {
        return super.attr(str);
    }

    @Override // j6.m, j6.p
    public /* bridge */ /* synthetic */ String baseUri() {
        return super.baseUri();
    }

    @Override // j6.m, j6.p
    public /* bridge */ /* synthetic */ int childNodeSize() {
        return super.childNodeSize();
    }

    public String getWholeData() {
        return c();
    }

    @Override // j6.m, j6.p
    public /* bridge */ /* synthetic */ boolean hasAttr(String str) {
        return super.hasAttr(str);
    }

    @Override // j6.p
    public String nodeName() {
        return "#data";
    }

    @Override // j6.p
    public String toString() {
        return outerHtml();
    }

    @Override // j6.p
    public final void b(Appendable appendable, int i2, org.jsoup.nodes.a aVar) {
    }
}
