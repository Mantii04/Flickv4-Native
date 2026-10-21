package I3;

import M.AbstractC0181p0;
import android.accessibilityservice.AccessibilityServiceInfo;
import android.animation.TimeInterpolator;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityManager;
import android.view.animation.LinearInterpolator;
import com.google.android.material.R;
import com.google.android.material.behavior.SwipeDismissBehavior;
import com.google.android.material.snackbar.BaseTransientBottomBar$Behavior;
import com.google.android.material.snackbar.SnackbarContentLayout;
import g3.AbstractC0951a;
import h0.C0959b;
import java.util.List;
import r3.AbstractC1595a;
import x3.L;
import y.C1862f;

/* loaded from: classes2.dex */
public abstract class t {

    /* renamed from: a, reason: collision with root package name */
    public final int f1354a;

    /* renamed from: b, reason: collision with root package name */
    public final int f1355b;

    /* renamed from: c, reason: collision with root package name */
    public final int f1356c;

    /* renamed from: d, reason: collision with root package name */
    public final TimeInterpolator f1357d;

    /* renamed from: e, reason: collision with root package name */
    public final TimeInterpolator f1358e;

    /* renamed from: f, reason: collision with root package name */
    public final TimeInterpolator f1359f;

    /* renamed from: g, reason: collision with root package name */
    public final ViewGroup f1360g;

    /* renamed from: h, reason: collision with root package name */
    public final Context f1361h;

    /* renamed from: i, reason: collision with root package name */
    public final s f1362i;

    /* renamed from: j, reason: collision with root package name */
    public final u f1363j;

    /* renamed from: k, reason: collision with root package name */
    public int f1364k;

    /* renamed from: m, reason: collision with root package name */
    public int f1366m;

    /* renamed from: n, reason: collision with root package name */
    public int f1367n;

    /* renamed from: o, reason: collision with root package name */
    public int f1368o;

    /* renamed from: p, reason: collision with root package name */
    public int f1369p;

    /* renamed from: q, reason: collision with root package name */
    public int f1370q;

    /* renamed from: r, reason: collision with root package name */
    public int f1371r;

    /* renamed from: s, reason: collision with root package name */
    public boolean f1372s;

    /* renamed from: t, reason: collision with root package name */
    public final AccessibilityManager f1373t;

    /* renamed from: v, reason: collision with root package name */
    public static final C0959b f1349v = AbstractC0951a.f16461b;

    /* renamed from: w, reason: collision with root package name */
    public static final LinearInterpolator f1350w = AbstractC0951a.f16460a;

    /* renamed from: x, reason: collision with root package name */
    public static final h0.c f1351x = AbstractC0951a.f16463d;

    /* renamed from: z, reason: collision with root package name */
    public static final int[] f1353z = {R.attr.snackbarStyle};

    /* renamed from: A, reason: collision with root package name */
    public static final String f1348A = t.class.getSimpleName();

    /* renamed from: y, reason: collision with root package name */
    public static final Handler f1352y = new Handler(Looper.getMainLooper(), new h());

    /* renamed from: l, reason: collision with root package name */
    public final i f1365l = new i(this);

    /* renamed from: u, reason: collision with root package name */
    public final l f1374u = new l(this);

    public t(Context context, ViewGroup viewGroup, View view, u uVar) {
        if (viewGroup == null) {
            throw new IllegalArgumentException("Transient bottom bar must have non-null parent");
        }
        if (view == null) {
            throw new IllegalArgumentException("Transient bottom bar must have non-null content");
        }
        if (uVar == null) {
            throw new IllegalArgumentException("Transient bottom bar must have non-null callback");
        }
        this.f1360g = viewGroup;
        this.f1363j = uVar;
        this.f1361h = context;
        L.checkAppCompatTheme(context);
        s sVar = (s) LayoutInflater.from(context).inflate(getSnackbarBaseLayoutResId(), viewGroup, false);
        this.f1362i = sVar;
        sVar.setBaseTransientBottomBar(this);
        if (view instanceof SnackbarContentLayout) {
            SnackbarContentLayout snackbarContentLayout = (SnackbarContentLayout) view;
            float actionTextColorAlpha = sVar.getActionTextColorAlpha();
            if (actionTextColorAlpha != 1.0f) {
                snackbarContentLayout.f12809e.setTextColor(AbstractC1595a.layer(AbstractC1595a.getColor(snackbarContentLayout, R.attr.colorSurface), snackbarContentLayout.f12809e.getCurrentTextColor(), actionTextColorAlpha));
            }
            snackbarContentLayout.setMaxInlineActionWidth(sVar.getMaxInlineActionWidth());
        }
        sVar.addView(view);
        AbstractC0181p0.setAccessibilityLiveRegion(sVar, 1);
        AbstractC0181p0.setImportantForAccessibility(sVar, 1);
        AbstractC0181p0.setFitsSystemWindows(sVar, true);
        AbstractC0181p0.setOnApplyWindowInsetsListener(sVar, new j(this));
        AbstractC0181p0.setAccessibilityDelegate(sVar, new k(this));
        this.f1373t = (AccessibilityManager) context.getSystemService("accessibility");
        this.f1356c = z3.k.resolveThemeDuration(context, R.attr.motionDurationLong2, 250);
        this.f1354a = z3.k.resolveThemeDuration(context, R.attr.motionDurationLong2, 150);
        this.f1355b = z3.k.resolveThemeDuration(context, R.attr.motionDurationMedium1, 75);
        this.f1357d = z3.k.resolveThemeInterpolator(context, R.attr.motionEasingEmphasizedInterpolator, f1350w);
        this.f1359f = z3.k.resolveThemeInterpolator(context, R.attr.motionEasingEmphasizedInterpolator, f1351x);
        this.f1358e = z3.k.resolveThemeInterpolator(context, R.attr.motionEasingEmphasizedInterpolator, f1349v);
    }

    public final void a() {
        A.b().onDismissed(this.f1374u);
        s sVar = this.f1362i;
        ViewParent parent = sVar.getParent();
        if (parent instanceof ViewGroup) {
            ((ViewGroup) parent).removeView(sVar);
        }
    }

    public final void b() {
        List<AccessibilityServiceInfo> enabledAccessibilityServiceList;
        boolean z6 = true;
        AccessibilityManager accessibilityManager = this.f1373t;
        if (accessibilityManager != null && ((enabledAccessibilityServiceList = accessibilityManager.getEnabledAccessibilityServiceList(1)) == null || !enabledAccessibilityServiceList.isEmpty())) {
            z6 = false;
        }
        s sVar = this.f1362i;
        if (z6) {
            sVar.post(new o(this));
            return;
        }
        if (sVar.getParent() != null) {
            sVar.setVisibility(0);
        }
        A.b().onShown(this.f1374u);
    }

    public final void c() {
        s sVar = this.f1362i;
        ViewGroup.LayoutParams layoutParams = sVar.getLayoutParams();
        boolean z6 = layoutParams instanceof ViewGroup.MarginLayoutParams;
        String str = f1348A;
        if (!z6) {
            Log.w(str, "Unable to update margins because layout params are not MarginLayoutParams");
            return;
        }
        if (sVar.f1346s == null) {
            Log.w(str, "Unable to update margins because original view margins are not set");
            return;
        }
        if (sVar.getParent() == null) {
            return;
        }
        int i2 = getAnchorView() != null ? this.f1369p : this.f1366m;
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) layoutParams;
        Rect rect = sVar.f1346s;
        int i7 = rect.bottom + i2;
        int i8 = rect.left + this.f1367n;
        int i9 = rect.right + this.f1368o;
        int i10 = rect.top;
        boolean z7 = (marginLayoutParams.bottomMargin == i7 && marginLayoutParams.leftMargin == i8 && marginLayoutParams.rightMargin == i9 && marginLayoutParams.topMargin == i10) ? false : true;
        if (z7) {
            marginLayoutParams.bottomMargin = i7;
            marginLayoutParams.leftMargin = i8;
            marginLayoutParams.rightMargin = i9;
            marginLayoutParams.topMargin = i10;
            sVar.requestLayout();
        }
        if ((z7 || this.f1371r != this.f1370q) && Build.VERSION.SDK_INT >= 29 && this.f1370q > 0) {
            ViewGroup.LayoutParams layoutParams2 = sVar.getLayoutParams();
            if ((layoutParams2 instanceof C1862f) && (((C1862f) layoutParams2).getBehavior() instanceof SwipeDismissBehavior)) {
                i iVar = this.f1365l;
                sVar.removeCallbacks(iVar);
                sVar.post(iVar);
            }
        }
    }

    public void dismiss() {
        dispatchDismiss(3);
    }

    public void dispatchDismiss(int i2) {
        A.b().dismiss(this.f1374u, i2);
    }

    public View getAnchorView() {
        return null;
    }

    public int getDuration() {
        return this.f1364k;
    }

    public SwipeDismissBehavior<? extends View> getNewBehavior() {
        return new BaseTransientBottomBar$Behavior();
    }

    public int getSnackbarBaseLayoutResId() {
        return hasSnackbarStyleAttr() ? R.layout.mtrl_layout_snackbar : R.layout.design_layout_snackbar;
    }

    public boolean hasSnackbarStyleAttr() {
        TypedArray obtainStyledAttributes = this.f1361h.obtainStyledAttributes(f1353z);
        int resourceId = obtainStyledAttributes.getResourceId(0, -1);
        obtainStyledAttributes.recycle();
        return resourceId != -1;
    }

    public boolean isShownOrQueued() {
        return A.b().isCurrentOrNext(this.f1374u);
    }

    public t setDuration(int i2) {
        this.f1364k = i2;
        return this;
    }

    public void show() {
        A.b().show(getDuration(), this.f1374u);
    }
}
