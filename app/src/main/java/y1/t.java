package y1;

import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;

/* loaded from: classes.dex */
public final class t extends Drawable.ConstantState {

    /* renamed from: a, reason: collision with root package name */
    public int f21032a;

    /* renamed from: b, reason: collision with root package name */
    public s f21033b;

    /* renamed from: c, reason: collision with root package name */
    public ColorStateList f21034c;

    /* renamed from: d, reason: collision with root package name */
    public PorterDuff.Mode f21035d;

    /* renamed from: e, reason: collision with root package name */
    public boolean f21036e;

    /* renamed from: f, reason: collision with root package name */
    public Bitmap f21037f;

    /* renamed from: g, reason: collision with root package name */
    public ColorStateList f21038g;

    /* renamed from: h, reason: collision with root package name */
    public PorterDuff.Mode f21039h;

    /* renamed from: i, reason: collision with root package name */
    public int f21040i;

    /* renamed from: j, reason: collision with root package name */
    public boolean f21041j;

    /* renamed from: k, reason: collision with root package name */
    public boolean f21042k;

    /* renamed from: l, reason: collision with root package name */
    public Paint f21043l;

    public t(t tVar) {
        this.f21034c = null;
        this.f21035d = v.f21045s;
        if (tVar != null) {
            this.f21032a = tVar.f21032a;
            s sVar = new s(tVar.f21033b);
            this.f21033b = sVar;
            if (tVar.f21033b.f21021e != null) {
                sVar.f21021e = new Paint(tVar.f21033b.f21021e);
            }
            if (tVar.f21033b.f21020d != null) {
                this.f21033b.f21020d = new Paint(tVar.f21033b.f21020d);
            }
            this.f21034c = tVar.f21034c;
            this.f21035d = tVar.f21035d;
            this.f21036e = tVar.f21036e;
        }
    }

    public boolean canReuseBitmap(int i2, int i7) {
        return i2 == this.f21037f.getWidth() && i7 == this.f21037f.getHeight();
    }

    public boolean canReuseCache() {
        return !this.f21042k && this.f21038g == this.f21034c && this.f21039h == this.f21035d && this.f21041j == this.f21036e && this.f21040i == this.f21033b.getRootAlpha();
    }

    public void createCachedBitmapIfNeeded(int i2, int i7) {
        if (this.f21037f == null || !canReuseBitmap(i2, i7)) {
            this.f21037f = Bitmap.createBitmap(i2, i7, Bitmap.Config.ARGB_8888);
            this.f21042k = true;
        }
    }

    public void drawCachedBitmapWithRootAlpha(Canvas canvas, ColorFilter colorFilter, Rect rect) {
        canvas.drawBitmap(this.f21037f, (Rect) null, rect, getPaint(colorFilter));
    }

    @Override // android.graphics.drawable.Drawable.ConstantState
    public int getChangingConfigurations() {
        return this.f21032a;
    }

    public Paint getPaint(ColorFilter colorFilter) {
        if (!hasTranslucentRoot() && colorFilter == null) {
            return null;
        }
        if (this.f21043l == null) {
            Paint paint = new Paint();
            this.f21043l = paint;
            paint.setFilterBitmap(true);
        }
        this.f21043l.setAlpha(this.f21033b.getRootAlpha());
        this.f21043l.setColorFilter(colorFilter);
        return this.f21043l;
    }

    public boolean hasTranslucentRoot() {
        return this.f21033b.getRootAlpha() < 255;
    }

    public boolean isStateful() {
        return this.f21033b.isStateful();
    }

    @Override // android.graphics.drawable.Drawable.ConstantState
    public Drawable newDrawable() {
        return new v(this);
    }

    public boolean onStateChanged(int[] iArr) {
        boolean onStateChanged = this.f21033b.onStateChanged(iArr);
        this.f21042k |= onStateChanged;
        return onStateChanged;
    }

    public void updateCacheStates() {
        this.f21038g = this.f21034c;
        this.f21039h = this.f21035d;
        this.f21040i = this.f21033b.getRootAlpha();
        this.f21041j = this.f21036e;
        this.f21042k = false;
    }

    public void updateCachedBitmap(int i2, int i7) {
        this.f21037f.eraseColor(0);
        this.f21033b.draw(new Canvas(this.f21037f), i2, i7, null);
    }

    @Override // android.graphics.drawable.Drawable.ConstantState
    public Drawable newDrawable(Resources resources) {
        return new v(this);
    }

    public t() {
        this.f21034c = null;
        this.f21035d = v.f21045s;
        this.f21033b = new s();
    }
}
