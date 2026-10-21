package androidx.leanback.widget;

import android.view.View;

/* renamed from: androidx.leanback.widget.a0, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class ViewOnFocusChangeListenerC0489a0 implements View.OnFocusChangeListener {

    /* renamed from: b, reason: collision with root package name */
    public final View.OnFocusChangeListener f6764b;

    /* renamed from: e, reason: collision with root package name */
    public boolean f6765e;

    /* renamed from: f, reason: collision with root package name */
    public C0541z f6766f;

    public ViewOnFocusChangeListenerC0489a0(View.OnFocusChangeListener onFocusChangeListener, boolean z6, C0541z c0541z) {
        this.f6764b = onFocusChangeListener;
        this.f6765e = z6;
        this.f6766f = c0541z;
    }

    @Override // android.view.View.OnFocusChangeListener
    public void onFocusChange(View view, boolean z6) {
        if (this.f6765e) {
            view = (View) view.getParent();
        }
        this.f6766f.onItemFocused(view, z6);
        View.OnFocusChangeListener onFocusChangeListener = this.f6764b;
        if (onFocusChangeListener != null) {
            onFocusChangeListener.onFocusChange(view, z6);
        }
    }
}
