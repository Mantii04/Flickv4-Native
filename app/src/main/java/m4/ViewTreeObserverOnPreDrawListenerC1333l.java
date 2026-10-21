package m4;

import android.view.View;
import android.view.ViewTreeObserver;
import android.widget.ImageView;
import java.lang.ref.WeakReference;

/* renamed from: m4.l, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class ViewTreeObserverOnPreDrawListenerC1333l implements ViewTreeObserver.OnPreDrawListener, View.OnAttachStateChangeListener {

    /* renamed from: b, reason: collision with root package name */
    public final J f18685b;

    /* renamed from: e, reason: collision with root package name */
    public final WeakReference f18686e;

    /* renamed from: f, reason: collision with root package name */
    public InterfaceC1330i f18687f;

    public ViewTreeObserverOnPreDrawListenerC1333l(J j7, ImageView imageView, InterfaceC1330i interfaceC1330i) {
        this.f18685b = j7;
        this.f18686e = new WeakReference(imageView);
        this.f18687f = interfaceC1330i;
        imageView.addOnAttachStateChangeListener(this);
        if (imageView.getWindowToken() != null) {
            onViewAttachedToWindow(imageView);
        }
    }

    @Override // android.view.ViewTreeObserver.OnPreDrawListener
    public boolean onPreDraw() {
        WeakReference weakReference = this.f18686e;
        ImageView imageView = (ImageView) weakReference.get();
        if (imageView == null) {
            return true;
        }
        ViewTreeObserver viewTreeObserver = imageView.getViewTreeObserver();
        if (!viewTreeObserver.isAlive()) {
            return true;
        }
        int width = imageView.getWidth();
        int height = imageView.getHeight();
        if (width > 0 && height > 0) {
            imageView.removeOnAttachStateChangeListener(this);
            viewTreeObserver.removeOnPreDrawListener(this);
            weakReference.clear();
            J j7 = this.f18685b;
            j7.f18633c = false;
            j7.resize(width, height).into(imageView, this.f18687f);
        }
        return true;
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public void onViewAttachedToWindow(View view) {
        view.getViewTreeObserver().addOnPreDrawListener(this);
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public void onViewDetachedFromWindow(View view) {
        view.getViewTreeObserver().removeOnPreDrawListener(this);
    }
}
