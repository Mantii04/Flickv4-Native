package a2;

import T1.G;
import V1.r;
import b2.AbstractC0642b;

/* loaded from: classes.dex */
public final class n implements InterfaceC0381b {

    /* renamed from: a, reason: collision with root package name */
    public final String f4700a;

    /* renamed from: b, reason: collision with root package name */
    public final int f4701b;

    /* renamed from: c, reason: collision with root package name */
    public final Z1.h f4702c;

    /* renamed from: d, reason: collision with root package name */
    public final boolean f4703d;

    public n(String str, int i2, Z1.h hVar, boolean z6) {
        this.f4700a = str;
        this.f4701b = i2;
        this.f4702c = hVar;
        this.f4703d = z6;
    }

    public String getName() {
        return this.f4700a;
    }

    public Z1.h getShapePath() {
        return this.f4702c;
    }

    public boolean isHidden() {
        return this.f4703d;
    }

    @Override // a2.InterfaceC0381b
    public V1.d toContent(G g7, AbstractC0642b abstractC0642b) {
        return new r(g7, abstractC0642b, this);
    }

    public String toString() {
        return "ShapePath{name=" + this.f4700a + ", index=" + this.f4701b + '}';
    }
}
