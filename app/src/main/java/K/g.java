package K;

import android.text.TextDirectionHeuristic;
import android.text.TextDirectionHeuristics;
import android.text.TextPaint;

/* loaded from: classes.dex */
public final class g {

    /* renamed from: a, reason: collision with root package name */
    public final TextPaint f1561a;

    /* renamed from: c, reason: collision with root package name */
    public int f1563c = 1;

    /* renamed from: d, reason: collision with root package name */
    public int f1564d = 1;

    /* renamed from: b, reason: collision with root package name */
    public TextDirectionHeuristic f1562b = TextDirectionHeuristics.FIRSTSTRONG_LTR;

    public g(TextPaint textPaint) {
        this.f1561a = textPaint;
    }

    public h build() {
        return new h(this.f1561a, this.f1562b, this.f1563c, this.f1564d);
    }

    public g setBreakStrategy(int i2) {
        this.f1563c = i2;
        return this;
    }

    public g setHyphenationFrequency(int i2) {
        this.f1564d = i2;
        return this;
    }

    public g setTextDirection(TextDirectionHeuristic textDirectionHeuristic) {
        this.f1562b = textDirectionHeuristic;
        return this;
    }
}
