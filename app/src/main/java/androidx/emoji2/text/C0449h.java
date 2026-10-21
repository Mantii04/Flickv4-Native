package androidx.emoji2.text;

import android.text.TextPaint;

/* renamed from: androidx.emoji2.text.h, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0449h {

    /* renamed from: b, reason: collision with root package name */
    public static final ThreadLocal f5986b = new ThreadLocal();

    /* renamed from: a, reason: collision with root package name */
    public final TextPaint f5987a;

    public C0449h() {
        TextPaint textPaint = new TextPaint();
        this.f5987a = textPaint;
        textPaint.setTextSize(10.0f);
    }

    public boolean hasGlyph(CharSequence charSequence, int i2, int i7, int i8) {
        ThreadLocal threadLocal = f5986b;
        if (threadLocal.get() == null) {
            threadLocal.set(new StringBuilder());
        }
        StringBuilder sb = (StringBuilder) threadLocal.get();
        sb.setLength(0);
        while (i2 < i7) {
            sb.append(charSequence.charAt(i2));
            i2++;
        }
        return D.e.hasGlyph(this.f5987a, sb.toString());
    }
}
