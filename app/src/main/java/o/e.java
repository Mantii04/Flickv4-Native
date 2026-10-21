package o;

import android.content.res.ColorStateList;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Outline;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;

/* loaded from: classes.dex */
public final class e extends Drawable {

    /* renamed from: a, reason: collision with root package name */
    public float f19022a;

    /* renamed from: b, reason: collision with root package name */
    public final Paint f19023b;

    /* renamed from: c, reason: collision with root package name */
    public final RectF f19024c;

    /* renamed from: d, reason: collision with root package name */
    public final Rect f19025d;

    /* renamed from: e, reason: collision with root package name */
    public float f19026e;

    /* renamed from: h, reason: collision with root package name */
    public ColorStateList f19029h;

    /* renamed from: i, reason: collision with root package name */
    public PorterDuffColorFilter f19030i;

    /* renamed from: j, reason: collision with root package name */
    public ColorStateList f19031j;

    /* renamed from: f, reason: collision with root package name */
    public boolean f19027f = false;

    /* renamed from: g, reason: collision with root package name */
    public boolean f19028g = true;

    /* renamed from: k, reason: collision with root package name */
    public PorterDuff.Mode f19032k = PorterDuff.Mode.SRC_IN;

    public e(float f3, ColorStateList colorStateList) {
        this.f19022a = f3;
        Paint paint = new Paint(5);
        this.f19023b = paint;
        colorStateList = colorStateList == null ? ColorStateList.valueOf(0) : colorStateList;
        this.f19029h = colorStateList;
        paint.setColor(colorStateList.getColorForState(getState(), this.f19029h.getDefaultColor()));
        this.f19024c = new RectF();
        this.f19025d = new Rect();
    }

    public final PorterDuffColorFilter a(ColorStateList colorStateList, PorterDuff.Mode mode) {
        if (colorStateList == null || mode == null) {
            return null;
        }
        return new PorterDuffColorFilter(colorStateList.getColorForState(getState(), 0), mode);
    }

    public final void b(Rect rect) {
        if (rect == null) {
            rect = getBounds();
        }
        RectF rectF = this.f19024c;
        rectF.set(rect.left, rect.top, rect.right, rect.bottom);
        Rect rect2 = this.f19025d;
        rect2.set(rect);
        if (this.f19027f) {
            rect2.inset((int) Math.ceil(f.a(this.f19026e, this.f19022a, this.f19028g)), (int) Math.ceil(f.b(this.f19026e, this.f19022a, this.f19028g)));
            rectF.set(rect2);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        boolean z6;
        Paint paint = this.f19023b;
        if (this.f19030i == null || paint.getColorFilter() != null) {
            z6 = false;
        } else {
            paint.setColorFilter(this.f19030i);
            z6 = true;
        }
        RectF rectF = this.f19024c;
        float f3 = this.f19022a;
        canvas.drawRoundRect(rectF, f3, f3, paint);
        if (z6) {
            paint.setColorFilter(null);
        }
    }

    public ColorStateList getColor() {
        return this.f19029h;
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return -3;
    }

    @Override // android.graphics.drawable.Drawable
    public void getOutline(Outline outline) {
        outline.setRoundRect(this.f19025d, this.f19022a);
    }

    public float getRadius() {
        return this.f19022a;
    }

    @Override // android.graphics.drawable.Drawable
    public boolean isStateful() {
        ColorStateList colorStateList = this.f19031j;
        if (colorStateList != null && colorStateList.isStateful()) {
            return true;
        }
        ColorStateList colorStateList2 = this.f19029h;
        return (colorStateList2 != null && colorStateList2.isStateful()) || super.isStateful();
    }

    @Override // android.graphics.drawable.Drawable
    public void onBoundsChange(Rect rect) {
        super.onBoundsChange(rect);
        b(rect);
    }

    @Override // android.graphics.drawable.Drawable
    public boolean onStateChange(int[] iArr) {
        PorterDuff.Mode mode;
        ColorStateList colorStateList = this.f19029h;
        int colorForState = colorStateList.getColorForState(iArr, colorStateList.getDefaultColor());
        Paint paint = this.f19023b;
        boolean z6 = colorForState != paint.getColor();
        if (z6) {
            paint.setColor(colorForState);
        }
        ColorStateList colorStateList2 = this.f19031j;
        if (colorStateList2 == null || (mode = this.f19032k) == null) {
            return z6;
        }
        this.f19030i = a(colorStateList2, mode);
        return true;
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i2) {
        this.f19023b.setAlpha(i2);
    }

    public void setColor(ColorStateList colorStateList) {
        if (colorStateList == null) {
            colorStateList = ColorStateList.valueOf(0);
        }
        this.f19029h = colorStateList;
        this.f19023b.setColor(colorStateList.getColorForState(getState(), this.f19029h.getDefaultColor()));
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
        this.f19023b.setColorFilter(colorFilter);
    }

    @Override // android.graphics.drawable.Drawable
    public void setTintList(ColorStateList colorStateList) {
        this.f19031j = colorStateList;
        this.f19030i = a(colorStateList, this.f19032k);
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public void setTintMode(PorterDuff.Mode mode) {
        this.f19032k = mode;
        this.f19030i = a(this.f19031j, mode);
        invalidateSelf();
    }
}
