package D;

import android.graphics.Paint;

/* loaded from: classes.dex */
public abstract class e {
    static {
        new ThreadLocal();
    }

    public static boolean hasGlyph(Paint paint, String str) {
        return d.a(paint, str);
    }
}
