package l6;

import org.jsoup.select.Elements;

/* renamed from: l6.a, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C1231a implements V {

    /* renamed from: a, reason: collision with root package name */
    public final org.jsoup.nodes.b f18169a;

    /* renamed from: b, reason: collision with root package name */
    public final Elements f18170b;

    /* renamed from: c, reason: collision with root package name */
    public final S f18171c;

    public C1231a(org.jsoup.nodes.b bVar, Elements elements, S s6) {
        this.f18169a = bVar;
        this.f18170b = elements;
        this.f18171c = s6;
    }

    @Override // l6.V
    public void head(j6.p pVar, int i2) {
        if (pVar instanceof org.jsoup.nodes.b) {
            org.jsoup.nodes.b bVar = (org.jsoup.nodes.b) pVar;
            if (this.f18171c.matches(this.f18169a, bVar)) {
                this.f18170b.add(bVar);
            }
        }
    }

    @Override // l6.V
    public void tail(j6.p pVar, int i2) {
    }
}
