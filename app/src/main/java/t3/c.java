package t3;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.XmlResourceParser;
import android.graphics.Outline;
import android.graphics.Path;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.LayerDrawable;
import android.os.Build;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.Xml;
import java.io.IOException;
import java.util.Arrays;
import org.xmlpull.v1.XmlPullParserException;

/* loaded from: classes2.dex */
public abstract class c {
    public static Drawable compositeTwoLayeredDrawable(Drawable drawable, Drawable drawable2) {
        return compositeTwoLayeredDrawable(drawable, drawable2, -1, -1);
    }

    public static Drawable createTintableMutatedDrawableIfNeeded(Drawable drawable, ColorStateList colorStateList, PorterDuff.Mode mode) {
        if (drawable == null) {
            return null;
        }
        if (colorStateList != null) {
            drawable = E.c.wrap(drawable).mutate();
            if (mode != null) {
                E.c.setTintMode(drawable, mode);
            }
        }
        return drawable;
    }

    public static int[] getCheckedState(int[] iArr) {
        for (int i2 = 0; i2 < iArr.length; i2++) {
            int i7 = iArr[i2];
            if (i7 == 16842912) {
                return iArr;
            }
            if (i7 == 0) {
                int[] iArr2 = (int[]) iArr.clone();
                iArr2[i2] = 16842912;
                return iArr2;
            }
        }
        int[] copyOf = Arrays.copyOf(iArr, iArr.length + 1);
        copyOf[iArr.length] = 16842912;
        return copyOf;
    }

    public static ColorStateList getColorStateListOrNull(Drawable drawable) {
        ColorStateList colorStateList;
        if (drawable instanceof ColorDrawable) {
            return ColorStateList.valueOf(((ColorDrawable) drawable).getColor());
        }
        if (Build.VERSION.SDK_INT < 29 || !androidx.media3.exoplayer.source.mediaparser.a.t(drawable)) {
            return null;
        }
        colorStateList = androidx.media3.exoplayer.source.mediaparser.a.g(drawable).getColorStateList();
        return colorStateList;
    }

    public static AttributeSet parseDrawableXml(Context context, int i2, CharSequence charSequence) {
        int next;
        try {
            XmlResourceParser xml = context.getResources().getXml(i2);
            do {
                next = xml.next();
                if (next == 2) {
                    break;
                }
            } while (next != 1);
            if (next != 2) {
                throw new XmlPullParserException("No start tag found");
            }
            if (TextUtils.equals(xml.getName(), charSequence)) {
                return Xml.asAttributeSet(xml);
            }
            throw new XmlPullParserException("Must have a <" + ((Object) charSequence) + "> start tag");
        } catch (IOException e3) {
            e = e3;
            Resources.NotFoundException notFoundException = new Resources.NotFoundException("Can't load badge resource ID #0x" + Integer.toHexString(i2));
            notFoundException.initCause(e);
            throw notFoundException;
        } catch (XmlPullParserException e7) {
            e = e7;
            Resources.NotFoundException notFoundException2 = new Resources.NotFoundException("Can't load badge resource ID #0x" + Integer.toHexString(i2));
            notFoundException2.initCause(e);
            throw notFoundException2;
        }
    }

    public static void setOutlineToPath(Outline outline, Path path) {
        int i2 = Build.VERSION.SDK_INT;
        if (i2 >= 30) {
            b.a(outline, path);
            return;
        }
        if (i2 >= 29) {
            try {
                AbstractC1654a.a(outline, path);
            } catch (IllegalArgumentException unused) {
            }
        } else if (path.isConvex()) {
            AbstractC1654a.a(outline, path);
        }
    }

    public static void setTint(Drawable drawable, int i2) {
        if (i2 != 0) {
            E.c.setTint(drawable, i2);
        } else {
            E.c.setTintList(drawable, null);
        }
    }

    public static PorterDuffColorFilter updateTintFilter(Drawable drawable, ColorStateList colorStateList, PorterDuff.Mode mode) {
        if (colorStateList == null || mode == null) {
            return null;
        }
        return new PorterDuffColorFilter(colorStateList.getColorForState(drawable.getState(), 0), mode);
    }

    public static Drawable compositeTwoLayeredDrawable(Drawable drawable, Drawable drawable2, int i2, int i7) {
        if (drawable == null) {
            return drawable2;
        }
        if (drawable2 == null) {
            return drawable;
        }
        if (i2 == -1 && (i2 = drawable2.getIntrinsicWidth()) == -1) {
            i2 = drawable.getIntrinsicWidth();
        }
        if (i7 == -1 && (i7 = drawable2.getIntrinsicHeight()) == -1) {
            i7 = drawable.getIntrinsicHeight();
        }
        if (i2 > drawable.getIntrinsicWidth() || i7 > drawable.getIntrinsicHeight()) {
            float f3 = i2 / i7;
            if (f3 >= drawable.getIntrinsicWidth() / drawable.getIntrinsicHeight()) {
                int intrinsicWidth = drawable.getIntrinsicWidth();
                i7 = (int) (intrinsicWidth / f3);
                i2 = intrinsicWidth;
            } else {
                i7 = drawable.getIntrinsicHeight();
                i2 = (int) (f3 * i7);
            }
        }
        LayerDrawable layerDrawable = new LayerDrawable(new Drawable[]{drawable, drawable2});
        layerDrawable.setLayerSize(1, i2, i7);
        layerDrawable.setLayerGravity(1, 17);
        return layerDrawable;
    }
}
