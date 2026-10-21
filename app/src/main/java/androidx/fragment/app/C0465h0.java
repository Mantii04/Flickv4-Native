package androidx.fragment.app;

import java.util.ArrayList;

/* renamed from: androidx.fragment.app.h0, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0465h0 implements InterfaceC0463g0 {

    /* renamed from: a, reason: collision with root package name */
    public final int f6206a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ AbstractC0467i0 f6207b;

    public C0465h0(AbstractC0467i0 abstractC0467i0, int i2) {
        this.f6207b = abstractC0467i0;
        this.f6206a = i2;
    }

    @Override // androidx.fragment.app.InterfaceC0463g0
    public boolean generateOps(ArrayList<C0450a> arrayList, ArrayList<Boolean> arrayList2) {
        AbstractC0467i0 abstractC0467i0 = this.f6207b;
        C c7 = abstractC0467i0.f6244w;
        int i2 = this.f6206a;
        if (c7 == null || i2 >= 0 || !c7.getChildFragmentManager().popBackStackImmediate()) {
            return abstractC0467i0.G(arrayList, arrayList2, i2, 1);
        }
        return false;
    }
}
