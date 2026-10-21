package androidx.media3.common.text;

import android.text.Spannable;
import android.text.style.RelativeSizeSpan;
import androidx.media3.common.util.UnstableApi;

@UnstableApi
/* loaded from: classes.dex */
public final class SpanUtil {
    private SpanUtil() {
    }

    public static void addInheritedRelativeSizeSpan(Spannable spannable, float f3, int i2, int i7, int i8) {
        for (RelativeSizeSpan relativeSizeSpan : (RelativeSizeSpan[]) spannable.getSpans(i2, i7, RelativeSizeSpan.class)) {
            if (spannable.getSpanStart(relativeSizeSpan) <= i2 && spannable.getSpanEnd(relativeSizeSpan) >= i7) {
                f3 = relativeSizeSpan.getSizeChange() * f3;
            }
            removeIfStartEndAndFlagsMatch(spannable, relativeSizeSpan, i2, i7, i8);
        }
        spannable.setSpan(new RelativeSizeSpan(f3), i2, i7, i8);
    }

    public static void addOrReplaceSpan(Spannable spannable, Object obj, int i2, int i7, int i8) {
        for (Object obj2 : spannable.getSpans(i2, i7, obj.getClass())) {
            removeIfStartEndAndFlagsMatch(spannable, obj2, i2, i7, i8);
        }
        spannable.setSpan(obj, i2, i7, i8);
    }

    private static void removeIfStartEndAndFlagsMatch(Spannable spannable, Object obj, int i2, int i7, int i8) {
        if (spannable.getSpanStart(obj) == i2 && spannable.getSpanEnd(obj) == i7 && spannable.getSpanFlags(obj) == i8) {
            spannable.removeSpan(obj);
        }
    }
}
