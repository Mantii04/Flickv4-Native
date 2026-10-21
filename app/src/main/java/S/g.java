package S;

import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.widget.CompoundButton;

/* loaded from: classes.dex */
public abstract class g {
    public static Drawable getButtonDrawable(CompoundButton compoundButton) {
        return f.a(compoundButton);
    }

    public static ColorStateList getButtonTintList(CompoundButton compoundButton) {
        return e.a(compoundButton);
    }

    public static PorterDuff.Mode getButtonTintMode(CompoundButton compoundButton) {
        return e.b(compoundButton);
    }

    public static void setButtonTintList(CompoundButton compoundButton, ColorStateList colorStateList) {
        e.c(compoundButton, colorStateList);
    }

    public static void setButtonTintMode(CompoundButton compoundButton, PorterDuff.Mode mode) {
        e.d(compoundButton, mode);
    }
}
