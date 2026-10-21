package x3;

import M.AbstractC0181p0;
import android.view.View;

/* loaded from: classes2.dex */
public final class P implements View.OnAttachStateChangeListener {
    @Override // android.view.View.OnAttachStateChangeListener
    public void onViewAttachedToWindow(View view) {
        view.removeOnAttachStateChangeListener(this);
        AbstractC0181p0.requestApplyInsets(view);
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public void onViewDetachedFromWindow(View view) {
    }
}
