package l;

import android.view.View;

/* renamed from: l.a, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C1127a implements M.D0 {

    /* renamed from: a, reason: collision with root package name */
    public boolean f17827a = false;

    /* renamed from: b, reason: collision with root package name */
    public int f17828b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ AbstractC1130b f17829c;

    public C1127a(AbstractC1130b abstractC1130b) {
        this.f17829c = abstractC1130b;
    }

    @Override // M.D0
    public void onAnimationCancel(View view) {
        this.f17827a = true;
    }

    @Override // M.D0
    public void onAnimationEnd(View view) {
        if (this.f17827a) {
            return;
        }
        AbstractC1130b abstractC1130b = this.f17829c;
        abstractC1130b.f17853n = null;
        super/*android.view.ViewGroup*/.setVisibility(this.f17828b);
    }

    @Override // M.D0
    public void onAnimationStart(View view) {
        super/*android.view.ViewGroup*/.setVisibility(0);
        this.f17827a = false;
    }

    public C1127a withFinalVisibility(M.C0 c02, int i2) {
        this.f17829c.f17853n = c02;
        this.f17828b = i2;
        return this;
    }
}
