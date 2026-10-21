package j;

import M.AbstractC0158e;
import M.D;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.PorterDuff;
import android.util.AttributeSet;
import android.util.Log;
import android.view.Menu;
import android.view.MenuItem;
import android.view.SubMenu;
import android.view.View;
import androidx.appcompat.R;
import java.lang.reflect.Constructor;
import k.s;
import k.y;
import l.P0;
import l.e2;
import okhttp3.internal.http2.Settings;

/* renamed from: j.k, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C1028k {

    /* renamed from: A, reason: collision with root package name */
    public CharSequence f16891A;

    /* renamed from: B, reason: collision with root package name */
    public CharSequence f16892B;

    /* renamed from: C, reason: collision with root package name */
    public ColorStateList f16893C = null;

    /* renamed from: D, reason: collision with root package name */
    public PorterDuff.Mode f16894D = null;

    /* renamed from: E, reason: collision with root package name */
    public final /* synthetic */ C1029l f16895E;

    /* renamed from: a, reason: collision with root package name */
    public final Menu f16896a;

    /* renamed from: b, reason: collision with root package name */
    public int f16897b;

    /* renamed from: c, reason: collision with root package name */
    public int f16898c;

    /* renamed from: d, reason: collision with root package name */
    public int f16899d;

    /* renamed from: e, reason: collision with root package name */
    public int f16900e;

    /* renamed from: f, reason: collision with root package name */
    public boolean f16901f;

    /* renamed from: g, reason: collision with root package name */
    public boolean f16902g;

    /* renamed from: h, reason: collision with root package name */
    public boolean f16903h;

    /* renamed from: i, reason: collision with root package name */
    public int f16904i;

    /* renamed from: j, reason: collision with root package name */
    public int f16905j;

    /* renamed from: k, reason: collision with root package name */
    public CharSequence f16906k;

    /* renamed from: l, reason: collision with root package name */
    public CharSequence f16907l;

    /* renamed from: m, reason: collision with root package name */
    public int f16908m;

    /* renamed from: n, reason: collision with root package name */
    public char f16909n;

    /* renamed from: o, reason: collision with root package name */
    public int f16910o;

    /* renamed from: p, reason: collision with root package name */
    public char f16911p;

    /* renamed from: q, reason: collision with root package name */
    public int f16912q;

    /* renamed from: r, reason: collision with root package name */
    public int f16913r;

    /* renamed from: s, reason: collision with root package name */
    public boolean f16914s;

    /* renamed from: t, reason: collision with root package name */
    public boolean f16915t;

    /* renamed from: u, reason: collision with root package name */
    public boolean f16916u;

    /* renamed from: v, reason: collision with root package name */
    public int f16917v;

    /* renamed from: w, reason: collision with root package name */
    public int f16918w;

    /* renamed from: x, reason: collision with root package name */
    public String f16919x;

    /* renamed from: y, reason: collision with root package name */
    public String f16920y;

    /* renamed from: z, reason: collision with root package name */
    public AbstractC0158e f16921z;

    public C1028k(C1029l c1029l, Menu menu) {
        this.f16895E = c1029l;
        this.f16896a = menu;
        resetGroup();
    }

    public final Object a(String str, Class[] clsArr, Object[] objArr) {
        try {
            Constructor<?> constructor = Class.forName(str, false, this.f16895E.f16926c.getClassLoader()).getConstructor(clsArr);
            constructor.setAccessible(true);
            return constructor.newInstance(objArr);
        } catch (Exception e3) {
            Log.w("SupportMenuInflater", "Cannot instantiate class: " + str, e3);
            return null;
        }
    }

    public void addItem() {
        this.f16903h = true;
        b(this.f16896a.add(this.f16897b, this.f16904i, this.f16905j, this.f16906k));
    }

    public SubMenu addSubMenuItem() {
        this.f16903h = true;
        SubMenu addSubMenu = this.f16896a.addSubMenu(this.f16897b, this.f16904i, this.f16905j, this.f16906k);
        b(addSubMenu.getItem());
        return addSubMenu;
    }

    public final void b(MenuItem menuItem) {
        boolean z6 = false;
        menuItem.setChecked(this.f16914s).setVisible(this.f16915t).setEnabled(this.f16916u).setCheckable(this.f16913r >= 1).setTitleCondensed(this.f16907l).setIcon(this.f16908m);
        int i2 = this.f16917v;
        if (i2 >= 0) {
            menuItem.setShowAsAction(i2);
        }
        String str = this.f16920y;
        C1029l c1029l = this.f16895E;
        if (str != null) {
            if (c1029l.f16926c.isRestricted()) {
                throw new IllegalStateException("The android:onClick attribute cannot be used within a restricted context");
            }
            if (c1029l.f16927d == null) {
                c1029l.f16927d = C1029l.a(c1029l.f16926c);
            }
            menuItem.setOnMenuItemClickListener(new MenuItemOnMenuItemClickListenerC1027j(c1029l.f16927d, this.f16920y));
        }
        if (this.f16913r >= 2) {
            if (menuItem instanceof s) {
                ((s) menuItem).setExclusiveCheckable(true);
            } else if (menuItem instanceof y) {
                ((y) menuItem).setExclusiveCheckable(true);
            }
        }
        String str2 = this.f16919x;
        if (str2 != null) {
            menuItem.setActionView((View) a(str2, C1029l.f16922e, c1029l.f16924a));
            z6 = true;
        }
        int i7 = this.f16918w;
        if (i7 > 0) {
            if (z6) {
                Log.w("SupportMenuInflater", "Ignoring attribute 'itemActionViewLayout'. Action view already specified.");
            } else {
                menuItem.setActionView(i7);
            }
        }
        AbstractC0158e abstractC0158e = this.f16921z;
        if (abstractC0158e != null) {
            D.setActionProvider(menuItem, abstractC0158e);
        }
        D.setContentDescription(menuItem, this.f16891A);
        D.setTooltipText(menuItem, this.f16892B);
        D.setAlphabeticShortcut(menuItem, this.f16909n, this.f16910o);
        D.setNumericShortcut(menuItem, this.f16911p, this.f16912q);
        PorterDuff.Mode mode = this.f16894D;
        if (mode != null) {
            D.setIconTintMode(menuItem, mode);
        }
        ColorStateList colorStateList = this.f16893C;
        if (colorStateList != null) {
            D.setIconTintList(menuItem, colorStateList);
        }
    }

    public boolean hasAddedItem() {
        return this.f16903h;
    }

    public void readGroup(AttributeSet attributeSet) {
        TypedArray obtainStyledAttributes = this.f16895E.f16926c.obtainStyledAttributes(attributeSet, R.styleable.MenuGroup);
        this.f16897b = obtainStyledAttributes.getResourceId(R.styleable.MenuGroup_android_id, 0);
        this.f16898c = obtainStyledAttributes.getInt(R.styleable.MenuGroup_android_menuCategory, 0);
        this.f16899d = obtainStyledAttributes.getInt(R.styleable.MenuGroup_android_orderInCategory, 0);
        this.f16900e = obtainStyledAttributes.getInt(R.styleable.MenuGroup_android_checkableBehavior, 0);
        this.f16901f = obtainStyledAttributes.getBoolean(R.styleable.MenuGroup_android_visible, true);
        this.f16902g = obtainStyledAttributes.getBoolean(R.styleable.MenuGroup_android_enabled, true);
        obtainStyledAttributes.recycle();
    }

    public void readItem(AttributeSet attributeSet) {
        C1029l c1029l = this.f16895E;
        e2 obtainStyledAttributes = e2.obtainStyledAttributes(c1029l.f16926c, attributeSet, R.styleable.MenuItem);
        this.f16904i = obtainStyledAttributes.getResourceId(R.styleable.MenuItem_android_id, 0);
        this.f16905j = (obtainStyledAttributes.getInt(R.styleable.MenuItem_android_menuCategory, this.f16898c) & (-65536)) | (obtainStyledAttributes.getInt(R.styleable.MenuItem_android_orderInCategory, this.f16899d) & Settings.DEFAULT_INITIAL_WINDOW_SIZE);
        this.f16906k = obtainStyledAttributes.getText(R.styleable.MenuItem_android_title);
        this.f16907l = obtainStyledAttributes.getText(R.styleable.MenuItem_android_titleCondensed);
        this.f16908m = obtainStyledAttributes.getResourceId(R.styleable.MenuItem_android_icon, 0);
        String string = obtainStyledAttributes.getString(R.styleable.MenuItem_android_alphabeticShortcut);
        this.f16909n = string == null ? (char) 0 : string.charAt(0);
        this.f16910o = obtainStyledAttributes.getInt(R.styleable.MenuItem_alphabeticModifiers, 4096);
        String string2 = obtainStyledAttributes.getString(R.styleable.MenuItem_android_numericShortcut);
        this.f16911p = string2 == null ? (char) 0 : string2.charAt(0);
        this.f16912q = obtainStyledAttributes.getInt(R.styleable.MenuItem_numericModifiers, 4096);
        if (obtainStyledAttributes.hasValue(R.styleable.MenuItem_android_checkable)) {
            this.f16913r = obtainStyledAttributes.getBoolean(R.styleable.MenuItem_android_checkable, false) ? 1 : 0;
        } else {
            this.f16913r = this.f16900e;
        }
        this.f16914s = obtainStyledAttributes.getBoolean(R.styleable.MenuItem_android_checked, false);
        this.f16915t = obtainStyledAttributes.getBoolean(R.styleable.MenuItem_android_visible, this.f16901f);
        this.f16916u = obtainStyledAttributes.getBoolean(R.styleable.MenuItem_android_enabled, this.f16902g);
        this.f16917v = obtainStyledAttributes.getInt(R.styleable.MenuItem_showAsAction, -1);
        this.f16920y = obtainStyledAttributes.getString(R.styleable.MenuItem_android_onClick);
        this.f16918w = obtainStyledAttributes.getResourceId(R.styleable.MenuItem_actionLayout, 0);
        this.f16919x = obtainStyledAttributes.getString(R.styleable.MenuItem_actionViewClass);
        String string3 = obtainStyledAttributes.getString(R.styleable.MenuItem_actionProviderClass);
        boolean z6 = string3 != null;
        if (z6 && this.f16918w == 0 && this.f16919x == null) {
            this.f16921z = (AbstractC0158e) a(string3, C1029l.f16923f, c1029l.f16925b);
        } else {
            if (z6) {
                Log.w("SupportMenuInflater", "Ignoring attribute 'actionProviderClass'. Action view already specified.");
            }
            this.f16921z = null;
        }
        this.f16891A = obtainStyledAttributes.getText(R.styleable.MenuItem_contentDescription);
        this.f16892B = obtainStyledAttributes.getText(R.styleable.MenuItem_tooltipText);
        if (obtainStyledAttributes.hasValue(R.styleable.MenuItem_iconTintMode)) {
            this.f16894D = P0.parseTintMode(obtainStyledAttributes.getInt(R.styleable.MenuItem_iconTintMode, -1), this.f16894D);
        } else {
            this.f16894D = null;
        }
        if (obtainStyledAttributes.hasValue(R.styleable.MenuItem_iconTint)) {
            this.f16893C = obtainStyledAttributes.getColorStateList(R.styleable.MenuItem_iconTint);
        } else {
            this.f16893C = null;
        }
        obtainStyledAttributes.recycle();
        this.f16903h = false;
    }

    public void resetGroup() {
        this.f16897b = 0;
        this.f16898c = 0;
        this.f16899d = 0;
        this.f16900e = 0;
        this.f16901f = true;
        this.f16902g = true;
    }
}
