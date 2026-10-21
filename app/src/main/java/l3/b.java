package l3;

import android.view.View;
import com.google.android.material.bottomsheet.BottomSheetBehavior;

/* loaded from: classes2.dex */
public final class b implements Runnable {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ View f18129b;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ int f18130e;

    /* renamed from: f, reason: collision with root package name */
    public final /* synthetic */ BottomSheetBehavior f18131f;

    public b(BottomSheetBehavior bottomSheetBehavior, View view, int i2) {
        this.f18131f = bottomSheetBehavior;
        this.f18129b = view;
        this.f18130e = i2;
    }

    @Override // java.lang.Runnable
    public void run() {
        int i2 = BottomSheetBehavior.f12457o0;
        this.f18131f.k(this.f18129b, false, this.f18130e);
    }
}
