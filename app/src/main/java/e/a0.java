package e;

import M.AbstractC0181p0;
import M.AbstractC0191v;
import M.C0;
import android.R;
import android.app.Activity;
import android.app.Dialog;
import android.app.UiModeManager;
import android.content.Context;
import android.content.ContextWrapper;
import android.content.res.Configuration;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.location.LocationManager;
import android.os.Build;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.AndroidRuntimeException;
import android.util.AttributeSet;
import android.util.Log;
import android.util.TypedValue;
import android.view.ContextThemeWrapper;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.Window;
import android.view.WindowManager;
import android.widget.FrameLayout;
import android.widget.PopupWindow;
import android.widget.TextView;
import android.window.OnBackInvokedCallback;
import android.window.OnBackInvokedDispatcher;
import androidx.appcompat.widget.ActionBarContextView;
import androidx.appcompat.widget.ContentFrameLayout;
import androidx.appcompat.widget.Toolbar;
import com.google.firebase.analytics.FirebaseAnalytics;
import j.AbstractC1020c;
import j.C1023f;
import j.C1029l;
import java.lang.ref.WeakReference;
import java.util.LinkedHashSet;
import java.util.Locale;
import k.C1084p;
import k.InterfaceC1082n;
import l.L0;
import l.e2;
import l.x2;
import l.z2;
import z.AbstractC1975v;

/* loaded from: classes.dex */
public final class a0 extends AbstractC0813A implements InterfaceC1082n, LayoutInflater.Factory2 {

    /* renamed from: r0, reason: collision with root package name */
    public static final p.q f13687r0 = new p.q();

    /* renamed from: s0, reason: collision with root package name */
    public static final int[] f13688s0 = {R.attr.windowBackground};

    /* renamed from: t0, reason: collision with root package name */
    public static final boolean f13689t0 = !"robolectric".equals(Build.FINGERPRINT);

    /* renamed from: u0, reason: collision with root package name */
    public static final boolean f13690u0 = true;

    /* renamed from: A, reason: collision with root package name */
    public L0 f13691A;

    /* renamed from: B, reason: collision with root package name */
    public C0821I f13692B;

    /* renamed from: C, reason: collision with root package name */
    public Z f13693C;

    /* renamed from: D, reason: collision with root package name */
    public AbstractC1020c f13694D;

    /* renamed from: E, reason: collision with root package name */
    public ActionBarContextView f13695E;

    /* renamed from: F, reason: collision with root package name */
    public PopupWindow f13696F;

    /* renamed from: G, reason: collision with root package name */
    public RunnableC0818F f13697G;

    /* renamed from: J, reason: collision with root package name */
    public boolean f13700J;

    /* renamed from: K, reason: collision with root package name */
    public ViewGroup f13701K;

    /* renamed from: L, reason: collision with root package name */
    public TextView f13702L;

    /* renamed from: M, reason: collision with root package name */
    public View f13703M;

    /* renamed from: N, reason: collision with root package name */
    public boolean f13704N;

    /* renamed from: O, reason: collision with root package name */
    public boolean f13705O;

    /* renamed from: P, reason: collision with root package name */
    public boolean f13706P;

    /* renamed from: Q, reason: collision with root package name */
    public boolean f13707Q;

    /* renamed from: R, reason: collision with root package name */
    public boolean f13708R;

    /* renamed from: S, reason: collision with root package name */
    public boolean f13709S;

    /* renamed from: T, reason: collision with root package name */
    public boolean f13710T;

    /* renamed from: U, reason: collision with root package name */
    public boolean f13711U;

    /* renamed from: V, reason: collision with root package name */
    public Y[] f13712V;

    /* renamed from: W, reason: collision with root package name */
    public Y f13713W;

    /* renamed from: X, reason: collision with root package name */
    public boolean f13714X;

    /* renamed from: Y, reason: collision with root package name */
    public boolean f13715Y;

    /* renamed from: Z, reason: collision with root package name */
    public boolean f13716Z;

    /* renamed from: a0, reason: collision with root package name */
    public boolean f13717a0;

    /* renamed from: b0, reason: collision with root package name */
    public Configuration f13718b0;

    /* renamed from: c0, reason: collision with root package name */
    public final int f13719c0;

    /* renamed from: d0, reason: collision with root package name */
    public int f13720d0;

    /* renamed from: e0, reason: collision with root package name */
    public int f13721e0;

    /* renamed from: f0, reason: collision with root package name */
    public boolean f13722f0;

    /* renamed from: g0, reason: collision with root package name */
    public W f13723g0;

    /* renamed from: h0, reason: collision with root package name */
    public T f13724h0;

    /* renamed from: i0, reason: collision with root package name */
    public boolean f13725i0;

    /* renamed from: j0, reason: collision with root package name */
    public int f13726j0;

    /* renamed from: l0, reason: collision with root package name */
    public boolean f13728l0;

    /* renamed from: m0, reason: collision with root package name */
    public Rect f13729m0;

    /* renamed from: n0, reason: collision with root package name */
    public Rect f13730n0;

    /* renamed from: o0, reason: collision with root package name */
    public e0 f13731o0;

    /* renamed from: p0, reason: collision with root package name */
    public OnBackInvokedDispatcher f13732p0;

    /* renamed from: q0, reason: collision with root package name */
    public OnBackInvokedCallback f13733q0;

    /* renamed from: s, reason: collision with root package name */
    public final Object f13734s;

    /* renamed from: t, reason: collision with root package name */
    public final Context f13735t;

    /* renamed from: u, reason: collision with root package name */
    public Window f13736u;

    /* renamed from: v, reason: collision with root package name */
    public S f13737v;

    /* renamed from: w, reason: collision with root package name */
    public final InterfaceC0843w f13738w;

    /* renamed from: x, reason: collision with root package name */
    public AbstractC0823b f13739x;

    /* renamed from: y, reason: collision with root package name */
    public C1029l f13740y;

    /* renamed from: z, reason: collision with root package name */
    public CharSequence f13741z;

    /* renamed from: H, reason: collision with root package name */
    public C0 f13698H = null;

    /* renamed from: I, reason: collision with root package name */
    public final boolean f13699I = true;

    /* renamed from: k0, reason: collision with root package name */
    public final RunnableC0814B f13727k0 = new RunnableC0814B(this);

    public a0(Context context, Window window, InterfaceC0843w interfaceC0843w, Object obj) {
        AbstractActivityC0842v abstractActivityC0842v = null;
        this.f13719c0 = -100;
        this.f13735t = context;
        this.f13738w = interfaceC0843w;
        this.f13734s = obj;
        if (obj instanceof Dialog) {
            while (true) {
                if (context != null) {
                    if (!(context instanceof AbstractActivityC0842v)) {
                        if (!(context instanceof ContextWrapper)) {
                            break;
                        } else {
                            context = ((ContextWrapper) context).getBaseContext();
                        }
                    } else {
                        abstractActivityC0842v = (AbstractActivityC0842v) context;
                        break;
                    }
                } else {
                    break;
                }
            }
            if (abstractActivityC0842v != null) {
                this.f13719c0 = abstractActivityC0842v.getDelegate().getLocalNightMode();
            }
        }
        if (this.f13719c0 == -100) {
            p.q qVar = f13687r0;
            Integer num = (Integer) qVar.get(this.f13734s.getClass().getName());
            if (num != null) {
                this.f13719c0 = num.intValue();
                qVar.remove(this.f13734s.getClass().getName());
            }
        }
        if (window != null) {
            d(window);
        }
        l.I.preload();
    }

    public static I.o e(Context context) {
        I.o oVar;
        I.o emptyLocaleList;
        int i2 = Build.VERSION.SDK_INT;
        if (i2 >= 33 || (oVar = AbstractC0813A.f13638f) == null) {
            return null;
        }
        I.o o6 = o(context.getApplicationContext().getResources().getConfiguration());
        int i7 = 0;
        if (i2 < 24) {
            emptyLocaleList = oVar.isEmpty() ? I.o.getEmptyLocaleList() : I.o.forLanguageTags(oVar.get(0).toString());
        } else if (oVar.isEmpty()) {
            emptyLocaleList = I.o.getEmptyLocaleList();
        } else {
            LinkedHashSet linkedHashSet = new LinkedHashSet();
            while (i7 < o6.size() + oVar.size()) {
                Locale locale = i7 < oVar.size() ? oVar.get(i7) : o6.get(i7 - oVar.size());
                if (locale != null) {
                    linkedHashSet.add(locale);
                }
                i7++;
            }
            emptyLocaleList = I.o.create((Locale[]) linkedHashSet.toArray(new Locale[linkedHashSet.size()]));
        }
        return emptyLocaleList.isEmpty() ? o6 : emptyLocaleList;
    }

    public static Configuration i(Context context, int i2, I.o oVar, Configuration configuration, boolean z6) {
        int i7 = i2 != 1 ? i2 != 2 ? z6 ? 0 : context.getApplicationContext().getResources().getConfiguration().uiMode & 48 : 32 : 16;
        Configuration configuration2 = new Configuration();
        configuration2.fontScale = 0.0f;
        if (configuration != null) {
            configuration2.setTo(configuration);
        }
        configuration2.uiMode = i7 | (configuration2.uiMode & (-49));
        if (oVar != null) {
            if (Build.VERSION.SDK_INT >= 24) {
                O.c(configuration2, oVar);
                return configuration2;
            }
            L.b(configuration2, oVar.get(0));
            L.a(configuration2, oVar.get(0));
        }
        return configuration2;
    }

    public static I.o o(Configuration configuration) {
        return Build.VERSION.SDK_INT >= 24 ? O.b(configuration) : I.o.forLanguageTags(M.a(configuration.locale));
    }

    @Override // e.AbstractC0813A
    public void addContentView(View view, ViewGroup.LayoutParams layoutParams) {
        l();
        ((ViewGroup) this.f13701K.findViewById(R.id.content)).addView(view, layoutParams);
        this.f13737v.bypassOnContentChanged(this.f13736u.getCallback());
    }

    public boolean applyDayNight() {
        return c(true, true);
    }

    @Override // e.AbstractC0813A
    public Context attachBaseContext2(Context context) {
        int i2;
        int i7;
        int i8;
        int i9;
        int i10;
        int i11;
        int i12;
        int i13;
        this.f13715Y = true;
        int i14 = this.f13719c0;
        if (i14 == -100) {
            i14 = AbstractC0813A.getDefaultNightMode();
        }
        int q6 = q(context, i14);
        if (AbstractC0813A.a(context) && AbstractC0813A.a(context)) {
            if (!I.b.isAtLeastT()) {
                synchronized (AbstractC0813A.f13644r) {
                    try {
                        I.o oVar = AbstractC0813A.f13638f;
                        if (oVar == null) {
                            if (AbstractC0813A.f13639j == null) {
                                AbstractC0813A.f13639j = I.o.forLanguageTags(V3.r.e(context));
                            }
                            if (!AbstractC0813A.f13639j.isEmpty()) {
                                AbstractC0813A.f13638f = AbstractC0813A.f13639j;
                            }
                        } else if (!oVar.equals(AbstractC0813A.f13639j)) {
                            I.o oVar2 = AbstractC0813A.f13638f;
                            AbstractC0813A.f13639j = oVar2;
                            V3.r.d(context, oVar2.toLanguageTags());
                        }
                    } finally {
                    }
                }
            } else if (!AbstractC0813A.f13641n) {
                AbstractC0813A.f13636b.execute(new RunnableC0844x(context, 0));
            }
        }
        I.o e3 = e(context);
        Configuration configuration = null;
        if (f13690u0 && (context instanceof ContextThemeWrapper)) {
            try {
                ((ContextThemeWrapper) context).applyOverrideConfiguration(i(context, q6, e3, null, false));
                return context;
            } catch (IllegalStateException unused) {
            }
        }
        if (context instanceof C1023f) {
            try {
                ((C1023f) context).applyOverrideConfiguration(i(context, q6, e3, null, false));
                return context;
            } catch (IllegalStateException unused2) {
            }
        }
        if (!f13689t0) {
            return super.attachBaseContext2(context);
        }
        int i15 = Build.VERSION.SDK_INT;
        Configuration configuration2 = new Configuration();
        configuration2.uiMode = -1;
        configuration2.fontScale = 0.0f;
        Configuration configuration3 = context.createConfigurationContext(configuration2).getResources().getConfiguration();
        Configuration configuration4 = context.getResources().getConfiguration();
        configuration3.uiMode = configuration4.uiMode;
        if (!configuration3.equals(configuration4)) {
            configuration = new Configuration();
            configuration.fontScale = 0.0f;
            if (configuration3.diff(configuration4) != 0) {
                float f3 = configuration3.fontScale;
                float f7 = configuration4.fontScale;
                if (f3 != f7) {
                    configuration.fontScale = f7;
                }
                int i16 = configuration3.mcc;
                int i17 = configuration4.mcc;
                if (i16 != i17) {
                    configuration.mcc = i17;
                }
                int i18 = configuration3.mnc;
                int i19 = configuration4.mnc;
                if (i18 != i19) {
                    configuration.mnc = i19;
                }
                if (i15 >= 24) {
                    O.a(configuration3, configuration4, configuration);
                } else if (!L.c.equals(configuration3.locale, configuration4.locale)) {
                    configuration.locale = configuration4.locale;
                }
                int i20 = configuration3.touchscreen;
                int i21 = configuration4.touchscreen;
                if (i20 != i21) {
                    configuration.touchscreen = i21;
                }
                int i22 = configuration3.keyboard;
                int i23 = configuration4.keyboard;
                if (i22 != i23) {
                    configuration.keyboard = i23;
                }
                int i24 = configuration3.keyboardHidden;
                int i25 = configuration4.keyboardHidden;
                if (i24 != i25) {
                    configuration.keyboardHidden = i25;
                }
                int i26 = configuration3.navigation;
                int i27 = configuration4.navigation;
                if (i26 != i27) {
                    configuration.navigation = i27;
                }
                int i28 = configuration3.navigationHidden;
                int i29 = configuration4.navigationHidden;
                if (i28 != i29) {
                    configuration.navigationHidden = i29;
                }
                int i30 = configuration3.orientation;
                int i31 = configuration4.orientation;
                if (i30 != i31) {
                    configuration.orientation = i31;
                }
                int i32 = configuration3.screenLayout & 15;
                int i33 = configuration4.screenLayout & 15;
                if (i32 != i33) {
                    configuration.screenLayout |= i33;
                }
                int i34 = configuration3.screenLayout & 192;
                int i35 = configuration4.screenLayout & 192;
                if (i34 != i35) {
                    configuration.screenLayout |= i35;
                }
                int i36 = configuration3.screenLayout & 48;
                int i37 = configuration4.screenLayout & 48;
                if (i36 != i37) {
                    configuration.screenLayout |= i37;
                }
                int i38 = configuration3.screenLayout & 768;
                int i39 = configuration4.screenLayout & 768;
                if (i38 != i39) {
                    configuration.screenLayout |= i39;
                }
                if (i15 >= 26) {
                    i2 = configuration3.colorMode;
                    int i40 = i2 & 3;
                    i7 = configuration4.colorMode;
                    if (i40 != (i7 & 3)) {
                        i12 = configuration.colorMode;
                        i13 = configuration4.colorMode;
                        configuration.colorMode = i12 | (i13 & 3);
                    }
                    i8 = configuration3.colorMode;
                    int i41 = i8 & 12;
                    i9 = configuration4.colorMode;
                    if (i41 != (i9 & 12)) {
                        i10 = configuration.colorMode;
                        i11 = configuration4.colorMode;
                        configuration.colorMode = i10 | (i11 & 12);
                    }
                }
                int i42 = configuration3.uiMode & 15;
                int i43 = configuration4.uiMode & 15;
                if (i42 != i43) {
                    configuration.uiMode |= i43;
                }
                int i44 = configuration3.uiMode & 48;
                int i45 = configuration4.uiMode & 48;
                if (i44 != i45) {
                    configuration.uiMode |= i45;
                }
                int i46 = configuration3.screenWidthDp;
                int i47 = configuration4.screenWidthDp;
                if (i46 != i47) {
                    configuration.screenWidthDp = i47;
                }
                int i48 = configuration3.screenHeightDp;
                int i49 = configuration4.screenHeightDp;
                if (i48 != i49) {
                    configuration.screenHeightDp = i49;
                }
                int i50 = configuration3.smallestScreenWidthDp;
                int i51 = configuration4.smallestScreenWidthDp;
                if (i50 != i51) {
                    configuration.smallestScreenWidthDp = i51;
                }
                int i52 = configuration3.densityDpi;
                int i53 = configuration4.densityDpi;
                if (i52 != i53) {
                    configuration.densityDpi = i53;
                }
            }
        }
        Configuration i54 = i(context, q6, e3, configuration, true);
        C1023f c1023f = new C1023f(context, androidx.appcompat.R.style.Theme_AppCompat_Empty);
        c1023f.applyOverrideConfiguration(i54);
        try {
            if (context.getTheme() != null) {
                C.t.rebase(c1023f.getTheme());
            }
        } catch (NullPointerException unused3) {
        }
        return super.attachBaseContext2(c1023f);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:107:0x01b6  */
    /* JADX WARN: Removed duplicated region for block: B:138:0x0200  */
    /* JADX WARN: Removed duplicated region for block: B:142:0x0208  */
    /* JADX WARN: Removed duplicated region for block: B:145:0x0212  */
    /* JADX WARN: Removed duplicated region for block: B:147:0x0219 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:150:0x022b  */
    /* JADX WARN: Removed duplicated region for block: B:151:0x022f  */
    /* JADX WARN: Removed duplicated region for block: B:153:0x0239  */
    /* JADX WARN: Removed duplicated region for block: B:156:0x024b  */
    /* JADX WARN: Removed duplicated region for block: B:161:0x025c  */
    /* JADX WARN: Removed duplicated region for block: B:164:0x0241  */
    /* JADX WARN: Removed duplicated region for block: B:171:0x00a5  */
    /* JADX WARN: Removed duplicated region for block: B:172:0x009c  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x0084  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x009a  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x00a2  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x00cf  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x00d7 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:78:0x0186  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean c(boolean r17, boolean r18) {
        /*
            Method dump skipped, instructions count: 612
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: e.a0.c(boolean, boolean):boolean");
    }

    public View createView(View view, String str, Context context, AttributeSet attributeSet) {
        if (this.f13731o0 == null) {
            int[] iArr = androidx.appcompat.R.styleable.AppCompatTheme;
            Context context2 = this.f13735t;
            String string = context2.obtainStyledAttributes(iArr).getString(androidx.appcompat.R.styleable.AppCompatTheme_viewInflaterClass);
            if (string == null) {
                this.f13731o0 = new e0();
            } else {
                try {
                    this.f13731o0 = (e0) context2.getClassLoader().loadClass(string).getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
                } catch (Throwable th) {
                    Log.i("AppCompatDelegate", "Failed to instantiate custom view inflater " + string + ". Falling back to default.", th);
                    this.f13731o0 = new e0();
                }
            }
        }
        return this.f13731o0.createView(view, str, context, attributeSet, false, false, true, x2.shouldBeUsed());
    }

    public final void d(Window window) {
        if (this.f13736u != null) {
            throw new IllegalStateException("AppCompat has already installed itself into the Window");
        }
        Window.Callback callback = window.getCallback();
        if (callback instanceof S) {
            throw new IllegalStateException("AppCompat has already installed itself into the Window");
        }
        S s6 = new S(this, callback);
        this.f13737v = s6;
        window.setCallback(s6);
        e2 obtainStyledAttributes = e2.obtainStyledAttributes(this.f13735t, (AttributeSet) null, f13688s0);
        Drawable drawableIfKnown = obtainStyledAttributes.getDrawableIfKnown(0);
        if (drawableIfKnown != null) {
            window.setBackgroundDrawable(drawableIfKnown);
        }
        obtainStyledAttributes.recycle();
        this.f13736u = window;
        if (Build.VERSION.SDK_INT < 33 || this.f13732p0 != null) {
            return;
        }
        setOnBackInvokedDispatcher(null);
    }

    public final void f(int i2, Y y6, C1084p c1084p) {
        if (c1084p == null) {
            if (y6 == null && i2 >= 0) {
                Y[] yArr = this.f13712V;
                if (i2 < yArr.length) {
                    y6 = yArr[i2];
                }
            }
            if (y6 != null) {
                c1084p = y6.f13676h;
            }
        }
        if ((y6 == null || y6.f13681m) && !this.f13717a0) {
            this.f13737v.bypassOnPanelClosed(this.f13736u.getCallback(), i2, c1084p);
        }
    }

    @Override // e.AbstractC0813A
    public <T extends View> T findViewById(int i2) {
        l();
        return (T) this.f13736u.findViewById(i2);
    }

    public final void g(C1084p c1084p) {
        if (this.f13711U) {
            return;
        }
        this.f13711U = true;
        this.f13691A.dismissPopups();
        Window.Callback callback = this.f13736u.getCallback();
        if (callback != null && !this.f13717a0) {
            callback.onPanelClosed(108, c1084p);
        }
        this.f13711U = false;
    }

    @Override // e.AbstractC0813A
    public Context getContextForDelegate() {
        return this.f13735t;
    }

    @Override // e.AbstractC0813A
    public final InterfaceC0825d getDrawerToggleDelegate() {
        return new C0820H(this);
    }

    @Override // e.AbstractC0813A
    public int getLocalNightMode() {
        return this.f13719c0;
    }

    @Override // e.AbstractC0813A
    public MenuInflater getMenuInflater() {
        if (this.f13740y == null) {
            p();
            AbstractC0823b abstractC0823b = this.f13739x;
            this.f13740y = new C1029l(abstractC0823b != null ? abstractC0823b.getThemedContext() : this.f13735t);
        }
        return this.f13740y;
    }

    public Y getPanelState(int i2, boolean z6) {
        Y[] yArr = this.f13712V;
        if (yArr == null || yArr.length <= i2) {
            Y[] yArr2 = new Y[i2 + 1];
            if (yArr != null) {
                System.arraycopy(yArr, 0, yArr2, 0, yArr.length);
            }
            this.f13712V = yArr2;
            yArr = yArr2;
        }
        Y y6 = yArr[i2];
        if (y6 != null) {
            return y6;
        }
        Y y7 = new Y();
        y7.f13669a = i2;
        y7.f13682n = false;
        yArr[i2] = y7;
        return y7;
    }

    @Override // e.AbstractC0813A
    public AbstractC0823b getSupportActionBar() {
        p();
        return this.f13739x;
    }

    public final void h(Y y6, boolean z6) {
        X x6;
        L0 l02;
        if (z6 && y6.f13669a == 0 && (l02 = this.f13691A) != null && l02.isOverflowMenuShowing()) {
            g(y6.f13676h);
            return;
        }
        WindowManager windowManager = (WindowManager) this.f13735t.getSystemService("window");
        if (windowManager != null && y6.f13681m && (x6 = y6.f13673e) != null) {
            windowManager.removeView(x6);
            if (z6) {
                f(y6.f13669a, y6, null);
            }
        }
        y6.f13679k = false;
        y6.f13680l = false;
        y6.f13681m = false;
        y6.f13674f = null;
        y6.f13682n = true;
        if (this.f13713W == y6) {
            this.f13713W = null;
        }
        if (y6.f13669a == 0) {
            w();
        }
    }

    @Override // e.AbstractC0813A
    public void installViewFactory() {
        LayoutInflater from = LayoutInflater.from(this.f13735t);
        if (from.getFactory() == null) {
            AbstractC0191v.setFactory2(from, this);
        } else {
            if (from.getFactory2() instanceof a0) {
                return;
            }
            Log.i("AppCompatDelegate", "The Activity's LayoutInflater already has a Factory installed so we can not install AppCompat's");
        }
    }

    @Override // e.AbstractC0813A
    public void invalidateOptionsMenu() {
        if (this.f13739x == null || getSupportActionBar().invalidateOptionsMenu()) {
            return;
        }
        this.f13726j0 |= 1;
        if (this.f13725i0) {
            return;
        }
        AbstractC0181p0.postOnAnimation(this.f13736u.getDecorView(), this.f13727k0);
        this.f13725i0 = true;
    }

    public boolean isHandleNativeActionModesEnabled() {
        return this.f13699I;
    }

    /* JADX WARN: Removed duplicated region for block: B:45:0x00d2  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean j(android.view.KeyEvent r7) {
        /*
            Method dump skipped, instructions count: 244
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: e.a0.j(android.view.KeyEvent):boolean");
    }

    public final void k(int i2) {
        Y panelState;
        Y panelState2 = getPanelState(i2, true);
        if (panelState2.f13676h != null) {
            Bundle bundle = new Bundle();
            panelState2.f13676h.saveActionViewStates(bundle);
            if (bundle.size() > 0) {
                panelState2.f13684p = bundle;
            }
            panelState2.f13676h.stopDispatchingItemsChanged();
            panelState2.f13676h.clear();
        }
        panelState2.f13683o = true;
        panelState2.f13682n = true;
        if ((i2 != 108 && i2 != 0) || this.f13691A == null || (panelState = getPanelState(0, false)) == null) {
            return;
        }
        panelState.f13679k = false;
        u(panelState, null);
    }

    public final void l() {
        ViewGroup viewGroup;
        if (this.f13700J) {
            return;
        }
        int[] iArr = androidx.appcompat.R.styleable.AppCompatTheme;
        Context context = this.f13735t;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(iArr);
        if (!obtainStyledAttributes.hasValue(androidx.appcompat.R.styleable.AppCompatTheme_windowActionBar)) {
            obtainStyledAttributes.recycle();
            throw new IllegalStateException("You need to use a Theme.AppCompat theme (or descendant) with this activity.");
        }
        if (obtainStyledAttributes.getBoolean(androidx.appcompat.R.styleable.AppCompatTheme_windowNoTitle, false)) {
            requestWindowFeature(1);
        } else if (obtainStyledAttributes.getBoolean(androidx.appcompat.R.styleable.AppCompatTheme_windowActionBar, false)) {
            requestWindowFeature(108);
        }
        if (obtainStyledAttributes.getBoolean(androidx.appcompat.R.styleable.AppCompatTheme_windowActionBarOverlay, false)) {
            requestWindowFeature(109);
        }
        if (obtainStyledAttributes.getBoolean(androidx.appcompat.R.styleable.AppCompatTheme_windowActionModeOverlay, false)) {
            requestWindowFeature(10);
        }
        this.f13709S = obtainStyledAttributes.getBoolean(androidx.appcompat.R.styleable.AppCompatTheme_android_windowIsFloating, false);
        obtainStyledAttributes.recycle();
        m();
        this.f13736u.getDecorView();
        LayoutInflater from = LayoutInflater.from(context);
        if (this.f13710T) {
            viewGroup = this.f13708R ? (ViewGroup) from.inflate(androidx.appcompat.R.layout.abc_screen_simple_overlay_action_mode, (ViewGroup) null) : (ViewGroup) from.inflate(androidx.appcompat.R.layout.abc_screen_simple, (ViewGroup) null);
        } else if (this.f13709S) {
            viewGroup = (ViewGroup) from.inflate(androidx.appcompat.R.layout.abc_dialog_title_material, (ViewGroup) null);
            this.f13707Q = false;
            this.f13706P = false;
        } else if (this.f13706P) {
            TypedValue typedValue = new TypedValue();
            context.getTheme().resolveAttribute(androidx.appcompat.R.attr.actionBarTheme, typedValue, true);
            viewGroup = (ViewGroup) LayoutInflater.from(typedValue.resourceId != 0 ? new C1023f(context, typedValue.resourceId) : context).inflate(androidx.appcompat.R.layout.abc_screen_toolbar, (ViewGroup) null);
            L0 l02 = (L0) viewGroup.findViewById(androidx.appcompat.R.id.decor_content_parent);
            this.f13691A = l02;
            l02.setWindowCallback(this.f13736u.getCallback());
            if (this.f13707Q) {
                this.f13691A.initFeature(109);
            }
            if (this.f13704N) {
                this.f13691A.initFeature(2);
            }
            if (this.f13705O) {
                this.f13691A.initFeature(5);
            }
        } else {
            viewGroup = null;
        }
        if (viewGroup == null) {
            throw new IllegalArgumentException("AppCompat does not support the current theme features: { windowActionBar: " + this.f13706P + ", windowActionBarOverlay: " + this.f13707Q + ", android:windowIsFloating: " + this.f13709S + ", windowActionModeOverlay: " + this.f13708R + ", windowNoTitle: " + this.f13710T + " }");
        }
        AbstractC0181p0.setOnApplyWindowInsetsListener(viewGroup, new C0815C(this));
        if (this.f13691A == null) {
            this.f13702L = (TextView) viewGroup.findViewById(androidx.appcompat.R.id.title);
        }
        z2.makeOptionalFitsSystemWindows(viewGroup);
        ContentFrameLayout contentFrameLayout = (ContentFrameLayout) viewGroup.findViewById(androidx.appcompat.R.id.action_bar_activity_content);
        ViewGroup viewGroup2 = (ViewGroup) this.f13736u.findViewById(R.id.content);
        if (viewGroup2 != null) {
            while (viewGroup2.getChildCount() > 0) {
                View childAt = viewGroup2.getChildAt(0);
                viewGroup2.removeViewAt(0);
                contentFrameLayout.addView(childAt);
            }
            viewGroup2.setId(-1);
            contentFrameLayout.setId(R.id.content);
            if (viewGroup2 instanceof FrameLayout) {
                ((FrameLayout) viewGroup2).setForeground(null);
            }
        }
        this.f13736u.setContentView(viewGroup);
        contentFrameLayout.setAttachListener(new C0816D(this));
        this.f13701K = viewGroup;
        Object obj = this.f13734s;
        CharSequence title = obj instanceof Activity ? ((Activity) obj).getTitle() : this.f13741z;
        if (!TextUtils.isEmpty(title)) {
            L0 l03 = this.f13691A;
            if (l03 != null) {
                l03.setWindowTitle(title);
            } else {
                AbstractC0823b abstractC0823b = this.f13739x;
                if (abstractC0823b != null) {
                    abstractC0823b.setWindowTitle(title);
                } else {
                    TextView textView = this.f13702L;
                    if (textView != null) {
                        textView.setText(title);
                    }
                }
            }
        }
        ContentFrameLayout contentFrameLayout2 = (ContentFrameLayout) this.f13701K.findViewById(R.id.content);
        View decorView = this.f13736u.getDecorView();
        contentFrameLayout2.setDecorPadding(decorView.getPaddingLeft(), decorView.getPaddingTop(), decorView.getPaddingRight(), decorView.getPaddingBottom());
        TypedArray obtainStyledAttributes2 = context.obtainStyledAttributes(androidx.appcompat.R.styleable.AppCompatTheme);
        obtainStyledAttributes2.getValue(androidx.appcompat.R.styleable.AppCompatTheme_windowMinWidthMajor, contentFrameLayout2.getMinWidthMajor());
        obtainStyledAttributes2.getValue(androidx.appcompat.R.styleable.AppCompatTheme_windowMinWidthMinor, contentFrameLayout2.getMinWidthMinor());
        if (obtainStyledAttributes2.hasValue(androidx.appcompat.R.styleable.AppCompatTheme_windowFixedWidthMajor)) {
            obtainStyledAttributes2.getValue(androidx.appcompat.R.styleable.AppCompatTheme_windowFixedWidthMajor, contentFrameLayout2.getFixedWidthMajor());
        }
        if (obtainStyledAttributes2.hasValue(androidx.appcompat.R.styleable.AppCompatTheme_windowFixedWidthMinor)) {
            obtainStyledAttributes2.getValue(androidx.appcompat.R.styleable.AppCompatTheme_windowFixedWidthMinor, contentFrameLayout2.getFixedWidthMinor());
        }
        if (obtainStyledAttributes2.hasValue(androidx.appcompat.R.styleable.AppCompatTheme_windowFixedHeightMajor)) {
            obtainStyledAttributes2.getValue(androidx.appcompat.R.styleable.AppCompatTheme_windowFixedHeightMajor, contentFrameLayout2.getFixedHeightMajor());
        }
        if (obtainStyledAttributes2.hasValue(androidx.appcompat.R.styleable.AppCompatTheme_windowFixedHeightMinor)) {
            obtainStyledAttributes2.getValue(androidx.appcompat.R.styleable.AppCompatTheme_windowFixedHeightMinor, contentFrameLayout2.getFixedHeightMinor());
        }
        obtainStyledAttributes2.recycle();
        contentFrameLayout2.requestLayout();
        this.f13700J = true;
        Y panelState = getPanelState(0, false);
        if (this.f13717a0) {
            return;
        }
        if (panelState == null || panelState.f13676h == null) {
            this.f13726j0 |= 4096;
            if (this.f13725i0) {
                return;
            }
            AbstractC0181p0.postOnAnimation(this.f13736u.getDecorView(), this.f13727k0);
            this.f13725i0 = true;
        }
    }

    public final void m() {
        if (this.f13736u == null) {
            Object obj = this.f13734s;
            if (obj instanceof Activity) {
                d(((Activity) obj).getWindow());
            }
        }
        if (this.f13736u == null) {
            throw new IllegalStateException("We have not been given a Window");
        }
    }

    public final V n(Context context) {
        if (this.f13723g0 == null) {
            if (s0.f13864d == null) {
                Context applicationContext = context.getApplicationContext();
                LocationManager locationManager = (LocationManager) applicationContext.getSystemService(FirebaseAnalytics.Param.LOCATION);
                s0 s0Var = new s0();
                s0Var.f13867c = new r0();
                s0Var.f13865a = applicationContext;
                s0Var.f13866b = locationManager;
                s0.f13864d = s0Var;
            }
            this.f13723g0 = new W(this, s0.f13864d);
        }
        return this.f13723g0;
    }

    @Override // e.AbstractC0813A
    public void onConfigurationChanged(Configuration configuration) {
        AbstractC0823b supportActionBar;
        if (this.f13706P && this.f13700J && (supportActionBar = getSupportActionBar()) != null) {
            supportActionBar.onConfigurationChanged(configuration);
        }
        l.I i2 = l.I.get();
        Context context = this.f13735t;
        i2.onConfigurationChanged(context);
        this.f13718b0 = new Configuration(context.getResources().getConfiguration());
        c(false, false);
    }

    @Override // e.AbstractC0813A
    public void onCreate(Bundle bundle) {
        String str;
        this.f13715Y = true;
        c(false, true);
        m();
        Object obj = this.f13734s;
        if (obj instanceof Activity) {
            try {
                str = AbstractC1975v.getParentActivityName((Activity) obj);
            } catch (IllegalArgumentException unused) {
                str = null;
            }
            if (str != null) {
                AbstractC0823b abstractC0823b = this.f13739x;
                if (abstractC0823b == null) {
                    this.f13728l0 = true;
                } else {
                    abstractC0823b.setDefaultDisplayHomeAsUpEnabled(true);
                }
            }
            synchronized (AbstractC0813A.f13643q) {
                AbstractC0813A.b(this);
                AbstractC0813A.f13642p.add(new WeakReference(this));
            }
        }
        this.f13718b0 = new Configuration(this.f13735t.getResources().getConfiguration());
        this.f13716Z = true;
    }

    @Override // android.view.LayoutInflater.Factory2
    public final View onCreateView(View view, String str, Context context, AttributeSet attributeSet) {
        return createView(view, str, context, attributeSet);
    }

    /* JADX WARN: Removed duplicated region for block: B:26:0x0060  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x0067  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x006e  */
    /* JADX WARN: Removed duplicated region for block: B:34:? A[RETURN, SYNTHETIC] */
    @Override // e.AbstractC0813A
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void onDestroy() {
        /*
            r3 = this;
            java.lang.Object r0 = r3.f13734s
            boolean r0 = r0 instanceof android.app.Activity
            if (r0 == 0) goto L11
            java.lang.Object r0 = e.AbstractC0813A.f13643q
            monitor-enter(r0)
            e.AbstractC0813A.b(r3)     // Catch: java.lang.Throwable -> Le
            monitor-exit(r0)     // Catch: java.lang.Throwable -> Le
            goto L11
        Le:
            r1 = move-exception
            monitor-exit(r0)     // Catch: java.lang.Throwable -> Le
            throw r1
        L11:
            boolean r0 = r3.f13725i0
            if (r0 == 0) goto L20
            android.view.Window r0 = r3.f13736u
            android.view.View r0 = r0.getDecorView()
            e.B r1 = r3.f13727k0
            r0.removeCallbacks(r1)
        L20:
            r0 = 1
            r3.f13717a0 = r0
            int r0 = r3.f13719c0
            r1 = -100
            if (r0 == r1) goto L4d
            java.lang.Object r0 = r3.f13734s
            boolean r1 = r0 instanceof android.app.Activity
            if (r1 == 0) goto L4d
            android.app.Activity r0 = (android.app.Activity) r0
            boolean r0 = r0.isChangingConfigurations()
            if (r0 == 0) goto L4d
            p.q r0 = e.a0.f13687r0
            java.lang.Object r1 = r3.f13734s
            java.lang.Class r1 = r1.getClass()
            java.lang.String r1 = r1.getName()
            int r2 = r3.f13719c0
            java.lang.Integer r2 = java.lang.Integer.valueOf(r2)
            r0.put(r1, r2)
            goto L5c
        L4d:
            p.q r0 = e.a0.f13687r0
            java.lang.Object r1 = r3.f13734s
            java.lang.Class r1 = r1.getClass()
            java.lang.String r1 = r1.getName()
            r0.remove(r1)
        L5c:
            e.b r0 = r3.f13739x
            if (r0 == 0) goto L63
            r0.a()
        L63:
            e.W r0 = r3.f13723g0
            if (r0 == 0) goto L6a
            r0.a()
        L6a:
            e.T r0 = r3.f13724h0
            if (r0 == 0) goto L71
            r0.a()
        L71:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: e.a0.onDestroy():void");
    }

    @Override // k.InterfaceC1082n
    public boolean onMenuItemSelected(C1084p c1084p, MenuItem menuItem) {
        Y y6;
        Window.Callback callback = this.f13736u.getCallback();
        if (callback != null && !this.f13717a0) {
            C1084p rootMenu = c1084p.getRootMenu();
            Y[] yArr = this.f13712V;
            int length = yArr != null ? yArr.length : 0;
            int i2 = 0;
            while (true) {
                if (i2 < length) {
                    y6 = yArr[i2];
                    if (y6 != null && y6.f13676h == rootMenu) {
                        break;
                    }
                    i2++;
                } else {
                    y6 = null;
                    break;
                }
            }
            if (y6 != null) {
                return callback.onMenuItemSelected(y6.f13669a, menuItem);
            }
        }
        return false;
    }

    @Override // k.InterfaceC1082n
    public void onMenuModeChange(C1084p c1084p) {
        L0 l02 = this.f13691A;
        if (l02 == null || !l02.canShowOverflowMenu() || (ViewConfiguration.get(this.f13735t).hasPermanentMenuKey() && !this.f13691A.isOverflowMenuShowPending())) {
            Y panelState = getPanelState(0, true);
            panelState.f13682n = true;
            h(panelState, false);
            s(panelState, null);
            return;
        }
        Window.Callback callback = this.f13736u.getCallback();
        if (this.f13691A.isOverflowMenuShowing()) {
            this.f13691A.hideOverflowMenu();
            if (this.f13717a0) {
                return;
            }
            callback.onPanelClosed(108, getPanelState(0, true).f13676h);
            return;
        }
        if (callback == null || this.f13717a0) {
            return;
        }
        if (this.f13725i0 && (this.f13726j0 & 1) != 0) {
            View decorView = this.f13736u.getDecorView();
            RunnableC0814B runnableC0814B = this.f13727k0;
            decorView.removeCallbacks(runnableC0814B);
            runnableC0814B.run();
        }
        Y panelState2 = getPanelState(0, true);
        C1084p c1084p2 = panelState2.f13676h;
        if (c1084p2 == null || panelState2.f13683o || !callback.onPreparePanel(0, panelState2.f13675g, c1084p2)) {
            return;
        }
        callback.onMenuOpened(108, panelState2.f13676h);
        this.f13691A.showOverflowMenu();
    }

    @Override // e.AbstractC0813A
    public void onPostCreate(Bundle bundle) {
        l();
    }

    @Override // e.AbstractC0813A
    public void onPostResume() {
        AbstractC0823b supportActionBar = getSupportActionBar();
        if (supportActionBar != null) {
            supportActionBar.setShowHideAnimationEnabled(true);
        }
    }

    @Override // e.AbstractC0813A
    public void onStart() {
        c(true, false);
    }

    @Override // e.AbstractC0813A
    public void onStop() {
        AbstractC0823b supportActionBar = getSupportActionBar();
        if (supportActionBar != null) {
            supportActionBar.setShowHideAnimationEnabled(false);
        }
    }

    public final void p() {
        l();
        if (this.f13706P && this.f13739x == null) {
            Object obj = this.f13734s;
            if (obj instanceof Activity) {
                this.f13739x = new x0((Activity) obj, this.f13707Q);
            } else if (obj instanceof Dialog) {
                this.f13739x = new x0((Dialog) obj);
            }
            AbstractC0823b abstractC0823b = this.f13739x;
            if (abstractC0823b != null) {
                abstractC0823b.setDefaultDisplayHomeAsUpEnabled(this.f13728l0);
            }
        }
    }

    public final int q(Context context, int i2) {
        if (i2 != -100) {
            if (i2 != -1) {
                if (i2 != 0) {
                    if (i2 != 1 && i2 != 2) {
                        if (i2 != 3) {
                            throw new IllegalStateException("Unknown value set for night mode. Please use one of the MODE_NIGHT values from AppCompatDelegate.");
                        }
                        if (this.f13724h0 == null) {
                            this.f13724h0 = new T(this, context);
                        }
                        return this.f13724h0.getApplyableNightMode();
                    }
                } else if (((UiModeManager) context.getApplicationContext().getSystemService("uimode")).getNightMode() != 0) {
                    return n(context).getApplyableNightMode();
                }
            }
            return i2;
        }
        return -1;
    }

    public final boolean r() {
        boolean z6 = this.f13714X;
        this.f13714X = false;
        Y panelState = getPanelState(0, false);
        if (panelState == null || !panelState.f13681m) {
            AbstractC1020c abstractC1020c = this.f13694D;
            if (abstractC1020c != null) {
                abstractC1020c.finish();
                return true;
            }
            AbstractC0823b supportActionBar = getSupportActionBar();
            if (supportActionBar == null || !supportActionBar.collapseActionView()) {
                return false;
            }
        } else if (!z6) {
            h(panelState, true);
            return true;
        }
        return true;
    }

    @Override // e.AbstractC0813A
    public boolean requestWindowFeature(int i2) {
        if (i2 == 8) {
            Log.i("AppCompatDelegate", "You should now use the AppCompatDelegate.FEATURE_SUPPORT_ACTION_BAR id when requesting this feature.");
            i2 = 108;
        } else if (i2 == 9) {
            Log.i("AppCompatDelegate", "You should now use the AppCompatDelegate.FEATURE_SUPPORT_ACTION_BAR_OVERLAY id when requesting this feature.");
            i2 = 109;
        }
        if (this.f13710T && i2 == 108) {
            return false;
        }
        if (this.f13706P && i2 == 1) {
            this.f13706P = false;
        }
        if (i2 == 1) {
            v();
            this.f13710T = true;
            return true;
        }
        if (i2 == 2) {
            v();
            this.f13704N = true;
            return true;
        }
        if (i2 == 5) {
            v();
            this.f13705O = true;
            return true;
        }
        if (i2 == 10) {
            v();
            this.f13708R = true;
            return true;
        }
        if (i2 == 108) {
            v();
            this.f13706P = true;
            return true;
        }
        if (i2 != 109) {
            return this.f13736u.requestFeature(i2);
        }
        v();
        this.f13707Q = true;
        return true;
    }

    /* JADX WARN: Code restructure failed: missing block: B:76:0x0132, code lost:
    
        if (r3 != null) goto L71;
     */
    /* JADX WARN: Removed duplicated region for block: B:34:0x0196  */
    /* JADX WARN: Removed duplicated region for block: B:36:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void s(e.Y r18, android.view.KeyEvent r19) {
        /*
            Method dump skipped, instructions count: 413
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: e.a0.s(e.Y, android.view.KeyEvent):void");
    }

    @Override // e.AbstractC0813A
    public void setContentView(View view) {
        l();
        ViewGroup viewGroup = (ViewGroup) this.f13701K.findViewById(R.id.content);
        viewGroup.removeAllViews();
        viewGroup.addView(view);
        this.f13737v.bypassOnContentChanged(this.f13736u.getCallback());
    }

    @Override // e.AbstractC0813A
    public void setOnBackInvokedDispatcher(OnBackInvokedDispatcher onBackInvokedDispatcher) {
        OnBackInvokedCallback onBackInvokedCallback;
        super.setOnBackInvokedDispatcher(onBackInvokedDispatcher);
        OnBackInvokedDispatcher onBackInvokedDispatcher2 = this.f13732p0;
        if (onBackInvokedDispatcher2 != null && (onBackInvokedCallback = this.f13733q0) != null) {
            Q.c(onBackInvokedDispatcher2, onBackInvokedCallback);
            this.f13733q0 = null;
        }
        if (onBackInvokedDispatcher == null) {
            Object obj = this.f13734s;
            if ((obj instanceof Activity) && ((Activity) obj).getWindow() != null) {
                this.f13732p0 = Q.a((Activity) obj);
                w();
            }
        }
        this.f13732p0 = onBackInvokedDispatcher;
        w();
    }

    @Override // e.AbstractC0813A
    public void setSupportActionBar(Toolbar toolbar) {
        Object obj = this.f13734s;
        if (obj instanceof Activity) {
            AbstractC0823b supportActionBar = getSupportActionBar();
            if (supportActionBar instanceof x0) {
                throw new IllegalStateException("This Activity already has an action bar supplied by the window decor. Do not request Window.FEATURE_SUPPORT_ACTION_BAR and set windowActionBar to false in your theme to use a Toolbar instead.");
            }
            this.f13740y = null;
            if (supportActionBar != null) {
                supportActionBar.a();
            }
            this.f13739x = null;
            if (toolbar != null) {
                p0 p0Var = new p0(toolbar, obj instanceof Activity ? ((Activity) obj).getTitle() : this.f13741z, this.f13737v);
                this.f13739x = p0Var;
                this.f13737v.f13656e = p0Var.f13810c;
                toolbar.setBackInvokedCallbackEnabled(true);
            } else {
                this.f13737v.f13656e = null;
            }
            invalidateOptionsMenu();
        }
    }

    @Override // e.AbstractC0813A
    public void setTheme(int i2) {
        this.f13720d0 = i2;
    }

    @Override // e.AbstractC0813A
    public final void setTitle(CharSequence charSequence) {
        this.f13741z = charSequence;
        L0 l02 = this.f13691A;
        if (l02 != null) {
            l02.setWindowTitle(charSequence);
            return;
        }
        AbstractC0823b abstractC0823b = this.f13739x;
        if (abstractC0823b != null) {
            abstractC0823b.setWindowTitle(charSequence);
            return;
        }
        TextView textView = this.f13702L;
        if (textView != null) {
            textView.setText(charSequence);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:26:0x0044  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x0048  */
    @Override // e.AbstractC0813A
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public j.AbstractC1020c startSupportActionMode(j.InterfaceC1019b r9) {
        /*
            Method dump skipped, instructions count: 431
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: e.a0.startSupportActionMode(j.b):j.c");
    }

    public final boolean t(Y y6, int i2, KeyEvent keyEvent) {
        C1084p c1084p;
        if (keyEvent.isSystem()) {
            return false;
        }
        if ((y6.f13679k || u(y6, keyEvent)) && (c1084p = y6.f13676h) != null) {
            return c1084p.performShortcut(i2, keyEvent, 1);
        }
        return false;
    }

    /* JADX WARN: Code restructure failed: missing block: B:62:0x00cc, code lost:
    
        if (r12.f13676h == null) goto L81;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean u(e.Y r12, android.view.KeyEvent r13) {
        /*
            Method dump skipped, instructions count: 353
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: e.a0.u(e.Y, android.view.KeyEvent):boolean");
    }

    public final void v() {
        if (this.f13700J) {
            throw new AndroidRuntimeException("Window feature must be requested before adding content");
        }
    }

    public final void w() {
        OnBackInvokedCallback onBackInvokedCallback;
        Y panelState;
        if (Build.VERSION.SDK_INT >= 33) {
            boolean z6 = false;
            if (this.f13732p0 != null && (((panelState = getPanelState(0, false)) != null && panelState.f13681m) || this.f13694D != null)) {
                z6 = true;
            }
            if (z6 && this.f13733q0 == null) {
                this.f13733q0 = Q.b(this.f13732p0, this);
            } else {
                if (z6 || (onBackInvokedCallback = this.f13733q0) == null) {
                    return;
                }
                Q.c(this.f13732p0, onBackInvokedCallback);
            }
        }
    }

    @Override // android.view.LayoutInflater.Factory
    public View onCreateView(String str, Context context, AttributeSet attributeSet) {
        return onCreateView(null, str, context, attributeSet);
    }

    @Override // e.AbstractC0813A
    public void setContentView(int i2) {
        l();
        ViewGroup viewGroup = (ViewGroup) this.f13701K.findViewById(R.id.content);
        viewGroup.removeAllViews();
        LayoutInflater.from(this.f13735t).inflate(i2, viewGroup);
        this.f13737v.bypassOnContentChanged(this.f13736u.getCallback());
    }

    @Override // e.AbstractC0813A
    public void setContentView(View view, ViewGroup.LayoutParams layoutParams) {
        l();
        ViewGroup viewGroup = (ViewGroup) this.f13701K.findViewById(R.id.content);
        viewGroup.removeAllViews();
        viewGroup.addView(view, layoutParams);
        this.f13737v.bypassOnContentChanged(this.f13736u.getCallback());
    }

    @Override // e.AbstractC0813A
    public void onSaveInstanceState(Bundle bundle) {
    }
}
