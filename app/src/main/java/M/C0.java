package M;

import android.view.View;
import android.view.animation.Interpolator;
import java.lang.ref.WeakReference;

/* loaded from: classes.dex */
public final class C0 {

    /* renamed from: a, reason: collision with root package name */
    public final WeakReference f1927a;

    public C0(View view) {
        this.f1927a = new WeakReference(view);
    }

    public C0 alpha(float f3) {
        View view = (View) this.f1927a.get();
        if (view != null) {
            view.animate().alpha(f3);
        }
        return this;
    }

    public void cancel() {
        View view = (View) this.f1927a.get();
        if (view != null) {
            view.animate().cancel();
        }
    }

    public long getDuration() {
        View view = (View) this.f1927a.get();
        if (view != null) {
            return view.animate().getDuration();
        }
        return 0L;
    }

    public C0 setDuration(long j7) {
        View view = (View) this.f1927a.get();
        if (view != null) {
            view.animate().setDuration(j7);
        }
        return this;
    }

    public C0 setInterpolator(Interpolator interpolator) {
        View view = (View) this.f1927a.get();
        if (view != null) {
            view.animate().setInterpolator(interpolator);
        }
        return this;
    }

    public C0 setListener(D0 d02) {
        View view = (View) this.f1927a.get();
        if (view != null) {
            if (d02 != null) {
                view.animate().setListener(new B0(d02, view));
                return this;
            }
            view.animate().setListener(null);
        }
        return this;
    }

    public C0 setStartDelay(long j7) {
        View view = (View) this.f1927a.get();
        if (view != null) {
            view.animate().setStartDelay(j7);
        }
        return this;
    }

    public C0 setUpdateListener(F0 f02) {
        View view = (View) this.f1927a.get();
        if (view != null) {
            view.animate().setUpdateListener(f02 != null ? new A0(0, f02, view) : null);
        }
        return this;
    }

    public void start() {
        View view = (View) this.f1927a.get();
        if (view != null) {
            view.animate().start();
        }
    }

    public C0 translationY(float f3) {
        View view = (View) this.f1927a.get();
        if (view != null) {
            view.animate().translationY(f3);
        }
        return this;
    }
}
