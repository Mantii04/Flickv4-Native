package a2;

import T1.G;
import V1.q;
import b2.AbstractC0642b;

/* loaded from: classes.dex */
public final class j implements InterfaceC0381b {

    /* renamed from: a, reason: collision with root package name */
    public final String f4683a;

    /* renamed from: b, reason: collision with root package name */
    public final Z1.b f4684b;

    /* renamed from: c, reason: collision with root package name */
    public final Z1.b f4685c;

    /* renamed from: d, reason: collision with root package name */
    public final Z1.l f4686d;

    /* renamed from: e, reason: collision with root package name */
    public final boolean f4687e;

    public j(String str, Z1.b bVar, Z1.b bVar2, Z1.l lVar, boolean z6) {
        this.f4683a = str;
        this.f4684b = bVar;
        this.f4685c = bVar2;
        this.f4686d = lVar;
        this.f4687e = z6;
    }

    public Z1.b getCopies() {
        return this.f4684b;
    }

    public String getName() {
        return this.f4683a;
    }

    public Z1.b getOffset() {
        return this.f4685c;
    }

    public Z1.l getTransform() {
        return this.f4686d;
    }

    public boolean isHidden() {
        return this.f4687e;
    }

    @Override // a2.InterfaceC0381b
    public V1.d toContent(G g7, AbstractC0642b abstractC0642b) {
        return new q(g7, abstractC0642b, this);
    }
}
