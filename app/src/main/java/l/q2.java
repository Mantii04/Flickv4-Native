package l;

import android.view.View;

/* loaded from: classes.dex */
public final class q2 extends M.E0 {

    /* renamed from: a, reason: collision with root package name */
    public boolean f17974a = false;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f17975b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ r2 f17976c;

    public q2(r2 r2Var, int i2) {
        this.f17976c = r2Var;
        this.f17975b = i2;
    }

    @Override // M.E0, M.D0
    public void onAnimationCancel(View view) {
        this.f17974a = true;
    }

    @Override // M.D0
    public void onAnimationEnd(View view) {
        if (this.f17974a) {
            return;
        }
        this.f17976c.f17984a.setVisibility(this.f17975b);
    }

    @Override // M.E0, M.D0
    public void onAnimationStart(View view) {
        this.f17976c.f17984a.setVisibility(0);
    }
}
