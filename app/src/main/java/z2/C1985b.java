package z2;

import G2.r;
import android.content.res.Resources;
import l2.q;
import n2.InterfaceC1391M;
import u2.J;

/* renamed from: z2.b, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C1985b implements InterfaceC1988e {

    /* renamed from: a, reason: collision with root package name */
    public final Resources f21407a;

    public C1985b(Resources resources) {
        this.f21407a = (Resources) r.checkNotNull(resources);
    }

    @Override // z2.InterfaceC1988e
    public InterfaceC1391M transcode(InterfaceC1391M interfaceC1391M, q qVar) {
        return J.obtain(this.f21407a, interfaceC1391M);
    }
}
