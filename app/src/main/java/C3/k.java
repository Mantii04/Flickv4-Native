package C3;

import android.content.Context;
import android.content.res.Configuration;
import android.graphics.Typeface;
import android.os.Build;

/* loaded from: classes2.dex */
public abstract class k {
    public static Typeface maybeCopyWithFontWeightAdjustment(Context context, Typeface typeface) {
        return maybeCopyWithFontWeightAdjustment(context.getResources().getConfiguration(), typeface);
    }

    public static Typeface maybeCopyWithFontWeightAdjustment(Configuration configuration, Typeface typeface) {
        int i2;
        int i7;
        int weight;
        int i8;
        Typeface create;
        if (Build.VERSION.SDK_INT < 31) {
            return null;
        }
        i2 = configuration.fontWeightAdjustment;
        if (i2 == Integer.MAX_VALUE) {
            return null;
        }
        i7 = configuration.fontWeightAdjustment;
        if (i7 == 0 || typeface == null) {
            return null;
        }
        weight = typeface.getWeight();
        i8 = configuration.fontWeightAdjustment;
        create = Typeface.create(typeface, G.a.clamp(i8 + weight, 1, 1000), typeface.isItalic());
        return create;
    }
}
