package M;

import android.view.View;
import android.view.ViewTreeObserver;

/* loaded from: classes.dex */
public final class O implements ViewTreeObserver.OnPreDrawListener, View.OnAttachStateChangeListener {

    /* renamed from: b, reason: collision with root package name */
    public final View f1952b;

    /* renamed from: e, reason: collision with root package name */
    public ViewTreeObserver f1953e;

    /* renamed from: f, reason: collision with root package name */
    public final Runnable f1954f;

    public O(View view, Runnable runnable) {
        this.f1952b = view;
        this.f1953e = view.getViewTreeObserver();
        this.f1954f = runnable;
    }

    public static O add(View view, Runnable runnable) {
        if (view == null) {
            throw new NullPointerException("view == null");
        }
        if (runnable == null) {
            throw new NullPointerException("runnable == null");
        }
        O o6 = new O(view, runnable);
        view.getViewTreeObserver().addOnPreDrawListener(o6);
        view.addOnAttachStateChangeListener(o6);
        return o6;
    }

    @Override // android.view.ViewTreeObserver.OnPreDrawListener
    public boolean onPreDraw() {
        removeListener();
        this.f1954f.run();
        return true;
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public void onViewAttachedToWindow(View view) {
        this.f1953e = view.getViewTreeObserver();
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public void onViewDetachedFromWindow(View view) {
        removeListener();
    }

    public void removeListener() {
        boolean isAlive = this.f1953e.isAlive();
        View view = this.f1952b;
        if (isAlive) {
            this.f1953e.removeOnPreDrawListener(this);
        } else {
            view.getViewTreeObserver().removeOnPreDrawListener(this);
        }
        view.removeOnAttachStateChangeListener(this);
    }
}
