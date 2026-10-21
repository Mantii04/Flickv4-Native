package x3;

import M.AbstractC0181p0;
import M.h1;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.widget.FrameLayout;
import com.google.android.material.R;

/* loaded from: classes2.dex */
public abstract class F extends FrameLayout {

    /* renamed from: b, reason: collision with root package name */
    public Drawable f20872b;

    /* renamed from: e, reason: collision with root package name */
    public Rect f20873e;

    /* renamed from: f, reason: collision with root package name */
    public final Rect f20874f;

    /* renamed from: j, reason: collision with root package name */
    public boolean f20875j;

    /* renamed from: m, reason: collision with root package name */
    public boolean f20876m;

    /* renamed from: n, reason: collision with root package name */
    public boolean f20877n;

    /* renamed from: p, reason: collision with root package name */
    public boolean f20878p;

    public F(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.f20874f = new Rect();
        this.f20875j = true;
        this.f20876m = true;
        this.f20877n = true;
        this.f20878p = true;
        TypedArray obtainStyledAttributes = L.obtainStyledAttributes(context, attributeSet, R.styleable.ScrimInsetsFrameLayout, i2, R.style.Widget_Design_ScrimInsetsFrameLayout, new int[0]);
        this.f20872b = obtainStyledAttributes.getDrawable(R.styleable.ScrimInsetsFrameLayout_insetForeground);
        obtainStyledAttributes.recycle();
        setWillNotDraw(true);
        AbstractC0181p0.setOnApplyWindowInsetsListener(this, new E(this));
    }

    @Override // android.view.View
    public void draw(Canvas canvas) {
        super.draw(canvas);
        int width = getWidth();
        int height = getHeight();
        if (this.f20873e == null || this.f20872b == null) {
            return;
        }
        int save = canvas.save();
        canvas.translate(getScrollX(), getScrollY());
        boolean z6 = this.f20875j;
        Rect rect = this.f20874f;
        if (z6) {
            rect.set(0, 0, width, this.f20873e.top);
            this.f20872b.setBounds(rect);
            this.f20872b.draw(canvas);
        }
        if (this.f20876m) {
            rect.set(0, height - this.f20873e.bottom, width, height);
            this.f20872b.setBounds(rect);
            this.f20872b.draw(canvas);
        }
        if (this.f20877n) {
            Rect rect2 = this.f20873e;
            rect.set(0, rect2.top, rect2.left, height - rect2.bottom);
            this.f20872b.setBounds(rect);
            this.f20872b.draw(canvas);
        }
        if (this.f20878p) {
            Rect rect3 = this.f20873e;
            rect.set(width - rect3.right, rect3.top, width, height - rect3.bottom);
            this.f20872b.setBounds(rect);
            this.f20872b.draw(canvas);
        }
        canvas.restoreToCount(save);
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        Drawable drawable = this.f20872b;
        if (drawable != null) {
            drawable.setCallback(this);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        Drawable drawable = this.f20872b;
        if (drawable != null) {
            drawable.setCallback(null);
        }
    }

    public abstract void onInsetsChanged(h1 h1Var);

    public void setDrawBottomInsetForeground(boolean z6) {
        this.f20876m = z6;
    }

    public void setDrawLeftInsetForeground(boolean z6) {
        this.f20877n = z6;
    }

    public void setDrawRightInsetForeground(boolean z6) {
        this.f20878p = z6;
    }

    public void setDrawTopInsetForeground(boolean z6) {
        this.f20875j = z6;
    }

    public void setScrimInsetForeground(Drawable drawable) {
        this.f20872b = drawable;
    }
}
