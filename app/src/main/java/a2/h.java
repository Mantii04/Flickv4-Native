package a2;

import T1.G;
import b2.AbstractC0642b;
import com.airbnb.lottie.model.content.PolystarShape$Type;

/* loaded from: classes.dex */
public final class h implements InterfaceC0381b {

    /* renamed from: a, reason: collision with root package name */
    public final String f4668a;

    /* renamed from: b, reason: collision with root package name */
    public final PolystarShape$Type f4669b;

    /* renamed from: c, reason: collision with root package name */
    public final Z1.b f4670c;

    /* renamed from: d, reason: collision with root package name */
    public final Z1.m f4671d;

    /* renamed from: e, reason: collision with root package name */
    public final Z1.b f4672e;

    /* renamed from: f, reason: collision with root package name */
    public final Z1.b f4673f;

    /* renamed from: g, reason: collision with root package name */
    public final Z1.b f4674g;

    /* renamed from: h, reason: collision with root package name */
    public final Z1.b f4675h;

    /* renamed from: i, reason: collision with root package name */
    public final Z1.b f4676i;

    /* renamed from: j, reason: collision with root package name */
    public final boolean f4677j;

    public h(String str, PolystarShape$Type polystarShape$Type, Z1.b bVar, Z1.m mVar, Z1.b bVar2, Z1.b bVar3, Z1.b bVar4, Z1.b bVar5, Z1.b bVar6, boolean z6) {
        this.f4668a = str;
        this.f4669b = polystarShape$Type;
        this.f4670c = bVar;
        this.f4671d = mVar;
        this.f4672e = bVar2;
        this.f4673f = bVar3;
        this.f4674g = bVar4;
        this.f4675h = bVar5;
        this.f4676i = bVar6;
        this.f4677j = z6;
    }

    public Z1.b getInnerRadius() {
        return this.f4673f;
    }

    public Z1.b getInnerRoundedness() {
        return this.f4675h;
    }

    public String getName() {
        return this.f4668a;
    }

    public Z1.b getOuterRadius() {
        return this.f4674g;
    }

    public Z1.b getOuterRoundedness() {
        return this.f4676i;
    }

    public Z1.b getPoints() {
        return this.f4670c;
    }

    public Z1.m getPosition() {
        return this.f4671d;
    }

    public Z1.b getRotation() {
        return this.f4672e;
    }

    public PolystarShape$Type getType() {
        return this.f4669b;
    }

    public boolean isHidden() {
        return this.f4677j;
    }

    @Override // a2.InterfaceC0381b
    public V1.d toContent(G g7, AbstractC0642b abstractC0642b) {
        return new V1.o(g7, abstractC0642b, this);
    }
}
