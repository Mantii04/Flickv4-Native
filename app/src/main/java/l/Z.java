package l;

import M.AbstractC0181p0;
import android.content.res.ColorStateList;
import android.graphics.Canvas;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import androidx.appcompat.R;

/* loaded from: classes.dex */
public final class Z extends U {

    /* renamed from: d, reason: collision with root package name */
    public final Y f17819d;

    /* renamed from: e, reason: collision with root package name */
    public Drawable f17820e;

    /* renamed from: f, reason: collision with root package name */
    public ColorStateList f17821f;

    /* renamed from: g, reason: collision with root package name */
    public PorterDuff.Mode f17822g;

    /* renamed from: h, reason: collision with root package name */
    public boolean f17823h;

    /* renamed from: i, reason: collision with root package name */
    public boolean f17824i;

    public Z(Y y6) {
        super(y6);
        this.f17821f = null;
        this.f17822g = null;
        this.f17823h = false;
        this.f17824i = false;
        this.f17819d = y6;
    }

    @Override // l.U
    public final void a(AttributeSet attributeSet, int i2) {
        super.a(attributeSet, i2);
        Y y6 = this.f17819d;
        e2 obtainStyledAttributes = e2.obtainStyledAttributes(y6.getContext(), attributeSet, R.styleable.AppCompatSeekBar, i2, 0);
        AbstractC0181p0.saveAttributeDataForStyleable(y6, y6.getContext(), R.styleable.AppCompatSeekBar, attributeSet, obtainStyledAttributes.getWrappedTypeArray(), i2, 0);
        Drawable drawableIfKnown = obtainStyledAttributes.getDrawableIfKnown(R.styleable.AppCompatSeekBar_android_thumb);
        if (drawableIfKnown != null) {
            y6.setThumb(drawableIfKnown);
        }
        Drawable drawable = obtainStyledAttributes.getDrawable(R.styleable.AppCompatSeekBar_tickMark);
        Drawable drawable2 = this.f17820e;
        if (drawable2 != null) {
            drawable2.setCallback(null);
        }
        this.f17820e = drawable;
        if (drawable != null) {
            drawable.setCallback(y6);
            E.c.setLayoutDirection(drawable, AbstractC0181p0.getLayoutDirection(y6));
            if (drawable.isStateful()) {
                drawable.setState(y6.getDrawableState());
            }
            c();
        }
        y6.invalidate();
        if (obtainStyledAttributes.hasValue(R.styleable.AppCompatSeekBar_tickMarkTintMode)) {
            this.f17822g = P0.parseTintMode(obtainStyledAttributes.getInt(R.styleable.AppCompatSeekBar_tickMarkTintMode, -1), this.f17822g);
            this.f17824i = true;
        }
        if (obtainStyledAttributes.hasValue(R.styleable.AppCompatSeekBar_tickMarkTint)) {
            this.f17821f = obtainStyledAttributes.getColorStateList(R.styleable.AppCompatSeekBar_tickMarkTint);
            this.f17823h = true;
        }
        obtainStyledAttributes.recycle();
        c();
    }

    public final void c() {
        Drawable drawable = this.f17820e;
        if (drawable != null) {
            if (this.f17823h || this.f17824i) {
                Drawable wrap = E.c.wrap(drawable.mutate());
                this.f17820e = wrap;
                if (this.f17823h) {
                    E.c.setTintList(wrap, this.f17821f);
                }
                if (this.f17824i) {
                    E.c.setTintMode(this.f17820e, this.f17822g);
                }
                if (this.f17820e.isStateful()) {
                    this.f17820e.setState(this.f17819d.getDrawableState());
                }
            }
        }
    }

    public final void d(Canvas canvas) {
        if (this.f17820e != null) {
            int max = this.f17819d.getMax();
            if (max > 1) {
                int intrinsicWidth = this.f17820e.getIntrinsicWidth();
                int intrinsicHeight = this.f17820e.getIntrinsicHeight();
                int i2 = intrinsicWidth >= 0 ? intrinsicWidth / 2 : 1;
                int i7 = intrinsicHeight >= 0 ? intrinsicHeight / 2 : 1;
                this.f17820e.setBounds(-i2, -i7, i2, i7);
                float width = ((r0.getWidth() - r0.getPaddingLeft()) - r0.getPaddingRight()) / max;
                int save = canvas.save();
                canvas.translate(r0.getPaddingLeft(), r0.getHeight() / 2);
                for (int i8 = 0; i8 <= max; i8++) {
                    this.f17820e.draw(canvas);
                    canvas.translate(width, 0.0f);
                }
                canvas.restoreToCount(save);
            }
        }
    }
}
