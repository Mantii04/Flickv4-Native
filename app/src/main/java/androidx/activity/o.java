package androidx.activity;

import android.os.Looper;
import android.os.SystemClock;
import android.view.View;
import android.view.ViewTreeObserver;
import androidx.media3.exoplayer.Renderer;

/* loaded from: classes.dex */
public final class o implements n, ViewTreeObserver.OnDrawListener, Runnable {

    /* renamed from: e, reason: collision with root package name */
    public Runnable f4880e;

    /* renamed from: j, reason: collision with root package name */
    public final /* synthetic */ ComponentActivity f4882j;

    /* renamed from: b, reason: collision with root package name */
    public final long f4879b = SystemClock.uptimeMillis() + Renderer.DEFAULT_DURATION_TO_PROGRESS_US;

    /* renamed from: f, reason: collision with root package name */
    public boolean f4881f = false;

    public o(ComponentActivity componentActivity) {
        this.f4882j = componentActivity;
    }

    @Override // androidx.activity.n
    public void activityDestroyed() {
        ComponentActivity componentActivity = this.f4882j;
        componentActivity.getWindow().getDecorView().removeCallbacks(this);
        componentActivity.getWindow().getDecorView().getViewTreeObserver().removeOnDrawListener(this);
    }

    @Override // java.util.concurrent.Executor
    public void execute(Runnable runnable) {
        this.f4880e = runnable;
        View decorView = this.f4882j.getWindow().getDecorView();
        if (!this.f4881f) {
            decorView.postOnAnimation(new A3.d(this, 21));
        } else if (Looper.myLooper() == Looper.getMainLooper()) {
            decorView.invalidate();
        } else {
            decorView.postInvalidate();
        }
    }

    @Override // android.view.ViewTreeObserver.OnDrawListener
    public void onDraw() {
        Runnable runnable = this.f4880e;
        ComponentActivity componentActivity = this.f4882j;
        if (runnable == null) {
            if (SystemClock.uptimeMillis() > this.f4879b) {
                this.f4881f = false;
                componentActivity.getWindow().getDecorView().post(this);
                return;
            }
            return;
        }
        runnable.run();
        this.f4880e = null;
        if (componentActivity.mFullyDrawnReporter.isFullyDrawnReported()) {
            this.f4881f = false;
            componentActivity.getWindow().getDecorView().post(this);
        }
    }

    @Override // java.lang.Runnable
    public void run() {
        this.f4882j.getWindow().getDecorView().getViewTreeObserver().removeOnDrawListener(this);
    }

    @Override // androidx.activity.n
    public void viewCreated(View view) {
        if (this.f4881f) {
            return;
        }
        this.f4881f = true;
        view.getViewTreeObserver().addOnDrawListener(this);
    }
}
