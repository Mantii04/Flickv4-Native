package androidx.emoji2.text;

import android.annotation.SuppressLint;
import android.graphics.Paint;
import android.text.style.ReplacementSpan;

/* loaded from: classes.dex */
public abstract class w extends ReplacementSpan {

    /* renamed from: b, reason: collision with root package name */
    public final u f6023b;

    /* renamed from: a, reason: collision with root package name */
    public final Paint.FontMetricsInt f6022a = new Paint.FontMetricsInt();

    /* renamed from: c, reason: collision with root package name */
    public short f6024c = -1;

    /* renamed from: d, reason: collision with root package name */
    public float f6025d = 1.0f;

    public w(u uVar) {
        L.h.checkNotNull(uVar, "metadata cannot be null");
        this.f6023b = uVar;
    }

    public final u getMetadata() {
        return this.f6023b;
    }

    @Override // android.text.style.ReplacementSpan
    public int getSize(Paint paint, @SuppressLint({"UnknownNullness"}) CharSequence charSequence, int i2, int i7, Paint.FontMetricsInt fontMetricsInt) {
        Paint.FontMetricsInt fontMetricsInt2 = this.f6022a;
        paint.getFontMetricsInt(fontMetricsInt2);
        u uVar = this.f6023b;
        this.f6025d = (Math.abs(fontMetricsInt2.descent - fontMetricsInt2.ascent) * 1.0f) / uVar.getHeight();
        uVar.getHeight();
        short width = (short) (uVar.getWidth() * this.f6025d);
        this.f6024c = width;
        if (fontMetricsInt != null) {
            fontMetricsInt.ascent = fontMetricsInt2.ascent;
            fontMetricsInt.descent = fontMetricsInt2.descent;
            fontMetricsInt.top = fontMetricsInt2.top;
            fontMetricsInt.bottom = fontMetricsInt2.bottom;
        }
        return width;
    }
}
