package K;

import B4.AbstractC0053p;
import android.os.Build;
import android.os.LocaleList;
import android.text.PrecomputedText;
import android.text.TextDirectionHeuristic;
import android.text.TextPaint;
import android.text.TextUtils;

/* loaded from: classes.dex */
public final class h {

    /* renamed from: a, reason: collision with root package name */
    public final TextPaint f1565a;

    /* renamed from: b, reason: collision with root package name */
    public final TextDirectionHeuristic f1566b;

    /* renamed from: c, reason: collision with root package name */
    public final int f1567c;

    /* renamed from: d, reason: collision with root package name */
    public final int f1568d;

    public h(TextPaint textPaint, TextDirectionHeuristic textDirectionHeuristic, int i2, int i7) {
        PrecomputedText.Params.Builder breakStrategy;
        PrecomputedText.Params.Builder hyphenationFrequency;
        PrecomputedText.Params.Builder textDirection;
        if (Build.VERSION.SDK_INT >= 29) {
            breakStrategy = AbstractC0053p.l(textPaint).setBreakStrategy(i2);
            hyphenationFrequency = breakStrategy.setHyphenationFrequency(i7);
            textDirection = hyphenationFrequency.setTextDirection(textDirectionHeuristic);
            textDirection.build();
        }
        this.f1565a = textPaint;
        this.f1566b = textDirectionHeuristic;
        this.f1567c = i2;
        this.f1568d = i7;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof h)) {
            return false;
        }
        h hVar = (h) obj;
        return equalsWithoutTextDirection(hVar) && this.f1566b == hVar.getTextDirection();
    }

    public boolean equalsWithoutTextDirection(h hVar) {
        LocaleList textLocales;
        LocaleList textLocales2;
        boolean equals;
        int i2 = Build.VERSION.SDK_INT;
        if (this.f1567c != hVar.getBreakStrategy() || this.f1568d != hVar.getHyphenationFrequency()) {
            return false;
        }
        TextPaint textPaint = this.f1565a;
        if (textPaint.getTextSize() != hVar.getTextPaint().getTextSize() || textPaint.getTextScaleX() != hVar.getTextPaint().getTextScaleX() || textPaint.getTextSkewX() != hVar.getTextPaint().getTextSkewX() || textPaint.getLetterSpacing() != hVar.getTextPaint().getLetterSpacing() || !TextUtils.equals(textPaint.getFontFeatureSettings(), hVar.getTextPaint().getFontFeatureSettings()) || textPaint.getFlags() != hVar.getTextPaint().getFlags()) {
            return false;
        }
        if (i2 >= 24) {
            textLocales = textPaint.getTextLocales();
            textLocales2 = hVar.getTextPaint().getTextLocales();
            equals = textLocales.equals(textLocales2);
            if (!equals) {
                return false;
            }
        } else if (!textPaint.getTextLocale().equals(hVar.getTextPaint().getTextLocale())) {
            return false;
        }
        return textPaint.getTypeface() == null ? hVar.getTextPaint().getTypeface() == null : textPaint.getTypeface().equals(hVar.getTextPaint().getTypeface());
    }

    public int getBreakStrategy() {
        return this.f1567c;
    }

    public int getHyphenationFrequency() {
        return this.f1568d;
    }

    public TextDirectionHeuristic getTextDirection() {
        return this.f1566b;
    }

    public TextPaint getTextPaint() {
        return this.f1565a;
    }

    public int hashCode() {
        LocaleList textLocales;
        TextDirectionHeuristic textDirectionHeuristic = this.f1566b;
        int i2 = Build.VERSION.SDK_INT;
        int i7 = this.f1568d;
        int i8 = this.f1567c;
        TextPaint textPaint = this.f1565a;
        if (i2 < 24) {
            return L.c.hash(Float.valueOf(textPaint.getTextSize()), Float.valueOf(textPaint.getTextScaleX()), Float.valueOf(textPaint.getTextSkewX()), Float.valueOf(textPaint.getLetterSpacing()), Integer.valueOf(textPaint.getFlags()), textPaint.getTextLocale(), textPaint.getTypeface(), Boolean.valueOf(textPaint.isElegantTextHeight()), textDirectionHeuristic, Integer.valueOf(i8), Integer.valueOf(i7));
        }
        Float valueOf = Float.valueOf(textPaint.getTextSize());
        Float valueOf2 = Float.valueOf(textPaint.getTextScaleX());
        Float valueOf3 = Float.valueOf(textPaint.getTextSkewX());
        Float valueOf4 = Float.valueOf(textPaint.getLetterSpacing());
        Integer valueOf5 = Integer.valueOf(textPaint.getFlags());
        textLocales = textPaint.getTextLocales();
        return L.c.hash(valueOf, valueOf2, valueOf3, valueOf4, valueOf5, textLocales, textPaint.getTypeface(), Boolean.valueOf(textPaint.isElegantTextHeight()), textDirectionHeuristic, Integer.valueOf(i8), Integer.valueOf(i7));
    }

    public String toString() {
        String fontVariationSettings;
        LocaleList textLocales;
        StringBuilder sb = new StringBuilder("{");
        StringBuilder sb2 = new StringBuilder("textSize=");
        TextPaint textPaint = this.f1565a;
        sb2.append(textPaint.getTextSize());
        sb.append(sb2.toString());
        sb.append(", textScaleX=" + textPaint.getTextScaleX());
        sb.append(", textSkewX=" + textPaint.getTextSkewX());
        int i2 = Build.VERSION.SDK_INT;
        sb.append(", letterSpacing=" + textPaint.getLetterSpacing());
        sb.append(", elegantTextHeight=" + textPaint.isElegantTextHeight());
        if (i2 >= 24) {
            StringBuilder sb3 = new StringBuilder(", textLocale=");
            textLocales = textPaint.getTextLocales();
            sb3.append(textLocales);
            sb.append(sb3.toString());
        } else {
            sb.append(", textLocale=" + textPaint.getTextLocale());
        }
        sb.append(", typeface=" + textPaint.getTypeface());
        if (i2 >= 26) {
            StringBuilder sb4 = new StringBuilder(", variationSettings=");
            fontVariationSettings = textPaint.getFontVariationSettings();
            sb4.append(fontVariationSettings);
            sb.append(sb4.toString());
        }
        sb.append(", textDir=" + this.f1566b);
        sb.append(", breakStrategy=" + this.f1567c);
        sb.append(", hyphenationFrequency=" + this.f1568d);
        sb.append("}");
        return sb.toString();
    }

    public h(PrecomputedText.Params params) {
        TextPaint textPaint;
        TextDirectionHeuristic textDirection;
        int breakStrategy;
        int hyphenationFrequency;
        textPaint = params.getTextPaint();
        this.f1565a = textPaint;
        textDirection = params.getTextDirection();
        this.f1566b = textDirection;
        breakStrategy = params.getBreakStrategy();
        this.f1567c = breakStrategy;
        hyphenationFrequency = params.getHyphenationFrequency();
        this.f1568d = hyphenationFrequency;
    }
}
