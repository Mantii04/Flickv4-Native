package l;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.LayerDrawable;
import android.os.Build;
import android.util.Log;

/* loaded from: classes.dex */
public final class I {

    /* renamed from: b, reason: collision with root package name */
    public static final PorterDuff.Mode f17706b = PorterDuff.Mode.SRC_IN;

    /* renamed from: c, reason: collision with root package name */
    public static I f17707c;

    /* renamed from: a, reason: collision with root package name */
    public D1 f17708a;

    public static void a(Drawable drawable, c2 c2Var, int[] iArr) {
        PorterDuff.Mode mode = D1.f17664h;
        int[] state = drawable.getState();
        if (P0.canSafelyMutateDrawable(drawable) && drawable.mutate() != drawable) {
            Log.d("ResourceManagerInternal", "Mutated drawable is not the same instance as the input.");
            return;
        }
        if ((drawable instanceof LayerDrawable) && drawable.isStateful()) {
            drawable.setState(new int[0]);
            drawable.setState(state);
        }
        boolean z6 = c2Var.f17879d;
        if (z6 || c2Var.f17878c) {
            PorterDuffColorFilter porterDuffColorFilter = null;
            ColorStateList colorStateList = z6 ? c2Var.f17876a : null;
            PorterDuff.Mode mode2 = c2Var.f17878c ? c2Var.f17877b : D1.f17664h;
            if (colorStateList != null && mode2 != null) {
                porterDuffColorFilter = D1.getPorterDuffColorFilter(colorStateList.getColorForState(iArr, 0), mode2);
            }
            drawable.setColorFilter(porterDuffColorFilter);
        } else {
            drawable.clearColorFilter();
        }
        if (Build.VERSION.SDK_INT <= 23) {
            drawable.invalidateSelf();
        }
    }

    public static synchronized I get() {
        I i2;
        synchronized (I.class) {
            try {
                if (f17707c == null) {
                    preload();
                }
                i2 = f17707c;
            } catch (Throwable th) {
                throw th;
            }
        }
        return i2;
    }

    public static synchronized PorterDuffColorFilter getPorterDuffColorFilter(int i2, PorterDuff.Mode mode) {
        PorterDuffColorFilter porterDuffColorFilter;
        synchronized (I.class) {
            porterDuffColorFilter = D1.getPorterDuffColorFilter(i2, mode);
        }
        return porterDuffColorFilter;
    }

    public static synchronized void preload() {
        synchronized (I.class) {
            if (f17707c == null) {
                I i2 = new I();
                f17707c = i2;
                i2.f17708a = D1.get();
                f17707c.f17708a.setHooks(new C1126H());
            }
        }
    }

    public synchronized Drawable getDrawable(Context context, int i2) {
        return this.f17708a.getDrawable(context, i2);
    }

    public synchronized void onConfigurationChanged(Context context) {
        this.f17708a.onConfigurationChanged(context);
    }
}
