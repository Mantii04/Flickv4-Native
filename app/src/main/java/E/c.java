package E;

import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.ColorFilter;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import java.io.IOException;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

/* loaded from: classes.dex */
public abstract class c {
    public static void applyTheme(Drawable drawable, Resources.Theme theme) {
        a.a(drawable, theme);
    }

    public static boolean canApplyTheme(Drawable drawable) {
        return a.b(drawable);
    }

    public static void clearColorFilter(Drawable drawable) {
        drawable.clearColorFilter();
    }

    public static int getAlpha(Drawable drawable) {
        return drawable.getAlpha();
    }

    public static ColorFilter getColorFilter(Drawable drawable) {
        return a.c(drawable);
    }

    public static int getLayoutDirection(Drawable drawable) {
        return b.a(drawable);
    }

    public static void inflate(Drawable drawable, Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet, Resources.Theme theme) throws XmlPullParserException, IOException {
        a.d(drawable, resources, xmlPullParser, attributeSet, theme);
    }

    public static boolean isAutoMirrored(Drawable drawable) {
        return drawable.isAutoMirrored();
    }

    @Deprecated
    public static void jumpToCurrentState(Drawable drawable) {
        drawable.jumpToCurrentState();
    }

    public static void setAutoMirrored(Drawable drawable, boolean z6) {
        drawable.setAutoMirrored(z6);
    }

    public static void setHotspot(Drawable drawable, float f3, float f7) {
        a.e(drawable, f3, f7);
    }

    public static void setHotspotBounds(Drawable drawable, int i2, int i7, int i8, int i9) {
        a.f(drawable, i2, i7, i8, i9);
    }

    public static boolean setLayoutDirection(Drawable drawable, int i2) {
        return b.b(drawable, i2);
    }

    public static void setTint(Drawable drawable, int i2) {
        a.g(drawable, i2);
    }

    public static void setTintList(Drawable drawable, ColorStateList colorStateList) {
        a.h(drawable, colorStateList);
    }

    public static void setTintMode(Drawable drawable, PorterDuff.Mode mode) {
        a.i(drawable, mode);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static <T extends Drawable> T unwrap(Drawable drawable) {
        return drawable instanceof h ? (T) ((i) ((h) drawable)).a() : drawable;
    }

    public static Drawable wrap(Drawable drawable) {
        return drawable;
    }
}
