package androidx.leanback.app;

import androidx.leanback.widget.A1;
import androidx.leanback.widget.B0;

/* loaded from: classes.dex */
public final class f implements A1 {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ B0 f6393a;

    public f(B0 b02) {
        this.f6393a = b02;
    }

    @Override // androidx.leanback.widget.A1
    public void run(m1.B0 b02) {
        b02.f18217a.post(new e(this, b02));
    }
}
