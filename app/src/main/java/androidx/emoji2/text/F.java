package androidx.emoji2.text;

import android.annotation.SuppressLint;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.text.TextPaint;

/* loaded from: classes.dex */
public final class F extends w {

    /* renamed from: e, reason: collision with root package name */
    public static TextPaint f5981e;

    public F(u uVar) {
        super(uVar);
    }

    @Override // android.text.style.ReplacementSpan
    public void draw(Canvas canvas, @SuppressLint({"UnknownNullness"}) CharSequence charSequence, int i2, int i7, float f3, int i8, int i9, int i10, Paint paint) {
        Canvas canvas2;
        float f7;
        if (p.get().isEmojiSpanIndicatorEnabled()) {
            float f8 = i8;
            float f9 = f3 + this.f6024c;
            float f10 = i10;
            if (f5981e == null) {
                TextPaint textPaint = new TextPaint();
                f5981e = textPaint;
                textPaint.setColor(p.get().getEmojiSpanIndicatorColor());
                f5981e.setStyle(Paint.Style.FILL);
            }
            canvas2 = canvas;
            f7 = f3;
            canvas2.drawRect(f7, f8, f9, f10, f5981e);
        } else {
            canvas2 = canvas;
            f7 = f3;
        }
        getMetadata().draw(canvas2, f7, i9, paint);
    }
}
