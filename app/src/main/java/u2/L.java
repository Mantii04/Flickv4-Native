package u2;

import android.graphics.drawable.Drawable;
import android.net.Uri;
import n2.InterfaceC1391M;
import o2.InterfaceC1430d;

/* loaded from: classes.dex */
public final class L implements l2.r {

    /* renamed from: a, reason: collision with root package name */
    public final w2.h f20267a;

    /* renamed from: b, reason: collision with root package name */
    public final InterfaceC1430d f20268b;

    public L(w2.h hVar, InterfaceC1430d interfaceC1430d) {
        this.f20267a = hVar;
        this.f20268b = interfaceC1430d;
    }

    @Override // l2.r
    public InterfaceC1391M decode(Uri uri, int i2, int i7, l2.q qVar) {
        InterfaceC1391M decode = this.f20267a.decode(uri, i2, i7, qVar);
        if (decode == null) {
            return null;
        }
        return AbstractC1698z.a(this.f20268b, (Drawable) decode.get(), i2, i7);
    }

    @Override // l2.r
    public boolean handles(Uri uri, l2.q qVar) {
        return "android.resource".equals(uri.getScheme());
    }
}
