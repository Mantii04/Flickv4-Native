package l6;

import org.jsoup.select.NodeFilter$FilterResult;

/* renamed from: l6.b, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C1232b implements T {

    /* renamed from: a, reason: collision with root package name */
    public final org.jsoup.nodes.b f18172a;

    /* renamed from: b, reason: collision with root package name */
    public org.jsoup.nodes.b f18173b = null;

    /* renamed from: c, reason: collision with root package name */
    public final S f18174c;

    public C1232b(S s6, org.jsoup.nodes.b bVar) {
        this.f18172a = bVar;
        this.f18174c = s6;
    }

    public NodeFilter$FilterResult head(j6.p pVar, int i2) {
        if (pVar instanceof org.jsoup.nodes.b) {
            org.jsoup.nodes.b bVar = (org.jsoup.nodes.b) pVar;
            if (this.f18174c.matches(this.f18172a, bVar)) {
                this.f18173b = bVar;
                return NodeFilter$FilterResult.f19370j;
            }
        }
        return NodeFilter$FilterResult.f19367b;
    }

    public NodeFilter$FilterResult tail(j6.p pVar, int i2) {
        return NodeFilter$FilterResult.f19367b;
    }
}
