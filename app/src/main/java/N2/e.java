package N2;

import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;

/* loaded from: classes.dex */
public abstract class e extends q {

    /* renamed from: K, reason: collision with root package name */
    public final Paint f2295K;

    /* renamed from: L, reason: collision with root package name */
    public int f2296L;

    /* renamed from: M, reason: collision with root package name */
    public int f2297M;

    public e() {
        setColor(-1);
        Paint paint = new Paint();
        this.f2295K = paint;
        paint.setAntiAlias(true);
        paint.setColor(this.f2296L);
    }

    public final void a() {
        int alpha = getAlpha();
        int i2 = this.f2297M;
        this.f2296L = ((((i2 >>> 24) * (alpha + (alpha >> 7))) >> 8) << 24) | ((i2 << 8) >>> 8);
    }

    @Override // N2.q
    public final void drawSelf(Canvas canvas) {
        Paint paint = this.f2295K;
        paint.setColor(this.f2296L);
        drawShape(canvas, paint);
    }

    public abstract void drawShape(Canvas canvas, Paint paint);

    @Override // N2.q
    public int getColor() {
        return this.f2297M;
    }

    @Override // N2.q, android.graphics.drawable.Drawable
    public void setAlpha(int i2) {
        super.setAlpha(i2);
        a();
    }

    @Override // N2.q
    public void setColor(int i2) {
        this.f2297M = i2;
        a();
    }

    @Override // N2.q, android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
        this.f2295K.setColorFilter(colorFilter);
    }
}
