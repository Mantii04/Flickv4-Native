package a2;

import T1.G;
import b2.AbstractC0642b;

/* renamed from: a2.a, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0380a implements InterfaceC0381b {

    /* renamed from: a, reason: collision with root package name */
    public final String f4633a;

    /* renamed from: b, reason: collision with root package name */
    public final Z1.m f4634b;

    /* renamed from: c, reason: collision with root package name */
    public final Z1.f f4635c;

    /* renamed from: d, reason: collision with root package name */
    public final boolean f4636d;

    /* renamed from: e, reason: collision with root package name */
    public final boolean f4637e;

    public C0380a(String str, Z1.m mVar, Z1.f fVar, boolean z6, boolean z7) {
        this.f4633a = str;
        this.f4634b = mVar;
        this.f4635c = fVar;
        this.f4636d = z6;
        this.f4637e = z7;
    }

    public String getName() {
        return this.f4633a;
    }

    public Z1.m getPosition() {
        return this.f4634b;
    }

    public Z1.f getSize() {
        return this.f4635c;
    }

    public boolean isHidden() {
        return this.f4637e;
    }

    public boolean isReversed() {
        return this.f4636d;
    }

    @Override // a2.InterfaceC0381b
    public V1.d toContent(G g7, AbstractC0642b abstractC0642b) {
        return new V1.g(g7, abstractC0642b, this);
    }
}
