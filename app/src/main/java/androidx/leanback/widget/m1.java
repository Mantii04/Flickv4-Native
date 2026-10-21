package androidx.leanback.widget;

import android.content.Context;
import android.graphics.Paint;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;

/* loaded from: classes.dex */
public final class m1 {

    /* renamed from: a, reason: collision with root package name */
    public int f6868a;

    /* renamed from: b, reason: collision with root package name */
    public boolean f6869b;

    /* renamed from: c, reason: collision with root package name */
    public boolean f6870c;

    /* renamed from: d, reason: collision with root package name */
    public boolean f6871d;

    /* renamed from: e, reason: collision with root package name */
    public boolean f6872e;

    /* renamed from: f, reason: collision with root package name */
    public int f6873f;

    /* renamed from: g, reason: collision with root package name */
    public float f6874g;

    /* renamed from: h, reason: collision with root package name */
    public float f6875h;

    public static void a(Object obj, int i2, float f3) {
        if (obj != null) {
            if (f3 < 0.0f) {
                f3 = 0.0f;
            } else if (f3 > 1.0f) {
                f3 = 1.0f;
            }
            if (i2 != 2) {
                if (i2 != 3) {
                    return;
                }
                i1.setShadowFocusLevel(obj, f3);
            } else {
                t1 t1Var = (t1) obj;
                t1Var.f6911a.setAlpha(1.0f - f3);
                t1Var.f6912b.setAlpha(f3);
            }
        }
    }

    public static void setNoneWrapperOverlayColor(View view, int i2) {
        Drawable foreground = view.getForeground();
        if (foreground instanceof ColorDrawable) {
            ((ColorDrawable) foreground).setColor(i2);
        } else {
            view.setForeground(new ColorDrawable(i2));
        }
    }

    public static void setNoneWrapperShadowFocusLevel(View view, float f3) {
        a(view.getTag(androidx.leanback.R.id.lb_shadow_impl), 3, f3);
    }

    public static boolean supportsDynamicShadow() {
        return true;
    }

    public static boolean supportsForeground() {
        return true;
    }

    public static boolean supportsRoundedCorner() {
        return true;
    }

    public static boolean supportsShadow() {
        return true;
    }

    public j1 createShadowOverlayContainer(Context context) {
        if (!needsWrapper()) {
            throw new IllegalArgumentException();
        }
        int i2 = this.f6868a;
        boolean z6 = this.f6869b;
        float f3 = this.f6874g;
        float f7 = this.f6875h;
        int i7 = this.f6873f;
        j1 j1Var = new j1(context);
        j1Var.f6815m = 1;
        if (j1Var.f6811b) {
            throw new IllegalStateException();
        }
        j1Var.f6811b = true;
        j1Var.f6814j = i7 > 0;
        j1Var.f6815m = i2;
        if (i2 == 2) {
            j1Var.setLayoutMode(1);
            LayoutInflater.from(j1Var.getContext()).inflate(androidx.leanback.R.layout.lb_shadow, (ViewGroup) j1Var, true);
            t1 t1Var = new t1();
            t1Var.f6911a = j1Var.findViewById(androidx.leanback.R.id.lb_shadow_normal);
            t1Var.f6912b = j1Var.findViewById(androidx.leanback.R.id.lb_shadow_focused);
            j1Var.f6812e = t1Var;
        } else if (i2 == 3) {
            j1Var.f6812e = i1.addDynamicShadow(j1Var, f3, f7, i7);
        }
        if (!z6) {
            j1Var.setWillNotDraw(true);
            j1Var.f6816n = null;
            return j1Var;
        }
        j1Var.setWillNotDraw(false);
        j1Var.f6817p = 0;
        Paint paint = new Paint();
        j1Var.f6816n = paint;
        paint.setColor(j1Var.f6817p);
        j1Var.f6816n.setStyle(Paint.Style.FILL);
        return j1Var;
    }

    public int getShadowType() {
        return this.f6868a;
    }

    public boolean needsOverlay() {
        return this.f6869b;
    }

    public boolean needsWrapper() {
        return this.f6872e;
    }

    public void onViewCreated(View view) {
        if (needsWrapper()) {
            return;
        }
        if (!this.f6871d) {
            if (this.f6870c) {
                G0.setClipToRoundedOutline(view, true, this.f6873f);
            }
        } else if (this.f6868a == 3) {
            view.setTag(androidx.leanback.R.id.lb_shadow_impl, i1.addDynamicShadow(view, this.f6874g, this.f6875h, this.f6873f));
        } else if (this.f6870c) {
            G0.setClipToRoundedOutline(view, true, this.f6873f);
        }
    }

    public void prepareParentForShadow(ViewGroup viewGroup) {
        if (this.f6868a == 2) {
            viewGroup.setLayoutMode(1);
        }
    }

    public void setOverlayColor(View view, int i2) {
        if (needsWrapper()) {
            ((j1) view).setOverlayColor(i2);
        } else {
            setNoneWrapperOverlayColor(view, i2);
        }
    }
}
