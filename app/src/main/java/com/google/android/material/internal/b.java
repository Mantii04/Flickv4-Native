package com.google.android.material.internal;

import android.text.Layout;
import android.text.StaticLayout;
import android.text.TextDirectionHeuristics;
import android.text.TextPaint;
import android.text.TextUtils;
import androidx.media3.common.util.Log;
import x3.G;

/* loaded from: classes2.dex */
public final class b {

    /* renamed from: a, reason: collision with root package name */
    public CharSequence f12769a;

    /* renamed from: b, reason: collision with root package name */
    public final TextPaint f12770b;

    /* renamed from: c, reason: collision with root package name */
    public final int f12771c;

    /* renamed from: d, reason: collision with root package name */
    public int f12772d;

    /* renamed from: k, reason: collision with root package name */
    public boolean f12779k;

    /* renamed from: e, reason: collision with root package name */
    public Layout.Alignment f12773e = Layout.Alignment.ALIGN_NORMAL;

    /* renamed from: f, reason: collision with root package name */
    public int f12774f = Log.LOG_LEVEL_OFF;

    /* renamed from: g, reason: collision with root package name */
    public float f12775g = 0.0f;

    /* renamed from: h, reason: collision with root package name */
    public float f12776h = 1.0f;

    /* renamed from: i, reason: collision with root package name */
    public int f12777i = 1;

    /* renamed from: j, reason: collision with root package name */
    public boolean f12778j = true;

    /* renamed from: l, reason: collision with root package name */
    public TextUtils.TruncateAt f12780l = null;

    public b(CharSequence charSequence, TextPaint textPaint, int i2) {
        this.f12769a = charSequence;
        this.f12770b = textPaint;
        this.f12771c = i2;
        this.f12772d = charSequence.length();
    }

    public static b obtain(CharSequence charSequence, TextPaint textPaint, int i2) {
        return new b(charSequence, textPaint, i2);
    }

    public StaticLayout build() throws StaticLayoutBuilderCompat$StaticLayoutBuilderCompatException {
        if (this.f12769a == null) {
            this.f12769a = "";
        }
        int max = Math.max(0, this.f12771c);
        CharSequence charSequence = this.f12769a;
        int i2 = this.f12774f;
        TextPaint textPaint = this.f12770b;
        if (i2 == 1) {
            charSequence = TextUtils.ellipsize(charSequence, textPaint, max, this.f12780l);
        }
        int min = Math.min(charSequence.length(), this.f12772d);
        this.f12772d = min;
        if (this.f12779k && this.f12774f == 1) {
            this.f12773e = Layout.Alignment.ALIGN_OPPOSITE;
        }
        StaticLayout.Builder obtain = StaticLayout.Builder.obtain(charSequence, 0, min, textPaint, max);
        obtain.setAlignment(this.f12773e);
        obtain.setIncludePad(this.f12778j);
        obtain.setTextDirection(this.f12779k ? TextDirectionHeuristics.RTL : TextDirectionHeuristics.LTR);
        TextUtils.TruncateAt truncateAt = this.f12780l;
        if (truncateAt != null) {
            obtain.setEllipsize(truncateAt);
        }
        obtain.setMaxLines(this.f12774f);
        float f3 = this.f12775g;
        if (f3 != 0.0f || this.f12776h != 1.0f) {
            obtain.setLineSpacing(f3, this.f12776h);
        }
        if (this.f12774f > 1) {
            obtain.setHyphenationFrequency(this.f12777i);
        }
        return obtain.build();
    }

    public b setAlignment(Layout.Alignment alignment) {
        this.f12773e = alignment;
        return this;
    }

    public b setEllipsize(TextUtils.TruncateAt truncateAt) {
        this.f12780l = truncateAt;
        return this;
    }

    public b setHyphenationFrequency(int i2) {
        this.f12777i = i2;
        return this;
    }

    public b setIncludePad(boolean z6) {
        this.f12778j = z6;
        return this;
    }

    public b setIsRtl(boolean z6) {
        this.f12779k = z6;
        return this;
    }

    public b setLineSpacing(float f3, float f7) {
        this.f12775g = f3;
        this.f12776h = f7;
        return this;
    }

    public b setMaxLines(int i2) {
        this.f12774f = i2;
        return this;
    }

    public b setStaticLayoutBuilderConfigurer(G g7) {
        return this;
    }
}
