package s2;

import com.android.volley.DefaultRetryPolicy;
import com.bumptech.glide.load.data.o;
import l2.p;
import l2.q;
import r2.C1550I;
import r2.C1560T;
import r2.C1561U;
import r2.InterfaceC1562V;

/* renamed from: s2.b, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C1628b implements InterfaceC1562V {

    /* renamed from: b, reason: collision with root package name */
    public static final p f20004b = p.memory("com.bumptech.glide.load.model.stream.HttpGlideUrlLoader.Timeout", Integer.valueOf(DefaultRetryPolicy.DEFAULT_TIMEOUT_MS));

    /* renamed from: a, reason: collision with root package name */
    public final C1560T f20005a;

    public C1628b(C1560T c1560t) {
        this.f20005a = c1560t;
    }

    @Override // r2.InterfaceC1562V
    public C1561U buildLoadData(C1550I c1550i, int i2, int i7, q qVar) {
        C1560T c1560t = this.f20005a;
        if (c1560t != null) {
            C1550I c1550i2 = (C1550I) c1560t.get(c1550i, 0, 0);
            if (c1550i2 == null) {
                c1560t.put(c1550i, 0, 0, c1550i);
            } else {
                c1550i = c1550i2;
            }
        }
        return new C1561U(c1550i, new o(c1550i, ((Integer) qVar.get(f20004b)).intValue()));
    }

    @Override // r2.InterfaceC1562V
    public boolean handles(C1550I c1550i) {
        return true;
    }
}
