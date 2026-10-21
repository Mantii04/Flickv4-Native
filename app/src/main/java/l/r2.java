package l;

import M.AbstractC0181p0;
import android.content.Context;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import androidx.appcompat.R;
import androidx.appcompat.widget.Toolbar;
import f.AbstractC0876a;
import k.C1084p;
import k.InterfaceC1059D;
import k.InterfaceC1082n;

/* loaded from: classes.dex */
public final class r2 implements M0 {

    /* renamed from: a, reason: collision with root package name */
    public final Toolbar f17984a;

    /* renamed from: b, reason: collision with root package name */
    public int f17985b;

    /* renamed from: c, reason: collision with root package name */
    public View f17986c;

    /* renamed from: d, reason: collision with root package name */
    public Drawable f17987d;

    /* renamed from: e, reason: collision with root package name */
    public Drawable f17988e;

    /* renamed from: f, reason: collision with root package name */
    public Drawable f17989f;

    /* renamed from: g, reason: collision with root package name */
    public boolean f17990g;

    /* renamed from: h, reason: collision with root package name */
    public CharSequence f17991h;

    /* renamed from: i, reason: collision with root package name */
    public CharSequence f17992i;

    /* renamed from: j, reason: collision with root package name */
    public CharSequence f17993j;

    /* renamed from: k, reason: collision with root package name */
    public Window.Callback f17994k;

    /* renamed from: l, reason: collision with root package name */
    public boolean f17995l;

    /* renamed from: m, reason: collision with root package name */
    public C1186u f17996m;

    /* renamed from: n, reason: collision with root package name */
    public int f17997n;

    /* renamed from: o, reason: collision with root package name */
    public final Drawable f17998o;

    public r2(Toolbar toolbar, boolean z6) {
        this(toolbar, z6, R.string.abc_action_bar_up_description, R.drawable.abc_ic_ab_back_material);
    }

    public final void a() {
        if ((this.f17985b & 4) != 0) {
            boolean isEmpty = TextUtils.isEmpty(this.f17993j);
            Toolbar toolbar = this.f17984a;
            if (isEmpty) {
                toolbar.setNavigationContentDescription(this.f17997n);
            } else {
                toolbar.setNavigationContentDescription(this.f17993j);
            }
        }
    }

    public final void b() {
        Drawable drawable;
        int i2 = this.f17985b;
        if ((i2 & 2) == 0) {
            drawable = null;
        } else if ((i2 & 1) != 0) {
            drawable = this.f17988e;
            if (drawable == null) {
                drawable = this.f17987d;
            }
        } else {
            drawable = this.f17987d;
        }
        this.f17984a.setLogo(drawable);
    }

    public boolean canShowOverflowMenu() {
        return this.f17984a.canShowOverflowMenu();
    }

    @Override // l.M0
    public void collapseActionView() {
        this.f17984a.collapseActionView();
    }

    @Override // l.M0
    public void dismissPopupMenus() {
        this.f17984a.dismissPopupMenus();
    }

    @Override // l.M0
    public Context getContext() {
        return this.f17984a.getContext();
    }

    @Override // l.M0
    public int getDisplayOptions() {
        return this.f17985b;
    }

    @Override // l.M0
    public Menu getMenu() {
        return this.f17984a.getMenu();
    }

    public int getNavigationMode() {
        return 0;
    }

    public CharSequence getTitle() {
        return this.f17984a.getTitle();
    }

    @Override // l.M0
    public ViewGroup getViewGroup() {
        return this.f17984a;
    }

    @Override // l.M0
    public boolean hasExpandedActionView() {
        return this.f17984a.hasExpandedActionView();
    }

    @Override // l.M0
    public boolean hideOverflowMenu() {
        return this.f17984a.hideOverflowMenu();
    }

    public void initIndeterminateProgress() {
        Log.i("ToolbarWidgetWrapper", "Progress display unsupported");
    }

    public void initProgress() {
        Log.i("ToolbarWidgetWrapper", "Progress display unsupported");
    }

    public boolean isOverflowMenuShowPending() {
        return this.f17984a.isOverflowMenuShowPending();
    }

    @Override // l.M0
    public boolean isOverflowMenuShowing() {
        return this.f17984a.isOverflowMenuShowing();
    }

    public void setCollapsible(boolean z6) {
        this.f17984a.setCollapsible(z6);
    }

    public void setCustomView(View view) {
        View view2 = this.f17986c;
        Toolbar toolbar = this.f17984a;
        if (view2 != null && (this.f17985b & 16) != 0) {
            toolbar.removeView(view2);
        }
        this.f17986c = view;
        if (view == null || (this.f17985b & 16) == 0) {
            return;
        }
        toolbar.addView(view);
    }

    public void setDefaultNavigationContentDescription(int i2) {
        if (i2 == this.f17997n) {
            return;
        }
        this.f17997n = i2;
        if (TextUtils.isEmpty(this.f17984a.getNavigationContentDescription())) {
            setNavigationContentDescription(this.f17997n);
        }
    }

    @Override // l.M0
    public void setDisplayOptions(int i2) {
        View view;
        int i7 = this.f17985b ^ i2;
        this.f17985b = i2;
        if (i7 != 0) {
            if ((i7 & 4) != 0) {
                if ((i2 & 4) != 0) {
                    a();
                }
                int i8 = this.f17985b & 4;
                Toolbar toolbar = this.f17984a;
                if (i8 != 0) {
                    Drawable drawable = this.f17989f;
                    if (drawable == null) {
                        drawable = this.f17998o;
                    }
                    toolbar.setNavigationIcon(drawable);
                } else {
                    toolbar.setNavigationIcon((Drawable) null);
                }
            }
            if ((i7 & 3) != 0) {
                b();
            }
            int i9 = i7 & 8;
            Toolbar toolbar2 = this.f17984a;
            if (i9 != 0) {
                if ((i2 & 8) != 0) {
                    toolbar2.setTitle(this.f17991h);
                    toolbar2.setSubtitle(this.f17992i);
                } else {
                    toolbar2.setTitle((CharSequence) null);
                    toolbar2.setSubtitle((CharSequence) null);
                }
            }
            if ((i7 & 16) == 0 || (view = this.f17986c) == null) {
                return;
            }
            if ((i2 & 16) != 0) {
                toolbar2.addView(view);
            } else {
                toolbar2.removeView(view);
            }
        }
    }

    public void setIcon(int i2) {
        setIcon(i2 != 0 ? AbstractC0876a.getDrawable(getContext(), i2) : null);
    }

    public void setLogo(int i2) {
        setLogo(i2 != 0 ? AbstractC0876a.getDrawable(getContext(), i2) : null);
    }

    public void setMenu(Menu menu, InterfaceC1059D interfaceC1059D) {
        C1186u c1186u = this.f17996m;
        Toolbar toolbar = this.f17984a;
        if (c1186u == null) {
            C1186u c1186u2 = new C1186u(toolbar.getContext());
            this.f17996m = c1186u2;
            c1186u2.setId(R.id.action_menu_presenter);
        }
        this.f17996m.setCallback(interfaceC1059D);
        toolbar.setMenu((C1084p) menu, this.f17996m);
    }

    @Override // l.M0
    public void setMenuCallbacks(InterfaceC1059D interfaceC1059D, InterfaceC1082n interfaceC1082n) {
        this.f17984a.setMenuCallbacks(interfaceC1059D, interfaceC1082n);
    }

    @Override // l.M0
    public void setMenuPrepared() {
        this.f17995l = true;
    }

    public void setNavigationContentDescription(CharSequence charSequence) {
        this.f17993j = charSequence;
        a();
    }

    @Override // l.M0
    public void setNavigationIcon(Drawable drawable) {
        this.f17989f = drawable;
        int i2 = this.f17985b & 4;
        Toolbar toolbar = this.f17984a;
        if (i2 == 0) {
            toolbar.setNavigationIcon((Drawable) null);
            return;
        }
        if (drawable == null) {
            drawable = this.f17998o;
        }
        toolbar.setNavigationIcon(drawable);
    }

    @Override // l.M0
    public void setSubtitle(CharSequence charSequence) {
        this.f17992i = charSequence;
        if ((this.f17985b & 8) != 0) {
            this.f17984a.setSubtitle(charSequence);
        }
    }

    @Override // l.M0
    public void setTitle(CharSequence charSequence) {
        this.f17990g = true;
        this.f17991h = charSequence;
        if ((this.f17985b & 8) != 0) {
            Toolbar toolbar = this.f17984a;
            toolbar.setTitle(charSequence);
            if (this.f17990g) {
                AbstractC0181p0.setAccessibilityPaneTitle(toolbar.getRootView(), charSequence);
            }
        }
    }

    @Override // l.M0
    public void setVisibility(int i2) {
        this.f17984a.setVisibility(i2);
    }

    public void setWindowCallback(Window.Callback callback) {
        this.f17994k = callback;
    }

    @Override // l.M0
    public void setWindowTitle(CharSequence charSequence) {
        if (this.f17990g) {
            return;
        }
        this.f17991h = charSequence;
        if ((this.f17985b & 8) != 0) {
            Toolbar toolbar = this.f17984a;
            toolbar.setTitle(charSequence);
            if (this.f17990g) {
                AbstractC0181p0.setAccessibilityPaneTitle(toolbar.getRootView(), charSequence);
            }
        }
    }

    public M.C0 setupAnimatorToVisibility(int i2, long j7) {
        return AbstractC0181p0.animate(this.f17984a).alpha(i2 == 0 ? 1.0f : 0.0f).setDuration(j7).setListener(new q2(this, i2));
    }

    @Override // l.M0
    public boolean showOverflowMenu() {
        return this.f17984a.showOverflowMenu();
    }

    public r2(Toolbar toolbar, boolean z6, int i2, int i7) {
        int i8;
        Drawable drawable;
        this.f17997n = 0;
        this.f17984a = toolbar;
        this.f17991h = toolbar.getTitle();
        this.f17992i = toolbar.getSubtitle();
        this.f17990g = this.f17991h != null;
        this.f17989f = toolbar.getNavigationIcon();
        e2 obtainStyledAttributes = e2.obtainStyledAttributes(toolbar.getContext(), null, R.styleable.ActionBar, R.attr.actionBarStyle, 0);
        this.f17998o = obtainStyledAttributes.getDrawable(R.styleable.ActionBar_homeAsUpIndicator);
        if (z6) {
            CharSequence text = obtainStyledAttributes.getText(R.styleable.ActionBar_title);
            if (!TextUtils.isEmpty(text)) {
                setTitle(text);
            }
            CharSequence text2 = obtainStyledAttributes.getText(R.styleable.ActionBar_subtitle);
            if (!TextUtils.isEmpty(text2)) {
                setSubtitle(text2);
            }
            Drawable drawable2 = obtainStyledAttributes.getDrawable(R.styleable.ActionBar_logo);
            if (drawable2 != null) {
                setLogo(drawable2);
            }
            Drawable drawable3 = obtainStyledAttributes.getDrawable(R.styleable.ActionBar_icon);
            if (drawable3 != null) {
                setIcon(drawable3);
            }
            if (this.f17989f == null && (drawable = this.f17998o) != null) {
                setNavigationIcon(drawable);
            }
            setDisplayOptions(obtainStyledAttributes.getInt(R.styleable.ActionBar_displayOptions, 0));
            int resourceId = obtainStyledAttributes.getResourceId(R.styleable.ActionBar_customNavigationLayout, 0);
            if (resourceId != 0) {
                setCustomView(LayoutInflater.from(toolbar.getContext()).inflate(resourceId, (ViewGroup) toolbar, false));
                setDisplayOptions(this.f17985b | 16);
            }
            int layoutDimension = obtainStyledAttributes.getLayoutDimension(R.styleable.ActionBar_height, 0);
            if (layoutDimension > 0) {
                ViewGroup.LayoutParams layoutParams = toolbar.getLayoutParams();
                layoutParams.height = layoutDimension;
                toolbar.setLayoutParams(layoutParams);
            }
            int dimensionPixelOffset = obtainStyledAttributes.getDimensionPixelOffset(R.styleable.ActionBar_contentInsetStart, -1);
            int dimensionPixelOffset2 = obtainStyledAttributes.getDimensionPixelOffset(R.styleable.ActionBar_contentInsetEnd, -1);
            if (dimensionPixelOffset >= 0 || dimensionPixelOffset2 >= 0) {
                toolbar.setContentInsetsRelative(Math.max(dimensionPixelOffset, 0), Math.max(dimensionPixelOffset2, 0));
            }
            int resourceId2 = obtainStyledAttributes.getResourceId(R.styleable.ActionBar_titleTextStyle, 0);
            if (resourceId2 != 0) {
                toolbar.setTitleTextAppearance(toolbar.getContext(), resourceId2);
            }
            int resourceId3 = obtainStyledAttributes.getResourceId(R.styleable.ActionBar_subtitleTextStyle, 0);
            if (resourceId3 != 0) {
                toolbar.setSubtitleTextAppearance(toolbar.getContext(), resourceId3);
            }
            int resourceId4 = obtainStyledAttributes.getResourceId(R.styleable.ActionBar_popupTheme, 0);
            if (resourceId4 != 0) {
                toolbar.setPopupTheme(resourceId4);
            }
        } else {
            if (toolbar.getNavigationIcon() != null) {
                this.f17998o = toolbar.getNavigationIcon();
                i8 = 15;
            } else {
                i8 = 11;
            }
            this.f17985b = i8;
        }
        obtainStyledAttributes.recycle();
        setDefaultNavigationContentDescription(i2);
        this.f17993j = toolbar.getNavigationContentDescription();
        toolbar.setNavigationOnClickListener(new p2(this));
    }

    public void setIcon(Drawable drawable) {
        this.f17987d = drawable;
        b();
    }

    public void setLogo(Drawable drawable) {
        this.f17988e = drawable;
        b();
    }

    @Override // l.M0
    public void setNavigationContentDescription(int i2) {
        setNavigationContentDescription(i2 == 0 ? null : getContext().getString(i2));
    }

    @Override // l.M0
    public void setNavigationIcon(int i2) {
        setNavigationIcon(i2 != 0 ? AbstractC0876a.getDrawable(getContext(), i2) : null);
    }

    public void setEmbeddedTabView(G1 g12) {
    }

    public void setHomeButtonEnabled(boolean z6) {
    }
}
