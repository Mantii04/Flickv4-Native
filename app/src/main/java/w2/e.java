package w2;

import C.u;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import f.AbstractC0876a;
import j.C1023f;

/* loaded from: classes.dex */
public abstract class e {

    /* renamed from: a, reason: collision with root package name */
    public static volatile boolean f20676a = true;

    public static Drawable a(Context context, Context context2, int i2, Resources.Theme theme) {
        try {
            if (f20676a) {
                return b(context2, i2, theme);
            }
        } catch (Resources.NotFoundException unused) {
        } catch (IllegalStateException e3) {
            if (context.getPackageName().equals(context2.getPackageName())) {
                throw e3;
            }
            return A.h.getDrawable(context2, i2);
        } catch (NoClassDefFoundError unused2) {
            f20676a = false;
        }
        if (theme == null) {
            theme = context2.getTheme();
        }
        return u.getDrawable(context2.getResources(), i2, theme);
    }

    public static Drawable b(Context context, int i2, Resources.Theme theme) {
        if (theme != null) {
            C1023f c1023f = new C1023f(context, theme);
            c1023f.applyOverrideConfiguration(theme.getResources().getConfiguration());
            context = c1023f;
        }
        return AbstractC0876a.getDrawable(context, i2);
    }

    public static Drawable getDrawable(Context context, Context context2, int i2) {
        return a(context, context2, i2, null);
    }

    public static Drawable getDrawable(Context context, int i2, Resources.Theme theme) {
        return a(context, context, i2, theme);
    }
}
