package l;

import android.text.Layout;
import android.text.StaticLayout;
import android.text.TextPaint;
import android.widget.TextView;
import androidx.media3.common.util.Log;

/* loaded from: classes.dex */
public abstract class E0 {
    public static StaticLayout a(CharSequence charSequence, Layout.Alignment alignment, int i2, int i7, TextView textView, TextPaint textPaint, H0 h02) {
        StaticLayout.Builder obtain = StaticLayout.Builder.obtain(charSequence, 0, charSequence.length(), textPaint, i2);
        StaticLayout.Builder hyphenationFrequency = obtain.setAlignment(alignment).setLineSpacing(textView.getLineSpacingExtra(), textView.getLineSpacingMultiplier()).setIncludePad(textView.getIncludeFontPadding()).setBreakStrategy(textView.getBreakStrategy()).setHyphenationFrequency(textView.getHyphenationFrequency());
        if (i7 == -1) {
            i7 = Log.LOG_LEVEL_OFF;
        }
        hyphenationFrequency.setMaxLines(i7);
        try {
            h02.a(obtain, textView);
        } catch (ClassCastException unused) {
            android.util.Log.w("ACTVAutoSizeHelper", "Failed to obtain TextDirectionHeuristic, auto size may be incorrect");
        }
        return obtain.build();
    }
}
