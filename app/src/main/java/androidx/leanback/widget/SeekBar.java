package androidx.leanback.widget;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.RectF;
import android.os.Bundle;
import android.util.AttributeSet;
import android.view.View;

/* loaded from: classes.dex */
public final class SeekBar extends View {

    /* renamed from: b, reason: collision with root package name */
    public final RectF f6715b;

    /* renamed from: e, reason: collision with root package name */
    public final RectF f6716e;

    /* renamed from: f, reason: collision with root package name */
    public final RectF f6717f;

    /* renamed from: j, reason: collision with root package name */
    public final Paint f6718j;

    /* renamed from: m, reason: collision with root package name */
    public final Paint f6719m;

    /* renamed from: n, reason: collision with root package name */
    public final Paint f6720n;

    /* renamed from: p, reason: collision with root package name */
    public final Paint f6721p;

    /* renamed from: q, reason: collision with root package name */
    public int f6722q;

    /* renamed from: r, reason: collision with root package name */
    public int f6723r;

    /* renamed from: s, reason: collision with root package name */
    public int f6724s;

    /* renamed from: t, reason: collision with root package name */
    public int f6725t;

    /* renamed from: u, reason: collision with root package name */
    public int f6726u;

    /* renamed from: v, reason: collision with root package name */
    public int f6727v;

    /* renamed from: w, reason: collision with root package name */
    public int f6728w;

    public SeekBar(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f6715b = new RectF();
        this.f6716e = new RectF();
        this.f6717f = new RectF();
        Paint paint = new Paint(1);
        this.f6718j = paint;
        Paint paint2 = new Paint(1);
        this.f6719m = paint2;
        Paint paint3 = new Paint(1);
        this.f6720n = paint3;
        Paint paint4 = new Paint(1);
        this.f6721p = paint4;
        setWillNotDraw(false);
        paint3.setColor(-7829368);
        paint.setColor(-3355444);
        paint2.setColor(-65536);
        paint4.setColor(-1);
        this.f6727v = context.getResources().getDimensionPixelSize(androidx.leanback.R.dimen.lb_playback_transport_progressbar_bar_height);
        this.f6728w = context.getResources().getDimensionPixelSize(androidx.leanback.R.dimen.lb_playback_transport_progressbar_active_bar_height);
        this.f6726u = context.getResources().getDimensionPixelSize(androidx.leanback.R.dimen.lb_playback_transport_progressbar_active_radius);
    }

    public final void a() {
        int i2 = isFocused() ? this.f6728w : this.f6727v;
        int width = getWidth();
        int height = getHeight();
        int i7 = (height - i2) / 2;
        RectF rectF = this.f6717f;
        int i8 = this.f6727v;
        float f3 = i7;
        float f7 = height - i7;
        rectF.set(i8 / 2, f3, width - (i8 / 2), f7);
        int i9 = isFocused() ? this.f6726u : this.f6727v / 2;
        float f8 = width - (i9 * 2);
        float f9 = (this.f6722q / this.f6724s) * f8;
        RectF rectF2 = this.f6715b;
        int i10 = this.f6727v;
        rectF2.set(i10 / 2, f3, (i10 / 2) + f9, f7);
        this.f6716e.set(rectF2.right, f3, (this.f6727v / 2) + ((this.f6723r / this.f6724s) * f8), f7);
        this.f6725t = i9 + ((int) f9);
        invalidate();
    }

    @Override // android.view.View
    public CharSequence getAccessibilityClassName() {
        return android.widget.SeekBar.class.getName();
    }

    public int getMax() {
        return this.f6724s;
    }

    public int getProgress() {
        return this.f6722q;
    }

    public int getSecondProgress() {
        return this.f6723r;
    }

    public int getSecondaryProgressColor() {
        return this.f6718j.getColor();
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        float f3 = isFocused() ? this.f6726u : this.f6727v / 2;
        canvas.drawRoundRect(this.f6717f, f3, f3, this.f6720n);
        RectF rectF = this.f6716e;
        if (rectF.right > rectF.left) {
            canvas.drawRoundRect(rectF, f3, f3, this.f6718j);
        }
        canvas.drawRoundRect(this.f6715b, f3, f3, this.f6719m);
        canvas.drawCircle(this.f6725t, getHeight() / 2, f3, this.f6721p);
    }

    @Override // android.view.View
    public void onFocusChanged(boolean z6, int i2, Rect rect) {
        super.onFocusChanged(z6, i2, rect);
        a();
    }

    @Override // android.view.View
    public void onSizeChanged(int i2, int i7, int i8, int i9) {
        super.onSizeChanged(i2, i7, i8, i9);
        a();
    }

    @Override // android.view.View
    public boolean performAccessibilityAction(int i2, Bundle bundle) {
        return super.performAccessibilityAction(i2, bundle);
    }

    public void setAccessibilitySeekListener(f1 f1Var) {
    }

    public void setActiveBarHeight(int i2) {
        this.f6728w = i2;
        a();
    }

    public void setActiveRadius(int i2) {
        this.f6726u = i2;
        a();
    }

    public void setBarHeight(int i2) {
        this.f6727v = i2;
        a();
    }

    public void setMax(int i2) {
        this.f6724s = i2;
        a();
    }

    public void setProgress(int i2) {
        int i7 = this.f6724s;
        if (i2 > i7) {
            i2 = i7;
        } else if (i2 < 0) {
            i2 = 0;
        }
        this.f6722q = i2;
        a();
    }

    public void setProgressColor(int i2) {
        this.f6719m.setColor(i2);
    }

    public void setSecondaryProgress(int i2) {
        int i7 = this.f6724s;
        if (i2 > i7) {
            i2 = i7;
        } else if (i2 < 0) {
            i2 = 0;
        }
        this.f6723r = i2;
        a();
    }

    public void setSecondaryProgressColor(int i2) {
        this.f6718j.setColor(i2);
    }
}
