package l;

import android.widget.TextView;

/* renamed from: l.w0, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public abstract class AbstractC1193w0 {
    public static int a(TextView textView) {
        return textView.getAutoSizeStepGranularity();
    }

    public static void b(TextView textView, int i2, int i7, int i8, int i9) {
        textView.setAutoSizeTextTypeUniformWithConfiguration(i2, i7, i8, i9);
    }

    public static void c(TextView textView, int[] iArr, int i2) {
        textView.setAutoSizeTextTypeUniformWithPresetSizes(iArr, i2);
    }

    public static boolean d(TextView textView, String str) {
        return textView.setFontVariationSettings(str);
    }
}
