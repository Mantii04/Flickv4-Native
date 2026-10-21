package H3;

import M.AbstractC0181p0;
import android.view.View;
import com.google.android.material.bottomsheet.BottomSheetBehavior;
import com.google.android.material.sidesheet.SideSheetBehavior;
import java.lang.ref.WeakReference;
import l3.j;
import y.AbstractC1859c;

/* loaded from: classes2.dex */
public final class i {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f1211a;

    /* renamed from: b, reason: collision with root package name */
    public int f1212b;

    /* renamed from: c, reason: collision with root package name */
    public boolean f1213c;

    /* renamed from: d, reason: collision with root package name */
    public final Runnable f1214d;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ AbstractC1859c f1215e;

    public i(SideSheetBehavior sideSheetBehavior) {
        this.f1211a = 0;
        this.f1215e = sideSheetBehavior;
        this.f1214d = new A3.d(this, 6);
    }

    public final void a(int i2) {
        switch (this.f1211a) {
            case 0:
                SideSheetBehavior sideSheetBehavior = (SideSheetBehavior) this.f1215e;
                WeakReference weakReference = sideSheetBehavior.f12805y;
                if (weakReference != null && weakReference.get() != null) {
                    this.f1212b = i2;
                    if (!this.f1213c) {
                        AbstractC0181p0.postOnAnimation((View) sideSheetBehavior.f12805y.get(), (A3.d) this.f1214d);
                        this.f1213c = true;
                        break;
                    }
                }
                break;
            default:
                BottomSheetBehavior bottomSheetBehavior = (BottomSheetBehavior) this.f1215e;
                WeakReference weakReference2 = bottomSheetBehavior.f12488d0;
                if (weakReference2 != null && weakReference2.get() != null) {
                    this.f1212b = i2;
                    if (!this.f1213c) {
                        AbstractC0181p0.postOnAnimation((View) bottomSheetBehavior.f12488d0.get(), (j) this.f1214d);
                        this.f1213c = true;
                        break;
                    }
                }
                break;
        }
    }

    public i(BottomSheetBehavior bottomSheetBehavior) {
        this.f1211a = 1;
        this.f1215e = bottomSheetBehavior;
        this.f1214d = new j(this);
    }
}
