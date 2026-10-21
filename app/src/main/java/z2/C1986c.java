package z2;

import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import l2.q;
import n2.InterfaceC1391M;
import o2.InterfaceC1430d;
import u2.C1678e;
import y2.C1882d;

/* renamed from: z2.c, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C1986c implements InterfaceC1988e {

    /* renamed from: a, reason: collision with root package name */
    public final InterfaceC1430d f21408a;

    /* renamed from: b, reason: collision with root package name */
    public final InterfaceC1988e f21409b;

    /* renamed from: c, reason: collision with root package name */
    public final InterfaceC1988e f21410c;

    public C1986c(InterfaceC1430d interfaceC1430d, InterfaceC1988e interfaceC1988e, InterfaceC1988e interfaceC1988e2) {
        this.f21408a = interfaceC1430d;
        this.f21409b = interfaceC1988e;
        this.f21410c = interfaceC1988e2;
    }

    @Override // z2.InterfaceC1988e
    public InterfaceC1391M transcode(InterfaceC1391M interfaceC1391M, q qVar) {
        Drawable drawable = (Drawable) interfaceC1391M.get();
        if (drawable instanceof BitmapDrawable) {
            return this.f21409b.transcode(C1678e.obtain(((BitmapDrawable) drawable).getBitmap(), this.f21408a), qVar);
        }
        if (drawable instanceof C1882d) {
            return this.f21410c.transcode(interfaceC1391M, qVar);
        }
        return null;
    }
}
