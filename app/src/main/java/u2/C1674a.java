package u2;

import android.content.res.Resources;
import java.io.IOException;
import n2.InterfaceC1391M;

/* renamed from: u2.a, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C1674a implements l2.r {

    /* renamed from: a, reason: collision with root package name */
    public final l2.r f20279a;

    /* renamed from: b, reason: collision with root package name */
    public final Resources f20280b;

    public C1674a(Resources resources, l2.r rVar) {
        this.f20280b = (Resources) G2.r.checkNotNull(resources);
        this.f20279a = (l2.r) G2.r.checkNotNull(rVar);
    }

    @Override // l2.r
    public InterfaceC1391M decode(Object obj, int i2, int i7, l2.q qVar) throws IOException {
        return J.obtain(this.f20280b, this.f20279a.decode(obj, i2, i7, qVar));
    }

    @Override // l2.r
    public boolean handles(Object obj, l2.q qVar) throws IOException {
        return this.f20279a.handles(obj, qVar);
    }
}
