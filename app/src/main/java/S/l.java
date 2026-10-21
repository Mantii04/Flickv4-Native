package S;

import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.widget.ImageView;

/* loaded from: classes.dex */
public abstract class l {
    public static void setImageTintList(ImageView imageView, ColorStateList colorStateList) {
        k.c(imageView, colorStateList);
    }

    public static void setImageTintMode(ImageView imageView, PorterDuff.Mode mode) {
        k.d(imageView, mode);
    }
}
