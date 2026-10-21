package l;

import android.content.res.Resources;
import android.widget.ThemedSpinnerAdapter;

/* renamed from: l.e0, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public abstract class AbstractC1140e0 {
    public static void a(ThemedSpinnerAdapter themedSpinnerAdapter, Resources.Theme theme) {
        if (L.c.equals(themedSpinnerAdapter.getDropDownViewTheme(), theme)) {
            return;
        }
        themedSpinnerAdapter.setDropDownViewTheme(theme);
    }
}
