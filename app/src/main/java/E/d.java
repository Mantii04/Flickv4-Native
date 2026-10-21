package E;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.Icon;
import android.net.Uri;
import android.os.Build;
import android.util.Log;
import androidx.core.graphics.drawable.IconCompat;
import java.io.InputStream;
import java.lang.reflect.InvocationTargetException;

/* loaded from: classes.dex */
public abstract class d {
    public static Uri a(Object obj) {
        if (Build.VERSION.SDK_INT >= 28) {
            return f.d(obj);
        }
        try {
            return (Uri) obj.getClass().getMethod("getUri", new Class[0]).invoke(obj, new Object[0]);
        } catch (IllegalAccessException e3) {
            Log.e("IconCompat", "Unable to get icon uri", e3);
            return null;
        } catch (NoSuchMethodException e7) {
            Log.e("IconCompat", "Unable to get icon uri", e7);
            return null;
        } catch (InvocationTargetException e8) {
            Log.e("IconCompat", "Unable to get icon uri", e8);
            return null;
        }
    }

    public static Drawable b(Icon icon, Context context) {
        return icon.loadDrawable(context);
    }

    public static Icon c(IconCompat iconCompat, Context context) {
        Icon createWithBitmap;
        switch (iconCompat.f5550a) {
            case -1:
                return (Icon) iconCompat.f5551b;
            case 0:
            default:
                throw new IllegalArgumentException("Unknown type");
            case 1:
                createWithBitmap = Icon.createWithBitmap((Bitmap) iconCompat.f5551b);
                break;
            case 2:
                createWithBitmap = Icon.createWithResource(iconCompat.getResPackage(), iconCompat.f5554e);
                break;
            case 3:
                createWithBitmap = Icon.createWithData((byte[]) iconCompat.f5551b, iconCompat.f5554e, iconCompat.f5555f);
                break;
            case 4:
                createWithBitmap = Icon.createWithContentUri((String) iconCompat.f5551b);
                break;
            case 5:
                if (Build.VERSION.SDK_INT < 26) {
                    createWithBitmap = Icon.createWithBitmap(IconCompat.a(false, (Bitmap) iconCompat.f5551b));
                    break;
                } else {
                    createWithBitmap = e.b((Bitmap) iconCompat.f5551b);
                    break;
                }
            case 6:
                int i2 = Build.VERSION.SDK_INT;
                if (i2 >= 30) {
                    createWithBitmap = g.a(iconCompat.getUri());
                    break;
                } else {
                    if (context == null) {
                        throw new IllegalArgumentException("Context is required to resolve the file uri of the icon: " + iconCompat.getUri());
                    }
                    InputStream uriInputStream = iconCompat.getUriInputStream(context);
                    if (uriInputStream == null) {
                        throw new IllegalStateException("Cannot load adaptive icon from uri: " + iconCompat.getUri());
                    }
                    if (i2 < 26) {
                        createWithBitmap = Icon.createWithBitmap(IconCompat.a(false, BitmapFactory.decodeStream(uriInputStream)));
                        break;
                    } else {
                        createWithBitmap = e.b(BitmapFactory.decodeStream(uriInputStream));
                        break;
                    }
                }
        }
        ColorStateList colorStateList = iconCompat.f5556g;
        if (colorStateList != null) {
            createWithBitmap.setTintList(colorStateList);
        }
        PorterDuff.Mode mode = iconCompat.f5557h;
        if (mode != IconCompat.f5549k) {
            createWithBitmap.setTintMode(mode);
        }
        return createWithBitmap;
    }
}
