package l3;

import N.A;
import N.s;
import android.view.View;
import com.google.android.material.bottomsheet.BottomSheetBehavior;

/* loaded from: classes2.dex */
public final class g implements A {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f18138b;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ BottomSheetBehavior f18139e;

    public g(BottomSheetBehavior bottomSheetBehavior, int i2) {
        this.f18139e = bottomSheetBehavior;
        this.f18138b = i2;
    }

    @Override // N.A
    public boolean perform(View view, s sVar) {
        this.f18139e.setState(this.f18138b);
        return true;
    }
}
