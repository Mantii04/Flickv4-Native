package S1;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.view.View;

/* loaded from: classes.dex */
public abstract class a {
    public static int resolveColor(Context context, int i2) {
        return resolveColor(context, i2, 0);
    }

    public static void setBackgroundCompat(View view, Drawable drawable) {
        view.setBackground(drawable);
    }

    public static int resolveColor(Context context, int i2, int i7) {
        TypedArray obtainStyledAttributes = context.getTheme().obtainStyledAttributes(new int[]{i2});
        try {
            return obtainStyledAttributes.getColor(0, i7);
        } finally {
            obtainStyledAttributes.recycle();
        }
    }
}
