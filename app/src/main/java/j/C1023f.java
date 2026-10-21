package j;

import android.content.Context;
import android.content.ContextWrapper;
import android.content.res.AssetManager;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.view.LayoutInflater;
import androidx.appcompat.R;

/* renamed from: j.f, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C1023f extends ContextWrapper {

    /* renamed from: f, reason: collision with root package name */
    public static Configuration f16870f;

    /* renamed from: a, reason: collision with root package name */
    public int f16871a;

    /* renamed from: b, reason: collision with root package name */
    public Resources.Theme f16872b;

    /* renamed from: c, reason: collision with root package name */
    public LayoutInflater f16873c;

    /* renamed from: d, reason: collision with root package name */
    public Configuration f16874d;

    /* renamed from: e, reason: collision with root package name */
    public Resources f16875e;

    public C1023f(Context context, int i2) {
        super(context);
        this.f16871a = i2;
    }

    public final void a() {
        boolean z6 = this.f16872b == null;
        if (z6) {
            this.f16872b = getResources().newTheme();
            Resources.Theme theme = getBaseContext().getTheme();
            if (theme != null) {
                this.f16872b.setTo(theme);
            }
        }
        onApplyThemeResource(this.f16872b, this.f16871a, z6);
    }

    public void applyOverrideConfiguration(Configuration configuration) {
        if (this.f16875e != null) {
            throw new IllegalStateException("getResources() or getAssets() has already been called");
        }
        if (this.f16874d != null) {
            throw new IllegalStateException("Override configuration has already been set");
        }
        this.f16874d = new Configuration(configuration);
    }

    @Override // android.content.ContextWrapper
    public void attachBaseContext(Context context) {
        super.attachBaseContext(context);
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public AssetManager getAssets() {
        return getResources().getAssets();
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x0022, code lost:
    
        if (r0.equals(j.C1023f.f16870f) != false) goto L15;
     */
    @Override // android.content.ContextWrapper, android.content.Context
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public android.content.res.Resources getResources() {
        /*
            r3 = this;
            android.content.res.Resources r0 = r3.f16875e
            if (r0 != 0) goto L38
            android.content.res.Configuration r0 = r3.f16874d
            if (r0 == 0) goto L32
            int r1 = android.os.Build.VERSION.SDK_INT
            r2 = 26
            if (r1 < r2) goto L25
            android.content.res.Configuration r1 = j.C1023f.f16870f
            if (r1 != 0) goto L1c
            android.content.res.Configuration r1 = new android.content.res.Configuration
            r1.<init>()
            r2 = 0
            r1.fontScale = r2
            j.C1023f.f16870f = r1
        L1c:
            android.content.res.Configuration r1 = j.C1023f.f16870f
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto L25
            goto L32
        L25:
            android.content.res.Configuration r0 = r3.f16874d
            android.content.Context r0 = j.AbstractC1022e.a(r3, r0)
            android.content.res.Resources r0 = r0.getResources()
            r3.f16875e = r0
            goto L38
        L32:
            android.content.res.Resources r0 = super.getResources()
            r3.f16875e = r0
        L38:
            android.content.res.Resources r0 = r3.f16875e
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: j.C1023f.getResources():android.content.res.Resources");
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public Object getSystemService(String str) {
        if (!"layout_inflater".equals(str)) {
            return getBaseContext().getSystemService(str);
        }
        if (this.f16873c == null) {
            this.f16873c = LayoutInflater.from(getBaseContext()).cloneInContext(this);
        }
        return this.f16873c;
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public Resources.Theme getTheme() {
        Resources.Theme theme = this.f16872b;
        if (theme != null) {
            return theme;
        }
        if (this.f16871a == 0) {
            this.f16871a = R.style.Theme_AppCompat_Light;
        }
        a();
        return this.f16872b;
    }

    public int getThemeResId() {
        return this.f16871a;
    }

    public void onApplyThemeResource(Resources.Theme theme, int i2, boolean z6) {
        theme.applyStyle(i2, true);
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public void setTheme(int i2) {
        if (this.f16871a != i2) {
            this.f16871a = i2;
            a();
        }
    }

    public C1023f(Context context, Resources.Theme theme) {
        super(context);
        this.f16872b = theme;
    }
}
