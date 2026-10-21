package j6;

import cz.msebera.android.httpclient.message.TokenParser;
import java.util.Iterator;

/* loaded from: classes2.dex */
public final class s extends m {

    /* renamed from: m, reason: collision with root package name */
    public final boolean f17026m;

    public s(String str, boolean z6) {
        h6.k.notNull(str);
        this.f17020f = str;
        this.f17026m = z6;
    }

    @Override // j6.p
    public final void a(Appendable appendable, int i2, org.jsoup.nodes.a aVar) {
        Appendable append = appendable.append("<");
        boolean z6 = this.f17026m;
        append.append(z6 ? "!" : "?").append(c());
        Iterator<a> it = attributes().iterator();
        while (it.hasNext()) {
            a next = it.next();
            if (!next.getKey().equals(nodeName())) {
                appendable.append(TokenParser.SP);
                next.html(appendable, aVar);
            }
        }
        appendable.append(z6 ? "!" : "?").append(">");
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

    @Override // j6.m, j6.p
    public /* bridge */ /* synthetic */ boolean hasAttr(String str) {
        return super.hasAttr(str);
    }

    public String name() {
        return c();
    }

    @Override // j6.p
    public String nodeName() {
        return "#declaration";
    }

    @Override // j6.p
    public String toString() {
        return outerHtml();
    }

    @Override // j6.p
    public final void b(Appendable appendable, int i2, org.jsoup.nodes.a aVar) {
    }
}
