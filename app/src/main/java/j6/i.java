package j6;

import org.apache.commons.lang3.StringUtils;
import org.jsoup.nodes.Document$OutputSettings$Syntax;

/* loaded from: classes2.dex */
public final class i extends m {
    public i(String str, String str2, String str3) {
        h6.k.notNull(str);
        h6.k.notNull(str2);
        h6.k.notNull(str3);
        attr("name", str);
        attr("publicId", str2);
        if (e("publicId")) {
            attr("pubSysKey", "PUBLIC");
        }
        attr("systemId", str3);
    }

    @Override // j6.p
    public final void a(Appendable appendable, int i2, org.jsoup.nodes.a aVar) {
        if (aVar.syntax() != Document$OutputSettings$Syntax.f19183b || e("publicId") || e("systemId")) {
            appendable.append("<!DOCTYPE");
        } else {
            appendable.append("<!doctype");
        }
        if (e("name")) {
            appendable.append(StringUtils.SPACE).append(attr("name"));
        }
        if (e("pubSysKey")) {
            appendable.append(StringUtils.SPACE).append(attr("pubSysKey"));
        }
        if (e("publicId")) {
            appendable.append(" \"").append(attr("publicId")).append('\"');
        }
        if (e("systemId")) {
            appendable.append(" \"").append(attr("systemId")).append('\"');
        }
        appendable.append('>');
    }

    @Override // j6.m, j6.p
    public /* bridge */ /* synthetic */ String absUrl(String str) {
        return super.absUrl(str);
    }

    @Override // j6.m, j6.p
    public /* bridge */ /* synthetic */ p attr(String str, String str2) {
        return super.attr(str, str2);
    }

    @Override // j6.m, j6.p
    public /* bridge */ /* synthetic */ String baseUri() {
        return super.baseUri();
    }

    @Override // j6.m, j6.p
    public /* bridge */ /* synthetic */ int childNodeSize() {
        return super.childNodeSize();
    }

    public final boolean e(String str) {
        return !h6.j.isBlank(attr(str));
    }

    @Override // j6.m, j6.p
    public /* bridge */ /* synthetic */ boolean hasAttr(String str) {
        return super.hasAttr(str);
    }

    @Override // j6.p
    public String nodeName() {
        return "#doctype";
    }

    public void setPubSysKey(String str) {
        if (str != null) {
            attr("pubSysKey", str);
        }
    }

    @Override // j6.m, j6.p
    public /* bridge */ /* synthetic */ String attr(String str) {
        return super.attr(str);
    }

    @Override // j6.p
    public final void b(Appendable appendable, int i2, org.jsoup.nodes.a aVar) {
    }
}
