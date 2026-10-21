package T4;

import java.text.DecimalFormat;

/* loaded from: classes2.dex */
public abstract class m {
    public static String readableFileSize(long j7) {
        if (j7 < 0) {
            j7 *= -1;
        }
        if (j7 <= 0) {
            return "0";
        }
        try {
            double d7 = j7;
            int log10 = (int) (Math.log10(d7) / Math.log10(1024.0d));
            return new DecimalFormat("#,##0.#").format(d7 / Math.pow(1024.0d, log10)) + new String[]{"B", "kB", "MB", "GB", "TB"}[log10];
        } catch (Exception unused) {
            return "N/A";
        }
    }
}
