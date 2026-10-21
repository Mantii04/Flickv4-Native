package M;

import android.animation.ValueAnimator;
import android.view.View;

/* loaded from: classes.dex */
public final class M0 implements Runnable {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ View f1946b;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ S0 f1947e;

    /* renamed from: f, reason: collision with root package name */
    public final /* synthetic */ I0 f1948f;

    /* renamed from: j, reason: collision with root package name */
    public final /* synthetic */ ValueAnimator f1949j;

    public M0(View view, S0 s02, I0 i02, ValueAnimator valueAnimator) {
        this.f1946b = view;
        this.f1947e = s02;
        this.f1948f = i02;
        this.f1949j = valueAnimator;
    }

    @Override // java.lang.Runnable
    public void run() {
        O0.d(this.f1946b, this.f1947e, this.f1948f);
        this.f1949j.start();
    }
}
