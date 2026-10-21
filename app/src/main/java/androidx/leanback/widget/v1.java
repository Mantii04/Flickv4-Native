package androidx.leanback.widget;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.text.style.ReplacementSpan;

/* loaded from: classes.dex */
public final class v1 extends ReplacementSpan {

    /* renamed from: a, reason: collision with root package name */
    public final int f6913a;

    /* renamed from: b, reason: collision with root package name */
    public final int f6914b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ w1 f6915c;

    public v1(w1 w1Var, int i2, int i7) {
        this.f6915c = w1Var;
        this.f6913a = i2;
        this.f6914b = i7;
    }

    @Override // android.text.style.ReplacementSpan
    public void draw(Canvas canvas, CharSequence charSequence, int i2, int i7, float f3, int i8, int i9, int i10, Paint paint) {
        int measureText = (int) paint.measureText(charSequence, i2, i7);
        w1 w1Var = this.f6915c;
        int width = w1Var.f6919e.getWidth();
        int i11 = width * 2;
        int i12 = measureText / i11;
        int i13 = (measureText % i11) / 2;
        boolean isLayoutRtl = w1.isLayoutRtl(w1Var);
        w1Var.f6918b.setSeed(this.f6913a);
        int alpha = paint.getAlpha();
        for (int i14 = 0; i14 < i12 && this.f6914b + i14 < w1Var.f6921j; i14++) {
            float f7 = (width / 2) + (i14 * i11) + i13;
            float f8 = isLayoutRtl ? ((f3 + measureText) - f7) - width : f3 + f7;
            paint.setAlpha((w1Var.f6918b.nextInt(4) + 1) * 63);
            if (w1Var.f6918b.nextBoolean()) {
                canvas.drawBitmap(w1Var.f6920f, f8, i9 - r10.getHeight(), paint);
            } else {
                canvas.drawBitmap(w1Var.f6919e, f8, i9 - r10.getHeight(), paint);
            }
        }
        paint.setAlpha(alpha);
    }

    @Override // android.text.style.ReplacementSpan
    public int getSize(Paint paint, CharSequence charSequence, int i2, int i7, Paint.FontMetricsInt fontMetricsInt) {
        return (int) paint.measureText(charSequence, i2, i7);
    }
}
