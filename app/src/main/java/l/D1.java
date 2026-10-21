package l;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.XmlResourceParser;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.util.AttributeSet;
import android.util.Log;
import android.util.TypedValue;
import android.util.Xml;
import androidx.appcompat.resources.R;
import java.lang.ref.WeakReference;
import java.util.WeakHashMap;
import org.xmlpull.v1.XmlPullParserException;

/* loaded from: classes.dex */
public final class D1 {

    /* renamed from: i, reason: collision with root package name */
    public static D1 f17665i;

    /* renamed from: a, reason: collision with root package name */
    public WeakHashMap f17667a;

    /* renamed from: b, reason: collision with root package name */
    public p.q f17668b;

    /* renamed from: c, reason: collision with root package name */
    public p.r f17669c;

    /* renamed from: d, reason: collision with root package name */
    public final WeakHashMap f17670d = new WeakHashMap(0);

    /* renamed from: e, reason: collision with root package name */
    public TypedValue f17671e;

    /* renamed from: f, reason: collision with root package name */
    public boolean f17672f;

    /* renamed from: g, reason: collision with root package name */
    public B1 f17673g;

    /* renamed from: h, reason: collision with root package name */
    public static final PorterDuff.Mode f17664h = PorterDuff.Mode.SRC_IN;

    /* renamed from: j, reason: collision with root package name */
    public static final C1200y1 f17666j = new C1200y1(6);

    public static void g(D1 d12) {
        if (Build.VERSION.SDK_INT < 24) {
            d12.a("vector", new C1());
            d12.a("animated-vector", new C1197x1());
            d12.a("animated-selector", new C1194w1());
            d12.a("drawable", new C1203z1());
        }
    }

    public static synchronized D1 get() {
        D1 d12;
        synchronized (D1.class) {
            try {
                if (f17665i == null) {
                    D1 d13 = new D1();
                    f17665i = d13;
                    g(d13);
                }
                d12 = f17665i;
            } catch (Throwable th) {
                throw th;
            }
        }
        return d12;
    }

    public static synchronized PorterDuffColorFilter getPorterDuffColorFilter(int i2, PorterDuff.Mode mode) {
        PorterDuffColorFilter porterDuffColorFilter;
        synchronized (D1.class) {
            C1200y1 c1200y1 = f17666j;
            c1200y1.getClass();
            int i7 = (31 + i2) * 31;
            porterDuffColorFilter = (PorterDuffColorFilter) c1200y1.get(Integer.valueOf(mode.hashCode() + i7));
            if (porterDuffColorFilter == null) {
                porterDuffColorFilter = new PorterDuffColorFilter(i2, mode);
            }
        }
        return porterDuffColorFilter;
    }

    public final void a(String str, A1 a12) {
        if (this.f17668b == null) {
            this.f17668b = new p.q();
        }
        this.f17668b.put(str, a12);
    }

    public final synchronized void b(Context context, long j7, Drawable drawable) {
        try {
            Drawable.ConstantState constantState = drawable.getConstantState();
            if (constantState != null) {
                p.n nVar = (p.n) this.f17670d.get(context);
                if (nVar == null) {
                    nVar = new p.n();
                    this.f17670d.put(context, nVar);
                }
                nVar.put(j7, new WeakReference(constantState));
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    public final Drawable c(Context context, int i2) {
        if (this.f17671e == null) {
            this.f17671e = new TypedValue();
        }
        TypedValue typedValue = this.f17671e;
        context.getResources().getValue(i2, typedValue, true);
        long j7 = (typedValue.assetCookie << 32) | typedValue.data;
        Drawable d7 = d(context, j7);
        if (d7 != null) {
            return d7;
        }
        B1 b12 = this.f17673g;
        Drawable createDrawableFor = b12 == null ? null : ((C1126H) b12).createDrawableFor(this, context, i2);
        if (createDrawableFor != null) {
            createDrawableFor.setChangingConfigurations(typedValue.changingConfigurations);
            b(context, j7, createDrawableFor);
        }
        return createDrawableFor;
    }

    public final synchronized Drawable d(Context context, long j7) {
        p.n nVar = (p.n) this.f17670d.get(context);
        if (nVar == null) {
            return null;
        }
        WeakReference weakReference = (WeakReference) nVar.get(j7);
        if (weakReference != null) {
            Drawable.ConstantState constantState = (Drawable.ConstantState) weakReference.get();
            if (constantState != null) {
                return constantState.newDrawable(context.getResources());
            }
            nVar.remove(j7);
        }
        return null;
    }

    public final synchronized Drawable e(Context context, int i2, boolean z6) {
        Drawable h7;
        try {
            if (!this.f17672f) {
                this.f17672f = true;
                Drawable drawable = getDrawable(context, R.drawable.abc_vector_test);
                if (drawable == null || (!(drawable instanceof y1.v) && !"android.graphics.drawable.VectorDrawable".equals(drawable.getClass().getName()))) {
                    this.f17672f = false;
                    throw new IllegalStateException("This app has been built with an incorrect configuration. Please configure your build for VectorDrawableCompat.");
                }
            }
            h7 = h(context, i2);
            if (h7 == null) {
                h7 = c(context, i2);
            }
            if (h7 == null) {
                h7 = A.h.getDrawable(context, i2);
            }
            if (h7 != null) {
                h7 = i(context, i2, z6, h7);
            }
            if (h7 != null) {
                P0.a(h7);
            }
        } catch (Throwable th) {
            throw th;
        }
        return h7;
    }

    public final synchronized ColorStateList f(Context context, int i2) {
        ColorStateList colorStateList;
        p.r rVar;
        WeakHashMap weakHashMap = this.f17667a;
        ColorStateList colorStateList2 = null;
        colorStateList = (weakHashMap == null || (rVar = (p.r) weakHashMap.get(context)) == null) ? null : (ColorStateList) rVar.get(i2);
        if (colorStateList == null) {
            B1 b12 = this.f17673g;
            if (b12 != null) {
                colorStateList2 = ((C1126H) b12).getTintListForDrawableRes(context, i2);
            }
            if (colorStateList2 != null) {
                if (this.f17667a == null) {
                    this.f17667a = new WeakHashMap();
                }
                p.r rVar2 = (p.r) this.f17667a.get(context);
                if (rVar2 == null) {
                    rVar2 = new p.r();
                    this.f17667a.put(context, rVar2);
                }
                rVar2.append(i2, colorStateList2);
            }
            colorStateList = colorStateList2;
        }
        return colorStateList;
    }

    public synchronized Drawable getDrawable(Context context, int i2) {
        return e(context, i2, false);
    }

    public final Drawable h(Context context, int i2) {
        int next;
        p.q qVar = this.f17668b;
        if (qVar == null || qVar.isEmpty()) {
            return null;
        }
        p.r rVar = this.f17669c;
        if (rVar != null) {
            String str = (String) rVar.get(i2);
            if ("appcompat_skip_skip".equals(str)) {
                return null;
            }
            if (str != null && this.f17668b.get(str) == null) {
                return null;
            }
        } else {
            this.f17669c = new p.r();
        }
        if (this.f17671e == null) {
            this.f17671e = new TypedValue();
        }
        TypedValue typedValue = this.f17671e;
        Resources resources = context.getResources();
        resources.getValue(i2, typedValue, true);
        long j7 = (typedValue.assetCookie << 32) | typedValue.data;
        Drawable d7 = d(context, j7);
        if (d7 != null) {
            return d7;
        }
        CharSequence charSequence = typedValue.string;
        if (charSequence != null && charSequence.toString().endsWith(".xml")) {
            try {
                XmlResourceParser xml = resources.getXml(i2);
                AttributeSet asAttributeSet = Xml.asAttributeSet(xml);
                do {
                    next = xml.next();
                    if (next == 2) {
                        break;
                    }
                } while (next != 1);
                if (next != 2) {
                    throw new XmlPullParserException("No start tag found");
                }
                String name = xml.getName();
                this.f17669c.append(i2, name);
                A1 a12 = (A1) this.f17668b.get(name);
                if (a12 != null) {
                    d7 = a12.createFromXmlInner(context, xml, asAttributeSet, context.getTheme());
                }
                if (d7 != null) {
                    d7.setChangingConfigurations(typedValue.changingConfigurations);
                    b(context, j7, d7);
                }
            } catch (Exception e3) {
                Log.e("ResourceManagerInternal", "Exception while inflating drawable", e3);
            }
        }
        if (d7 == null) {
            this.f17669c.append(i2, "appcompat_skip_skip");
        }
        return d7;
    }

    public final Drawable i(Context context, int i2, boolean z6, Drawable drawable) {
        ColorStateList f3 = f(context, i2);
        if (f3 != null) {
            if (P0.canSafelyMutateDrawable(drawable)) {
                drawable = drawable.mutate();
            }
            Drawable wrap = E.c.wrap(drawable);
            E.c.setTintList(wrap, f3);
            B1 b12 = this.f17673g;
            PorterDuff.Mode tintModeForDrawableRes = b12 != null ? ((C1126H) b12).getTintModeForDrawableRes(i2) : null;
            if (tintModeForDrawableRes != null) {
                E.c.setTintMode(wrap, tintModeForDrawableRes);
            }
            return wrap;
        }
        B1 b13 = this.f17673g;
        if (b13 == null || !((C1126H) b13).tintDrawable(context, i2, drawable)) {
            B1 b14 = this.f17673g;
            if (b14 != null && ((C1126H) b14).tintDrawableUsingColorFilter(context, i2, drawable)) {
                return drawable;
            }
            if (z6) {
                return null;
            }
        }
        return drawable;
    }

    public synchronized void onConfigurationChanged(Context context) {
        p.n nVar = (p.n) this.f17670d.get(context);
        if (nVar != null) {
            nVar.clear();
        }
    }

    public synchronized void setHooks(B1 b12) {
        this.f17673g = b12;
    }
}
