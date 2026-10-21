package M;

import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.os.Build;
import android.util.Log;
import android.view.MenuItem;

/* loaded from: classes.dex */
public abstract class D {
    public static AbstractC0158e getActionProvider(MenuItem menuItem) {
        if (menuItem instanceof F.b) {
            return ((F.b) menuItem).getSupportActionProvider();
        }
        Log.w("MenuItemCompat", "getActionProvider: item does not implement SupportMenuItem; returning null");
        return null;
    }

    public static MenuItem setActionProvider(MenuItem menuItem, AbstractC0158e abstractC0158e) {
        if (menuItem instanceof F.b) {
            return ((F.b) menuItem).setSupportActionProvider(abstractC0158e);
        }
        Log.w("MenuItemCompat", "setActionProvider: item does not implement SupportMenuItem; ignoring");
        return menuItem;
    }

    public static void setAlphabeticShortcut(MenuItem menuItem, char c7, int i2) {
        if (menuItem instanceof F.b) {
            ((F.b) menuItem).setAlphabeticShortcut(c7, i2);
        } else if (Build.VERSION.SDK_INT >= 26) {
            C.g(menuItem, c7, i2);
        }
    }

    public static void setContentDescription(MenuItem menuItem, CharSequence charSequence) {
        if (menuItem instanceof F.b) {
            ((F.b) menuItem).setContentDescription(charSequence);
        } else if (Build.VERSION.SDK_INT >= 26) {
            C.h(menuItem, charSequence);
        }
    }

    public static void setIconTintList(MenuItem menuItem, ColorStateList colorStateList) {
        if (menuItem instanceof F.b) {
            ((F.b) menuItem).setIconTintList(colorStateList);
        } else if (Build.VERSION.SDK_INT >= 26) {
            C.i(menuItem, colorStateList);
        }
    }

    public static void setIconTintMode(MenuItem menuItem, PorterDuff.Mode mode) {
        if (menuItem instanceof F.b) {
            ((F.b) menuItem).setIconTintMode(mode);
        } else if (Build.VERSION.SDK_INT >= 26) {
            C.j(menuItem, mode);
        }
    }

    public static void setNumericShortcut(MenuItem menuItem, char c7, int i2) {
        if (menuItem instanceof F.b) {
            ((F.b) menuItem).setNumericShortcut(c7, i2);
        } else if (Build.VERSION.SDK_INT >= 26) {
            C.k(menuItem, c7, i2);
        }
    }

    public static void setTooltipText(MenuItem menuItem, CharSequence charSequence) {
        if (menuItem instanceof F.b) {
            ((F.b) menuItem).setTooltipText(charSequence);
        } else if (Build.VERSION.SDK_INT >= 26) {
            C.m(menuItem, charSequence);
        }
    }
}
