package x3;

import M.C0152b;
import android.view.View;

/* renamed from: x3.p, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C1842p extends C0152b {

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ int f20909d;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ boolean f20910e;

    /* renamed from: f, reason: collision with root package name */
    public final /* synthetic */ C1843q f20911f;

    public C1842p(C1843q c1843q, int i2, boolean z6) {
        this.f20911f = c1843q;
        this.f20909d = i2;
        this.f20910e = z6;
    }

    @Override // M.C0152b
    public void onInitializeAccessibilityNodeInfo(View view, N.n nVar) {
        super.onInitializeAccessibilityNodeInfo(view, nVar);
        int i2 = this.f20909d;
        int i7 = 0;
        int i8 = i2;
        while (true) {
            C1843q c1843q = this.f20911f;
            if (i7 >= i2) {
                c1843q.getClass();
                nVar.setCollectionItemInfo(N.m.obtain(i8, 1, 1, 1, this.f20910e, view.isSelected()));
                return;
            } else {
                C1826A c1826a = c1843q.f20915g;
                if (c1826a.f20858m.getItemViewType(i7) == 2 || c1826a.f20858m.getItemViewType(i7) == 3) {
                    i8--;
                }
                i7++;
            }
        }
    }
}
