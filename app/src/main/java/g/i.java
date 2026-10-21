package g;

import android.content.res.Resources;
import android.graphics.Outline;
import android.graphics.drawable.Drawable;

/* loaded from: classes.dex */
public abstract class i {
    public static boolean canApplyTheme(Drawable.ConstantState constantState) {
        return constantState.canApplyTheme();
    }

    public static void getOutline(Drawable drawable, Outline outline) {
        drawable.getOutline(outline);
    }

    public static Resources getResources(Resources.Theme theme) {
        return theme.getResources();
    }
}
