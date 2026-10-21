package e;

import M.AbstractC0181p0;
import M.C0;
import android.R;
import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.content.res.Configuration;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.util.TypedValue;
import android.view.ContextThemeWrapper;
import android.view.KeyCharacterMap;
import android.view.KeyEvent;
import android.view.Menu;
import android.view.View;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.DecelerateInterpolator;
import androidx.appcompat.widget.ActionBarContainer;
import androidx.appcompat.widget.ActionBarContextView;
import androidx.appcompat.widget.ActionBarOverlayLayout;
import androidx.appcompat.widget.Toolbar;
import j.AbstractC1020c;
import j.C1018a;
import j.C1031n;
import j.InterfaceC1019b;
import java.util.ArrayList;
import l.InterfaceC1154j;
import l.M0;
import l.r2;

/* loaded from: classes.dex */
public final class x0 extends AbstractC0823b implements InterfaceC1154j {

    /* renamed from: A, reason: collision with root package name */
    public static final AccelerateInterpolator f13880A = new AccelerateInterpolator();

    /* renamed from: B, reason: collision with root package name */
    public static final DecelerateInterpolator f13881B = new DecelerateInterpolator();

    /* renamed from: a, reason: collision with root package name */
    public Context f13882a;

    /* renamed from: b, reason: collision with root package name */
    public Context f13883b;

    /* renamed from: c, reason: collision with root package name */
    public ActionBarOverlayLayout f13884c;

    /* renamed from: d, reason: collision with root package name */
    public ActionBarContainer f13885d;

    /* renamed from: e, reason: collision with root package name */
    public M0 f13886e;

    /* renamed from: f, reason: collision with root package name */
    public ActionBarContextView f13887f;

    /* renamed from: g, reason: collision with root package name */
    public final View f13888g;

    /* renamed from: h, reason: collision with root package name */
    public boolean f13889h;

    /* renamed from: i, reason: collision with root package name */
    public w0 f13890i;

    /* renamed from: j, reason: collision with root package name */
    public w0 f13891j;

    /* renamed from: k, reason: collision with root package name */
    public InterfaceC1019b f13892k;

    /* renamed from: l, reason: collision with root package name */
    public boolean f13893l;

    /* renamed from: m, reason: collision with root package name */
    public final ArrayList f13894m;

    /* renamed from: n, reason: collision with root package name */
    public boolean f13895n;

    /* renamed from: o, reason: collision with root package name */
    public int f13896o;

    /* renamed from: p, reason: collision with root package name */
    public boolean f13897p;

    /* renamed from: q, reason: collision with root package name */
    public boolean f13898q;

    /* renamed from: r, reason: collision with root package name */
    public boolean f13899r;

    /* renamed from: s, reason: collision with root package name */
    public boolean f13900s;

    /* renamed from: t, reason: collision with root package name */
    public boolean f13901t;

    /* renamed from: u, reason: collision with root package name */
    public C1031n f13902u;

    /* renamed from: v, reason: collision with root package name */
    public boolean f13903v;

    /* renamed from: w, reason: collision with root package name */
    public boolean f13904w;

    /* renamed from: x, reason: collision with root package name */
    public final t0 f13905x;

    /* renamed from: y, reason: collision with root package name */
    public final u0 f13906y;

    /* renamed from: z, reason: collision with root package name */
    public final v0 f13907z;

    public x0(Activity activity, boolean z6) {
        new ArrayList();
        this.f13894m = new ArrayList();
        this.f13896o = 0;
        this.f13897p = true;
        this.f13901t = true;
        this.f13905x = new t0(this);
        this.f13906y = new u0(this);
        this.f13907z = new v0(this);
        View decorView = activity.getWindow().getDecorView();
        b(decorView);
        if (z6) {
            return;
        }
        this.f13888g = decorView.findViewById(R.id.content);
    }

    public void animateToMode(boolean z6) {
        C0 c02;
        C0 c03;
        if (z6) {
            if (!this.f13900s) {
                this.f13900s = true;
                ActionBarOverlayLayout actionBarOverlayLayout = this.f13884c;
                if (actionBarOverlayLayout != null) {
                    actionBarOverlayLayout.setShowingForActionMode(true);
                }
                d(false);
            }
        } else if (this.f13900s) {
            this.f13900s = false;
            ActionBarOverlayLayout actionBarOverlayLayout2 = this.f13884c;
            if (actionBarOverlayLayout2 != null) {
                actionBarOverlayLayout2.setShowingForActionMode(false);
            }
            d(false);
        }
        if (!AbstractC0181p0.isLaidOut(this.f13885d)) {
            if (z6) {
                ((r2) this.f13886e).setVisibility(4);
                this.f13887f.setVisibility(0);
                return;
            } else {
                ((r2) this.f13886e).setVisibility(0);
                this.f13887f.setVisibility(8);
                return;
            }
        }
        if (z6) {
            c03 = ((r2) this.f13886e).setupAnimatorToVisibility(4, 100L);
            c02 = this.f13887f.setupAnimatorToVisibility(0, 200L);
        } else {
            c02 = ((r2) this.f13886e).setupAnimatorToVisibility(0, 200L);
            c03 = this.f13887f.setupAnimatorToVisibility(8, 100L);
        }
        C1031n c1031n = new C1031n();
        c1031n.playSequentially(c03, c02);
        c1031n.start();
    }

    public final void b(View view) {
        M0 wrapper;
        ActionBarOverlayLayout actionBarOverlayLayout = (ActionBarOverlayLayout) view.findViewById(androidx.appcompat.R.id.decor_content_parent);
        this.f13884c = actionBarOverlayLayout;
        if (actionBarOverlayLayout != null) {
            actionBarOverlayLayout.setActionBarVisibilityCallback(this);
        }
        KeyEvent.Callback findViewById = view.findViewById(androidx.appcompat.R.id.action_bar);
        if (findViewById instanceof M0) {
            wrapper = (M0) findViewById;
        } else {
            if (!(findViewById instanceof Toolbar)) {
                throw new IllegalStateException("Can't make a decor toolbar out of ".concat(findViewById != null ? findViewById.getClass().getSimpleName() : "null"));
            }
            wrapper = ((Toolbar) findViewById).getWrapper();
        }
        this.f13886e = wrapper;
        this.f13887f = (ActionBarContextView) view.findViewById(androidx.appcompat.R.id.action_context_bar);
        ActionBarContainer actionBarContainer = (ActionBarContainer) view.findViewById(androidx.appcompat.R.id.action_bar_container);
        this.f13885d = actionBarContainer;
        M0 m02 = this.f13886e;
        if (m02 == null || this.f13887f == null || actionBarContainer == null) {
            throw new IllegalStateException(x0.class.getSimpleName().concat(" can only be used with a compatible window decor layout"));
        }
        this.f13882a = ((r2) m02).getContext();
        boolean z6 = (((r2) this.f13886e).getDisplayOptions() & 4) != 0;
        if (z6) {
            this.f13889h = true;
        }
        C1018a c1018a = C1018a.get(this.f13882a);
        setHomeButtonEnabled(c1018a.enableHomeButtonByDefault() || z6);
        c(c1018a.hasEmbeddedTabs());
        TypedArray obtainStyledAttributes = this.f13882a.obtainStyledAttributes(null, androidx.appcompat.R.styleable.ActionBar, androidx.appcompat.R.attr.actionBarStyle, 0);
        if (obtainStyledAttributes.getBoolean(androidx.appcompat.R.styleable.ActionBar_hideOnContentScroll, false)) {
            setHideOnContentScrollEnabled(true);
        }
        int dimensionPixelSize = obtainStyledAttributes.getDimensionPixelSize(androidx.appcompat.R.styleable.ActionBar_elevation, 0);
        if (dimensionPixelSize != 0) {
            setElevation(dimensionPixelSize);
        }
        obtainStyledAttributes.recycle();
    }

    public final void c(boolean z6) {
        this.f13895n = z6;
        if (z6) {
            this.f13885d.setTabContainer(null);
            ((r2) this.f13886e).setEmbeddedTabView(null);
        } else {
            ((r2) this.f13886e).setEmbeddedTabView(null);
            this.f13885d.setTabContainer(null);
        }
        boolean z7 = false;
        boolean z8 = getNavigationMode() == 2;
        ((r2) this.f13886e).setCollapsible(!this.f13895n && z8);
        ActionBarOverlayLayout actionBarOverlayLayout = this.f13884c;
        if (!this.f13895n && z8) {
            z7 = true;
        }
        actionBarOverlayLayout.setHasNonEmbeddedTabs(z7);
    }

    @Override // e.AbstractC0823b
    public boolean collapseActionView() {
        M0 m02 = this.f13886e;
        if (m02 == null || !((r2) m02).hasExpandedActionView()) {
            return false;
        }
        ((r2) this.f13886e).collapseActionView();
        return true;
    }

    public final void d(boolean z6) {
        boolean z7 = this.f13898q;
        boolean z8 = this.f13899r;
        if (!this.f13900s && (z7 || z8)) {
            if (this.f13901t) {
                this.f13901t = false;
                doHide(z6);
                return;
            }
            return;
        }
        if (this.f13901t) {
            return;
        }
        this.f13901t = true;
        doShow(z6);
    }

    @Override // e.AbstractC0823b
    public void dispatchMenuVisibilityChanged(boolean z6) {
        if (z6 == this.f13893l) {
            return;
        }
        this.f13893l = z6;
        ArrayList arrayList = this.f13894m;
        if (arrayList.size() <= 0) {
            return;
        }
        arrayList.get(0).getClass();
        throw new ClassCastException();
    }

    public void doHide(boolean z6) {
        View view;
        C1031n c1031n = this.f13902u;
        if (c1031n != null) {
            c1031n.cancel();
        }
        int i2 = this.f13896o;
        t0 t0Var = this.f13905x;
        if (i2 != 0 || (!this.f13903v && !z6)) {
            t0Var.onAnimationEnd(null);
            return;
        }
        this.f13885d.setAlpha(1.0f);
        this.f13885d.setTransitioning(true);
        C1031n c1031n2 = new C1031n();
        float f3 = -this.f13885d.getHeight();
        if (z6) {
            this.f13885d.getLocationInWindow(new int[]{0, 0});
            f3 -= r6[1];
        }
        C0 translationY = AbstractC0181p0.animate(this.f13885d).translationY(f3);
        translationY.setUpdateListener(this.f13907z);
        c1031n2.play(translationY);
        if (this.f13897p && (view = this.f13888g) != null) {
            c1031n2.play(AbstractC0181p0.animate(view).translationY(f3));
        }
        c1031n2.setInterpolator(f13880A);
        c1031n2.setDuration(250L);
        c1031n2.setListener(t0Var);
        this.f13902u = c1031n2;
        c1031n2.start();
    }

    public void doShow(boolean z6) {
        C1031n c1031n = this.f13902u;
        if (c1031n != null) {
            c1031n.cancel();
        }
        this.f13885d.setVisibility(0);
        int i2 = this.f13896o;
        View view = this.f13888g;
        u0 u0Var = this.f13906y;
        if (i2 == 0 && (this.f13903v || z6)) {
            this.f13885d.setTranslationY(0.0f);
            float f3 = -this.f13885d.getHeight();
            if (z6) {
                this.f13885d.getLocationInWindow(new int[]{0, 0});
                f3 -= r7[1];
            }
            this.f13885d.setTranslationY(f3);
            C1031n c1031n2 = new C1031n();
            C0 translationY = AbstractC0181p0.animate(this.f13885d).translationY(0.0f);
            translationY.setUpdateListener(this.f13907z);
            c1031n2.play(translationY);
            if (this.f13897p && view != null) {
                view.setTranslationY(f3);
                c1031n2.play(AbstractC0181p0.animate(view).translationY(0.0f));
            }
            c1031n2.setInterpolator(f13881B);
            c1031n2.setDuration(250L);
            c1031n2.setListener(u0Var);
            this.f13902u = c1031n2;
            c1031n2.start();
        } else {
            this.f13885d.setAlpha(1.0f);
            this.f13885d.setTranslationY(0.0f);
            if (this.f13897p && view != null) {
                view.setTranslationY(0.0f);
            }
            u0Var.onAnimationEnd(null);
        }
        ActionBarOverlayLayout actionBarOverlayLayout = this.f13884c;
        if (actionBarOverlayLayout != null) {
            AbstractC0181p0.requestApplyInsets(actionBarOverlayLayout);
        }
    }

    public void enableContentAnimations(boolean z6) {
        this.f13897p = z6;
    }

    @Override // e.AbstractC0823b
    public int getDisplayOptions() {
        return ((r2) this.f13886e).getDisplayOptions();
    }

    public int getNavigationMode() {
        return ((r2) this.f13886e).getNavigationMode();
    }

    @Override // e.AbstractC0823b
    public Context getThemedContext() {
        if (this.f13883b == null) {
            TypedValue typedValue = new TypedValue();
            this.f13882a.getTheme().resolveAttribute(androidx.appcompat.R.attr.actionBarWidgetTheme, typedValue, true);
            int i2 = typedValue.resourceId;
            if (i2 != 0) {
                this.f13883b = new ContextThemeWrapper(this.f13882a, i2);
            } else {
                this.f13883b = this.f13882a;
            }
        }
        return this.f13883b;
    }

    @Override // e.AbstractC0823b
    public void hide() {
        if (this.f13898q) {
            return;
        }
        this.f13898q = true;
        d(false);
    }

    public void hideForSystem() {
        if (this.f13899r) {
            return;
        }
        this.f13899r = true;
        d(true);
    }

    @Override // e.AbstractC0823b
    public void onConfigurationChanged(Configuration configuration) {
        c(C1018a.get(this.f13882a).hasEmbeddedTabs());
    }

    public void onContentScrollStarted() {
        C1031n c1031n = this.f13902u;
        if (c1031n != null) {
            c1031n.cancel();
            this.f13902u = null;
        }
    }

    @Override // e.AbstractC0823b
    public boolean onKeyShortcut(int i2, KeyEvent keyEvent) {
        Menu menu;
        w0 w0Var = this.f13890i;
        if (w0Var == null || (menu = w0Var.getMenu()) == null) {
            return false;
        }
        menu.setQwertyMode(KeyCharacterMap.load(keyEvent != null ? keyEvent.getDeviceId() : -1).getKeyboardType() != 1);
        return menu.performShortcut(i2, keyEvent, 0);
    }

    public void onWindowVisibilityChanged(int i2) {
        this.f13896o = i2;
    }

    @Override // e.AbstractC0823b
    public void setDefaultDisplayHomeAsUpEnabled(boolean z6) {
        if (this.f13889h) {
            return;
        }
        setDisplayHomeAsUpEnabled(z6);
    }

    @Override // e.AbstractC0823b
    public void setDisplayHomeAsUpEnabled(boolean z6) {
        setDisplayOptions(z6 ? 4 : 0, 4);
    }

    public void setDisplayOptions(int i2, int i7) {
        int displayOptions = ((r2) this.f13886e).getDisplayOptions();
        if ((i7 & 4) != 0) {
            this.f13889h = true;
        }
        ((r2) this.f13886e).setDisplayOptions((i2 & i7) | ((~i7) & displayOptions));
    }

    public void setElevation(float f3) {
        AbstractC0181p0.setElevation(this.f13885d, f3);
    }

    public void setHideOnContentScrollEnabled(boolean z6) {
        if (z6 && !this.f13884c.isInOverlayMode()) {
            throw new IllegalStateException("Action bar must be in overlay mode (Window.FEATURE_OVERLAY_ACTION_BAR) to enable hide on content scroll");
        }
        this.f13904w = z6;
        this.f13884c.setHideOnContentScrollEnabled(z6);
    }

    @Override // e.AbstractC0823b
    public void setHomeActionContentDescription(int i2) {
        ((r2) this.f13886e).setNavigationContentDescription(i2);
    }

    @Override // e.AbstractC0823b
    public void setHomeAsUpIndicator(Drawable drawable) {
        ((r2) this.f13886e).setNavigationIcon(drawable);
    }

    @Override // e.AbstractC0823b
    public void setHomeButtonEnabled(boolean z6) {
        ((r2) this.f13886e).setHomeButtonEnabled(z6);
    }

    @Override // e.AbstractC0823b
    public void setShowHideAnimationEnabled(boolean z6) {
        C1031n c1031n;
        this.f13903v = z6;
        if (z6 || (c1031n = this.f13902u) == null) {
            return;
        }
        c1031n.cancel();
    }

    @Override // e.AbstractC0823b
    public void setSubtitle(CharSequence charSequence) {
        ((r2) this.f13886e).setSubtitle(charSequence);
    }

    @Override // e.AbstractC0823b
    public void setTitle(CharSequence charSequence) {
        ((r2) this.f13886e).setTitle(charSequence);
    }

    @Override // e.AbstractC0823b
    public void setWindowTitle(CharSequence charSequence) {
        ((r2) this.f13886e).setWindowTitle(charSequence);
    }

    public void showForSystem() {
        if (this.f13899r) {
            this.f13899r = false;
            d(true);
        }
    }

    @Override // e.AbstractC0823b
    public AbstractC1020c startActionMode(InterfaceC1019b interfaceC1019b) {
        w0 w0Var = this.f13890i;
        if (w0Var != null) {
            w0Var.finish();
        }
        this.f13884c.setHideOnContentScrollEnabled(false);
        this.f13887f.killMode();
        w0 w0Var2 = new w0(this, this.f13887f.getContext(), interfaceC1019b);
        if (!w0Var2.dispatchOnCreate()) {
            return null;
        }
        this.f13890i = w0Var2;
        w0Var2.invalidate();
        this.f13887f.initForMode(w0Var2);
        animateToMode(true);
        return w0Var2;
    }

    @Override // e.AbstractC0823b
    public void setHomeAsUpIndicator(int i2) {
        ((r2) this.f13886e).setNavigationIcon(i2);
    }

    public x0(Dialog dialog) {
        new ArrayList();
        this.f13894m = new ArrayList();
        this.f13896o = 0;
        this.f13897p = true;
        this.f13901t = true;
        this.f13905x = new t0(this);
        this.f13906y = new u0(this);
        this.f13907z = new v0(this);
        b(dialog.getWindow().getDecorView());
    }

    public void onContentScrollStopped() {
    }
}
