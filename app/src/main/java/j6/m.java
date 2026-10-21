package j6;

import java.util.Collections;
import java.util.List;

/* loaded from: classes2.dex */
public abstract class m extends p {

    /* renamed from: j, reason: collision with root package name */
    public static final List f17019j = Collections.EMPTY_LIST;

    /* renamed from: f, reason: collision with root package name */
    public Object f17020f;

    @Override // j6.p
    public String absUrl(String str) {
        d();
        return super.absUrl(str);
    }

    @Override // j6.p
    public String attr(String str) {
        h6.k.notNull(str);
        return !hasAttributes() ? str.equals(nodeName()) ? (String) this.f17020f : "" : super.attr(str);
    }

    @Override // j6.p
    public final c attributes() {
        d();
        return (c) this.f17020f;
    }

    @Override // j6.p
    public String baseUri() {
        return hasParent() ? parent().baseUri() : "";
    }

    public final String c() {
        return attr(nodeName());
    }

    @Override // j6.p
    public int childNodeSize() {
        return 0;
    }

    public final void d() {
        if (hasAttributes()) {
            return;
        }
        Object obj = this.f17020f;
        c cVar = new c();
        this.f17020f = cVar;
        if (obj != null) {
            cVar.put(nodeName(), (String) obj);
        }
    }

    @Override // j6.p
    public List<p> ensureChildNodes() {
        return f17019j;
    }

    @Override // j6.p
    public boolean hasAttr(String str) {
        d();
        return super.hasAttr(str);
    }

    @Override // j6.p
    public final boolean hasAttributes() {
        return this.f17020f instanceof c;
    }

    @Override // j6.p
    public p attr(String str, String str2) {
        if (!hasAttributes() && str.equals(nodeName())) {
            this.f17020f = str2;
            return this;
        }
        d();
        super.attr(str, str2);
        return this;
    }

    @Override // j6.p
    public void doSetBaseUri(String str) {
    }
}
