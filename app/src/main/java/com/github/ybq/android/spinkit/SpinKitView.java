package com.github.ybq.android.spinkit;

import K2.a;
import N2.q;
import android.annotation.TargetApi;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.widget.ProgressBar;

/* loaded from: classes.dex */
public class SpinKitView extends ProgressBar {

    /* renamed from: b, reason: collision with root package name */
    public int f9475b;

    /* renamed from: e, reason: collision with root package name */
    public q f9476e;

    public SpinKitView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.SpinKitViewStyle);
    }

    @Override // android.view.View
    public void onScreenStateChanged(int i2) {
        q qVar;
        super.onScreenStateChanged(i2);
        if (i2 != 0 || (qVar = this.f9476e) == null) {
            return;
        }
        qVar.stop();
    }

    @Override // android.view.View
    public void onWindowFocusChanged(boolean z6) {
        super.onWindowFocusChanged(z6);
        if (z6 && this.f9476e != null && getVisibility() == 0) {
            this.f9476e.start();
        }
    }

    public void setColor(int i2) {
        this.f9475b = i2;
        q qVar = this.f9476e;
        if (qVar != null) {
            qVar.setColor(i2);
        }
        invalidate();
    }

    @Override // android.widget.ProgressBar
    public void setIndeterminateDrawable(Drawable drawable) {
        if (!(drawable instanceof q)) {
            throw new IllegalArgumentException("this d must be instanceof Sprite");
        }
        setIndeterminateDrawable((q) drawable);
    }

    @Override // android.view.View
    public void unscheduleDrawable(Drawable drawable) {
        super.unscheduleDrawable(drawable);
        if (drawable instanceof q) {
            ((q) drawable).stop();
        }
    }

    public SpinKitView(Context context, AttributeSet attributeSet, int i2) {
        this(context, attributeSet, i2, R.style.SpinKitView);
    }

    @Override // android.widget.ProgressBar
    public q getIndeterminateDrawable() {
        return this.f9476e;
    }

    @TargetApi(21)
    public SpinKitView(Context context, AttributeSet attributeSet, int i2, int i7) {
        super(context, attributeSet, i2, i7);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.SpinKitView, i2, i7);
        Style style = Style.values()[obtainStyledAttributes.getInt(R.styleable.SpinKitView_SpinKit_Style, 0)];
        this.f9475b = obtainStyledAttributes.getColor(R.styleable.SpinKitView_SpinKit_Color, -1);
        obtainStyledAttributes.recycle();
        q create = a.create(style);
        create.setColor(this.f9475b);
        setIndeterminateDrawable(create);
        setIndeterminate(true);
    }

    public void setIndeterminateDrawable(q qVar) {
        super.setIndeterminateDrawable((Drawable) qVar);
        this.f9476e = qVar;
        if (qVar.getColor() == 0) {
            this.f9476e.setColor(this.f9475b);
        }
        onSizeChanged(getWidth(), getHeight(), getWidth(), getHeight());
        if (getVisibility() == 0) {
            this.f9476e.start();
        }
    }
}
