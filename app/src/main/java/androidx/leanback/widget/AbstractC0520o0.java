package androidx.leanback.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.widget.LinearLayout;

/* renamed from: androidx.leanback.widget.o0, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public abstract class AbstractC0520o0 extends LinearLayout {
    public AbstractC0520o0(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        new Rect();
        if (context.getApplicationInfo().targetSdkVersion >= 23) {
            return;
        }
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, new int[]{android.R.attr.foreground});
        Drawable drawable = obtainStyledAttributes.getDrawable(0);
        if (drawable != null) {
            setForegroundCompat(drawable);
        }
        obtainStyledAttributes.recycle();
    }

    @Override // android.view.View
    public void draw(Canvas canvas) {
        super.draw(canvas);
    }

    @Override // android.view.ViewGroup, android.view.View
    public void drawableStateChanged() {
        super.drawableStateChanged();
    }

    @Override // android.view.View
    public boolean hasOverlappingRendering() {
        return false;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void jumpDrawablesToCurrentState() {
        super.jumpDrawablesToCurrentState();
    }

    @Override // android.widget.LinearLayout, android.view.ViewGroup, android.view.View
    public void onLayout(boolean z6, int i2, int i7, int i8, int i9) {
        super.onLayout(z6, i2, i7, i8, i9);
    }

    public void setForegroundCompat(Drawable drawable) {
        setForeground(drawable);
    }

    @Override // android.view.View
    public boolean verifyDrawable(Drawable drawable) {
        return super.verifyDrawable(drawable) || drawable == null;
    }
}
