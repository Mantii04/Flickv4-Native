package Z1;

import T1.G;
import W1.t;
import a2.InterfaceC0381b;
import b2.AbstractC0642b;

/* loaded from: classes.dex */
public final class l implements InterfaceC0381b {

    /* renamed from: a, reason: collision with root package name */
    public final e f4456a;

    /* renamed from: b, reason: collision with root package name */
    public final m f4457b;

    /* renamed from: c, reason: collision with root package name */
    public final g f4458c;

    /* renamed from: d, reason: collision with root package name */
    public final b f4459d;

    /* renamed from: e, reason: collision with root package name */
    public final d f4460e;

    /* renamed from: f, reason: collision with root package name */
    public final b f4461f;

    /* renamed from: g, reason: collision with root package name */
    public final b f4462g;

    /* renamed from: h, reason: collision with root package name */
    public final b f4463h;

    /* renamed from: i, reason: collision with root package name */
    public final b f4464i;

    public l() {
        this(null, null, null, null, null, null, null, null, null);
    }

    public t createAnimation() {
        return new t(this);
    }

    public e getAnchorPoint() {
        return this.f4456a;
    }

    public b getEndOpacity() {
        return this.f4464i;
    }

    public d getOpacity() {
        return this.f4460e;
    }

    public m getPosition() {
        return this.f4457b;
    }

    public b getRotation() {
        return this.f4459d;
    }

    public g getScale() {
        return this.f4458c;
    }

    public b getSkew() {
        return this.f4461f;
    }

    public b getSkewAngle() {
        return this.f4462g;
    }

    public b getStartOpacity() {
        return this.f4463h;
    }

    @Override // a2.InterfaceC0381b
    public V1.d toContent(G g7, AbstractC0642b abstractC0642b) {
        return null;
    }

    public l(e eVar, m mVar, g gVar, b bVar, d dVar, b bVar2, b bVar3, b bVar4, b bVar5) {
        this.f4456a = eVar;
        this.f4457b = mVar;
        this.f4458c = gVar;
        this.f4459d = bVar;
        this.f4460e = dVar;
        this.f4463h = bVar2;
        this.f4464i = bVar3;
        this.f4461f = bVar4;
        this.f4462g = bVar5;
    }
}
