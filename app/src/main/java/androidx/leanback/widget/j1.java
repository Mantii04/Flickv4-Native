package androidx.leanback.widget;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;

/* loaded from: classes.dex */
public final class j1 extends FrameLayout {

    /* renamed from: q, reason: collision with root package name */
    public static final Rect f6810q = new Rect();

    /* renamed from: b, reason: collision with root package name */
    public boolean f6811b;

    /* renamed from: e, reason: collision with root package name */
    public Object f6812e;

    /* renamed from: f, reason: collision with root package name */
    public View f6813f;

    /* renamed from: j, reason: collision with root package name */
    public boolean f6814j;

    /* renamed from: m, reason: collision with root package name */
    public int f6815m;

    /* renamed from: n, reason: collision with root package name */
    public Paint f6816n;

    /* renamed from: p, reason: collision with root package name */
    public int f6817p;

    public static boolean supportsDynamicShadow() {
        return true;
    }

    @Override // android.view.View
    public void draw(Canvas canvas) {
        super.draw(canvas);
        if (this.f6816n == null || this.f6817p == 0) {
            return;
        }
        canvas.drawRect(this.f6813f.getLeft(), this.f6813f.getTop(), this.f6813f.getRight(), this.f6813f.getBottom(), this.f6816n);
    }

    public int getShadowType() {
        return this.f6815m;
    }

    public View getWrappedView() {
        return this.f6813f;
    }

    @Override // android.view.View
    public boolean hasOverlappingRendering() {
        return false;
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    public void onLayout(boolean z6, int i2, int i7, int i8, int i9) {
        View view;
        super.onLayout(z6, i2, i7, i8, i9);
        if (!z6 || (view = this.f6813f) == null) {
            return;
        }
        int pivotX = (int) view.getPivotX();
        Rect rect = f6810q;
        rect.left = pivotX;
        rect.top = (int) this.f6813f.getPivotY();
        offsetDescendantRectToMyCoords(this.f6813f, rect);
        setPivotX(rect.left);
        setPivotY(rect.top);
    }

    public void setOverlayColor(int i2) {
        Paint paint = this.f6816n;
        if (paint == null || i2 == this.f6817p) {
            return;
        }
        this.f6817p = i2;
        paint.setColor(i2);
        invalidate();
    }

    public void setShadowFocusLevel(float f3) {
        Object obj = this.f6812e;
        if (obj != null) {
            m1.a(obj, this.f6815m, f3);
        }
    }

    public void wrap(View view) {
        if (!this.f6811b || this.f6813f != null) {
            throw new IllegalStateException();
        }
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        if (layoutParams != null) {
            FrameLayout.LayoutParams layoutParams2 = new FrameLayout.LayoutParams(layoutParams.width, layoutParams.height);
            layoutParams.width = layoutParams.width == -1 ? -1 : -2;
            layoutParams.height = layoutParams.height == -1 ? -1 : -2;
            setLayoutParams(layoutParams);
            addView(view, layoutParams2);
        } else {
            addView(view);
        }
        if (this.f6814j && this.f6815m != 3) {
            G0.setClipToRoundedOutline(this, true, getResources().getDimensionPixelSize(androidx.leanback.R.dimen.lb_rounded_rect_corner_radius));
        }
        this.f6813f = view;
    }
}
