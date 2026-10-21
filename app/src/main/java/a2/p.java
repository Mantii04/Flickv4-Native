package a2;

import T1.G;
import V1.t;
import b2.AbstractC0642b;
import com.airbnb.lottie.model.content.ShapeTrimPath$Type;

/* loaded from: classes.dex */
public final class p implements InterfaceC0381b {

    /* renamed from: a, reason: collision with root package name */
    public final String f4714a;

    /* renamed from: b, reason: collision with root package name */
    public final ShapeTrimPath$Type f4715b;

    /* renamed from: c, reason: collision with root package name */
    public final Z1.b f4716c;

    /* renamed from: d, reason: collision with root package name */
    public final Z1.b f4717d;

    /* renamed from: e, reason: collision with root package name */
    public final Z1.b f4718e;

    /* renamed from: f, reason: collision with root package name */
    public final boolean f4719f;

    public p(String str, ShapeTrimPath$Type shapeTrimPath$Type, Z1.b bVar, Z1.b bVar2, Z1.b bVar3, boolean z6) {
        this.f4714a = str;
        this.f4715b = shapeTrimPath$Type;
        this.f4716c = bVar;
        this.f4717d = bVar2;
        this.f4718e = bVar3;
        this.f4719f = z6;
    }

    public Z1.b getEnd() {
        return this.f4717d;
    }

    public String getName() {
        return this.f4714a;
    }

    public Z1.b getOffset() {
        return this.f4718e;
    }

    public Z1.b getStart() {
        return this.f4716c;
    }

    public ShapeTrimPath$Type getType() {
        return this.f4715b;
    }

    public boolean isHidden() {
        return this.f4719f;
    }

    @Override // a2.InterfaceC0381b
    public V1.d toContent(G g7, AbstractC0642b abstractC0642b) {
        return new t(abstractC0642b, this);
    }

    public String toString() {
        return "Trim Path: {start: " + this.f4716c + ", end: " + this.f4717d + ", offset: " + this.f4718e + "}";
    }
}
