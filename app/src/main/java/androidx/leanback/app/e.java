package androidx.leanback.app;

import androidx.leanback.widget.C0492b0;
import androidx.leanback.widget.N0;
import m1.B0;

/* loaded from: classes.dex */
public final class e implements Runnable {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ B0 f6391b;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ f f6392e;

    public e(f fVar, B0 b02) {
        this.f6392e = fVar;
        this.f6391b = b02;
    }

    @Override // java.lang.Runnable
    public void run() {
        androidx.leanback.widget.B0 b02 = this.f6392e.f6393a;
        C0492b0 c0492b0 = (C0492b0) this.f6391b;
        b02.run(((N0) c0492b0.getPresenter()).getRowViewHolder(c0492b0.getViewHolder()));
    }
}
