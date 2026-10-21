package l;

import M.AbstractC0181p0;
import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.View;
import androidx.appcompat.R;

/* renamed from: l.B, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C1120B {

    /* renamed from: a, reason: collision with root package name */
    public final View f17650a;

    /* renamed from: d, reason: collision with root package name */
    public c2 f17653d;

    /* renamed from: e, reason: collision with root package name */
    public c2 f17654e;

    /* renamed from: f, reason: collision with root package name */
    public c2 f17655f;

    /* renamed from: c, reason: collision with root package name */
    public int f17652c = -1;

    /* renamed from: b, reason: collision with root package name */
    public final I f17651b = I.get();

    public C1120B(View view) {
        this.f17650a = view;
    }

    public final void a() {
        View view = this.f17650a;
        Drawable background = view.getBackground();
        if (background != null) {
            if (this.f17653d != null) {
                if (this.f17655f == null) {
                    this.f17655f = new c2();
                }
                c2 c2Var = this.f17655f;
                c2Var.f17876a = null;
                c2Var.f17879d = false;
                c2Var.f17877b = null;
                c2Var.f17878c = false;
                ColorStateList backgroundTintList = AbstractC0181p0.getBackgroundTintList(view);
                if (backgroundTintList != null) {
                    c2Var.f17879d = true;
                    c2Var.f17876a = backgroundTintList;
                }
                PorterDuff.Mode backgroundTintMode = AbstractC0181p0.getBackgroundTintMode(view);
                if (backgroundTintMode != null) {
                    c2Var.f17878c = true;
                    c2Var.f17877b = backgroundTintMode;
                }
                if (c2Var.f17879d || c2Var.f17878c) {
                    I.a(background, c2Var, view.getDrawableState());
                    return;
                }
            }
            c2 c2Var2 = this.f17654e;
            if (c2Var2 != null) {
                I.a(background, c2Var2, view.getDrawableState());
                return;
            }
            c2 c2Var3 = this.f17653d;
            if (c2Var3 != null) {
                I.a(background, c2Var3, view.getDrawableState());
            }
        }
    }

    public final ColorStateList b() {
        c2 c2Var = this.f17654e;
        if (c2Var != null) {
            return c2Var.f17876a;
        }
        return null;
    }

    public final PorterDuff.Mode c() {
        c2 c2Var = this.f17654e;
        if (c2Var != null) {
            return c2Var.f17877b;
        }
        return null;
    }

    public final void d(AttributeSet attributeSet, int i2) {
        ColorStateList f3;
        View view = this.f17650a;
        e2 obtainStyledAttributes = e2.obtainStyledAttributes(view.getContext(), attributeSet, R.styleable.ViewBackgroundHelper, i2, 0);
        View view2 = this.f17650a;
        AbstractC0181p0.saveAttributeDataForStyleable(view2, view2.getContext(), R.styleable.ViewBackgroundHelper, attributeSet, obtainStyledAttributes.getWrappedTypeArray(), i2, 0);
        try {
            if (obtainStyledAttributes.hasValue(R.styleable.ViewBackgroundHelper_android_background)) {
                this.f17652c = obtainStyledAttributes.getResourceId(R.styleable.ViewBackgroundHelper_android_background, -1);
                I i7 = this.f17651b;
                Context context = view.getContext();
                int i8 = this.f17652c;
                synchronized (i7) {
                    f3 = i7.f17708a.f(context, i8);
                }
                if (f3 != null) {
                    g(f3);
                }
            }
            if (obtainStyledAttributes.hasValue(R.styleable.ViewBackgroundHelper_backgroundTint)) {
                AbstractC0181p0.setBackgroundTintList(view, obtainStyledAttributes.getColorStateList(R.styleable.ViewBackgroundHelper_backgroundTint));
            }
            if (obtainStyledAttributes.hasValue(R.styleable.ViewBackgroundHelper_backgroundTintMode)) {
                AbstractC0181p0.setBackgroundTintMode(view, P0.parseTintMode(obtainStyledAttributes.getInt(R.styleable.ViewBackgroundHelper_backgroundTintMode, -1), null));
            }
            obtainStyledAttributes.recycle();
        } catch (Throwable th) {
            obtainStyledAttributes.recycle();
            throw th;
        }
    }

    public final void e() {
        this.f17652c = -1;
        g(null);
        a();
    }

    public final void f(int i2) {
        ColorStateList colorStateList;
        this.f17652c = i2;
        I i7 = this.f17651b;
        if (i7 != null) {
            Context context = this.f17650a.getContext();
            synchronized (i7) {
                colorStateList = i7.f17708a.f(context, i2);
            }
        } else {
            colorStateList = null;
        }
        g(colorStateList);
        a();
    }

    public final void g(ColorStateList colorStateList) {
        if (colorStateList != null) {
            if (this.f17653d == null) {
                this.f17653d = new c2();
            }
            c2 c2Var = this.f17653d;
            c2Var.f17876a = colorStateList;
            c2Var.f17879d = true;
        } else {
            this.f17653d = null;
        }
        a();
    }

    public final void h(ColorStateList colorStateList) {
        if (this.f17654e == null) {
            this.f17654e = new c2();
        }
        c2 c2Var = this.f17654e;
        c2Var.f17876a = colorStateList;
        c2Var.f17879d = true;
        a();
    }

    public final void i(PorterDuff.Mode mode) {
        if (this.f17654e == null) {
            this.f17654e = new c2();
        }
        c2 c2Var = this.f17654e;
        c2Var.f17877b = mode;
        c2Var.f17878c = true;
        a();
    }
}
