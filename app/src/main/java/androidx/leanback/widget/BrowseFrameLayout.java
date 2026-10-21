package androidx.leanback.widget;

import android.content.Context;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.view.View;
import android.widget.FrameLayout;

/* loaded from: classes.dex */
public class BrowseFrameLayout extends FrameLayout {

    /* renamed from: b, reason: collision with root package name */
    public View.OnKeyListener f6473b;

    public BrowseFrameLayout(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchKeyEvent(KeyEvent keyEvent) {
        boolean dispatchKeyEvent = super.dispatchKeyEvent(keyEvent);
        View.OnKeyListener onKeyListener = this.f6473b;
        return (onKeyListener == null || dispatchKeyEvent) ? dispatchKeyEvent : onKeyListener.onKey(getRootView(), keyEvent.getKeyCode(), keyEvent);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public View focusSearch(View view, int i2) {
        return super.focusSearch(view, i2);
    }

    public InterfaceC0535w getOnChildFocusListener() {
        return null;
    }

    public InterfaceC0537x getOnFocusSearchListener() {
        return null;
    }

    @Override // android.view.ViewGroup
    public boolean onRequestFocusInDescendants(int i2, Rect rect) {
        return super.onRequestFocusInDescendants(i2, rect);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public void requestChildFocus(View view, View view2) {
        super.requestChildFocus(view, view2);
    }

    public void setOnChildFocusListener(InterfaceC0535w interfaceC0535w) {
    }

    public void setOnDispatchKeyListener(View.OnKeyListener onKeyListener) {
        this.f6473b = onKeyListener;
    }

    public void setOnFocusSearchListener(InterfaceC0537x interfaceC0537x) {
    }

    public BrowseFrameLayout(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
    }
}
