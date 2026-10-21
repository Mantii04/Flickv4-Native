package j6;

import org.jsoup.select.Elements;

/* loaded from: classes2.dex */
public final class l extends org.jsoup.nodes.b {

    /* renamed from: r, reason: collision with root package name */
    public final Elements f17018r;

    public l(k6.f fVar, String str, c cVar) {
        super(fVar, str, cVar);
        this.f17018r = new Elements();
    }

    public l addElement(org.jsoup.nodes.b bVar) {
        this.f17018r.add(bVar);
        return this;
    }

    @Override // j6.p
    public void removeChild(p pVar) {
        super.removeChild(pVar);
        this.f17018r.remove(pVar);
    }
}
