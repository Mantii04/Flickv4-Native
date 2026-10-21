package a2;

import T1.G;
import b2.AbstractC0642b;

/* loaded from: classes.dex */
public final class i implements InterfaceC0381b {

    /* renamed from: a, reason: collision with root package name */
    public final String f4678a;

    /* renamed from: b, reason: collision with root package name */
    public final Z1.m f4679b;

    /* renamed from: c, reason: collision with root package name */
    public final Z1.f f4680c;

    /* renamed from: d, reason: collision with root package name */
    public final Z1.b f4681d;

    /* renamed from: e, reason: collision with root package name */
    public final boolean f4682e;

    public i(String str, Z1.m mVar, Z1.f fVar, Z1.b bVar, boolean z6) {
        this.f4678a = str;
        this.f4679b = mVar;
        this.f4680c = fVar;
        this.f4681d = bVar;
        this.f4682e = z6;
    }

    public Z1.b getCornerRadius() {
        return this.f4681d;
    }

    public String getName() {
        return this.f4678a;
    }

    public Z1.m getPosition() {
        return this.f4679b;
    }

    public Z1.f getSize() {
        return this.f4680c;
    }

    public boolean isHidden() {
        return this.f4682e;
    }

    @Override // a2.InterfaceC0381b
    public V1.d toContent(G g7, AbstractC0642b abstractC0642b) {
        return new V1.p(g7, abstractC0642b, this);
    }

    public String toString() {
        return "RectangleShape{position=" + this.f4679b + ", size=" + this.f4680c + '}';
    }
}
