package x3;

import M.AbstractC0181p0;
import M.h1;
import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.RippleDrawable;
import android.os.Bundle;
import android.os.Parcelable;
import android.util.SparseArray;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import com.google.android.material.R;
import com.google.android.material.internal.NavigationMenuView;
import k.C1084p;
import k.InterfaceC1060E;
import k.InterfaceC1062G;
import k.SubMenuC1068M;

/* renamed from: x3.A, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C1826A implements InterfaceC1060E {

    /* renamed from: A, reason: collision with root package name */
    public int f20842A;

    /* renamed from: B, reason: collision with root package name */
    public int f20843B;

    /* renamed from: C, reason: collision with root package name */
    public int f20844C;

    /* renamed from: D, reason: collision with root package name */
    public int f20845D;

    /* renamed from: E, reason: collision with root package name */
    public int f20846E;

    /* renamed from: F, reason: collision with root package name */
    public boolean f20847F;

    /* renamed from: H, reason: collision with root package name */
    public int f20849H;

    /* renamed from: I, reason: collision with root package name */
    public int f20850I;

    /* renamed from: J, reason: collision with root package name */
    public int f20851J;

    /* renamed from: b, reason: collision with root package name */
    public NavigationMenuView f20854b;

    /* renamed from: e, reason: collision with root package name */
    public LinearLayout f20855e;

    /* renamed from: f, reason: collision with root package name */
    public C1084p f20856f;

    /* renamed from: j, reason: collision with root package name */
    public int f20857j;

    /* renamed from: m, reason: collision with root package name */
    public C1843q f20858m;

    /* renamed from: n, reason: collision with root package name */
    public LayoutInflater f20859n;

    /* renamed from: q, reason: collision with root package name */
    public ColorStateList f20861q;

    /* renamed from: t, reason: collision with root package name */
    public ColorStateList f20864t;

    /* renamed from: u, reason: collision with root package name */
    public ColorStateList f20865u;

    /* renamed from: v, reason: collision with root package name */
    public Drawable f20866v;

    /* renamed from: w, reason: collision with root package name */
    public RippleDrawable f20867w;

    /* renamed from: x, reason: collision with root package name */
    public int f20868x;

    /* renamed from: y, reason: collision with root package name */
    public int f20869y;

    /* renamed from: z, reason: collision with root package name */
    public int f20870z;

    /* renamed from: p, reason: collision with root package name */
    public int f20860p = 0;

    /* renamed from: r, reason: collision with root package name */
    public int f20862r = 0;

    /* renamed from: s, reason: collision with root package name */
    public boolean f20863s = true;

    /* renamed from: G, reason: collision with root package name */
    public boolean f20848G = true;

    /* renamed from: K, reason: collision with root package name */
    public int f20852K = -1;

    /* renamed from: L, reason: collision with root package name */
    public final ViewOnClickListenerC1840n f20853L = new ViewOnClickListenerC1840n(this);

    public void addHeaderView(View view) {
        this.f20855e.addView(view);
        NavigationMenuView navigationMenuView = this.f20854b;
        navigationMenuView.setPadding(0, 0, 0, navigationMenuView.getPaddingBottom());
    }

    @Override // k.InterfaceC1060E
    public boolean collapseItemActionView(C1084p c1084p, k.s sVar) {
        return false;
    }

    public void dispatchApplyWindowInsets(h1 h1Var) {
        int systemWindowInsetTop = h1Var.getSystemWindowInsetTop();
        if (this.f20850I != systemWindowInsetTop) {
            this.f20850I = systemWindowInsetTop;
            int i2 = (getHeaderCount() <= 0 && this.f20848G) ? this.f20850I : 0;
            NavigationMenuView navigationMenuView = this.f20854b;
            navigationMenuView.setPadding(0, i2, 0, navigationMenuView.getPaddingBottom());
        }
        NavigationMenuView navigationMenuView2 = this.f20854b;
        navigationMenuView2.setPadding(0, navigationMenuView2.getPaddingTop(), 0, h1Var.getSystemWindowInsetBottom());
        AbstractC0181p0.dispatchApplyWindowInsets(this.f20855e, h1Var);
    }

    @Override // k.InterfaceC1060E
    public boolean expandItemActionView(C1084p c1084p, k.s sVar) {
        return false;
    }

    @Override // k.InterfaceC1060E
    public boolean flagActionItems() {
        return false;
    }

    public k.s getCheckedItem() {
        return this.f20858m.getCheckedItem();
    }

    public int getDividerInsetEnd() {
        return this.f20844C;
    }

    public int getDividerInsetStart() {
        return this.f20843B;
    }

    public int getHeaderCount() {
        return this.f20855e.getChildCount();
    }

    @Override // k.InterfaceC1060E
    public int getId() {
        return this.f20857j;
    }

    public Drawable getItemBackground() {
        return this.f20866v;
    }

    public int getItemHorizontalPadding() {
        return this.f20868x;
    }

    public int getItemIconPadding() {
        return this.f20870z;
    }

    public int getItemMaxLines() {
        return this.f20849H;
    }

    public ColorStateList getItemTextColor() {
        return this.f20864t;
    }

    public ColorStateList getItemTintList() {
        return this.f20865u;
    }

    public int getItemVerticalPadding() {
        return this.f20869y;
    }

    public InterfaceC1062G getMenuView(ViewGroup viewGroup) {
        if (this.f20854b == null) {
            NavigationMenuView navigationMenuView = (NavigationMenuView) this.f20859n.inflate(R.layout.design_navigation_menu, viewGroup, false);
            this.f20854b = navigationMenuView;
            navigationMenuView.setAccessibilityDelegateCompat(new C1847v(this, this.f20854b));
            if (this.f20858m == null) {
                C1843q c1843q = new C1843q(this);
                this.f20858m = c1843q;
                c1843q.setHasStableIds(true);
            }
            int i2 = this.f20852K;
            if (i2 != -1) {
                this.f20854b.setOverScrollMode(i2);
            }
            LinearLayout linearLayout = (LinearLayout) this.f20859n.inflate(R.layout.design_navigation_item_header, (ViewGroup) this.f20854b, false);
            this.f20855e = linearLayout;
            AbstractC0181p0.setImportantForAccessibility(linearLayout, 2);
            this.f20854b.setAdapter(this.f20858m);
        }
        return this.f20854b;
    }

    public int getSubheaderInsetEnd() {
        return this.f20846E;
    }

    public int getSubheaderInsetStart() {
        return this.f20845D;
    }

    public View inflateHeaderView(int i2) {
        View inflate = this.f20859n.inflate(i2, (ViewGroup) this.f20855e, false);
        addHeaderView(inflate);
        return inflate;
    }

    @Override // k.InterfaceC1060E
    public void initForMenu(Context context, C1084p c1084p) {
        this.f20859n = LayoutInflater.from(context);
        this.f20856f = c1084p;
        this.f20851J = context.getResources().getDimensionPixelOffset(R.dimen.design_navigation_separator_vertical_padding);
    }

    @Override // k.InterfaceC1060E
    public void onRestoreInstanceState(Parcelable parcelable) {
        if (parcelable instanceof Bundle) {
            Bundle bundle = (Bundle) parcelable;
            SparseArray<Parcelable> sparseParcelableArray = bundle.getSparseParcelableArray("android:menu:list");
            if (sparseParcelableArray != null) {
                this.f20854b.restoreHierarchyState(sparseParcelableArray);
            }
            Bundle bundle2 = bundle.getBundle("android:menu:adapter");
            if (bundle2 != null) {
                this.f20858m.restoreInstanceState(bundle2);
            }
            SparseArray<Parcelable> sparseParcelableArray2 = bundle.getSparseParcelableArray("android:menu:header");
            if (sparseParcelableArray2 != null) {
                this.f20855e.restoreHierarchyState(sparseParcelableArray2);
            }
        }
    }

    @Override // k.InterfaceC1060E
    public Parcelable onSaveInstanceState() {
        Bundle bundle = new Bundle();
        if (this.f20854b != null) {
            SparseArray<Parcelable> sparseArray = new SparseArray<>();
            this.f20854b.saveHierarchyState(sparseArray);
            bundle.putSparseParcelableArray("android:menu:list", sparseArray);
        }
        C1843q c1843q = this.f20858m;
        if (c1843q != null) {
            bundle.putBundle("android:menu:adapter", c1843q.createInstanceState());
        }
        if (this.f20855e != null) {
            SparseArray<Parcelable> sparseArray2 = new SparseArray<>();
            this.f20855e.saveHierarchyState(sparseArray2);
            bundle.putSparseParcelableArray("android:menu:header", sparseArray2);
        }
        return bundle;
    }

    @Override // k.InterfaceC1060E
    public boolean onSubMenuSelected(SubMenuC1068M subMenuC1068M) {
        return false;
    }

    public void setBehindStatusBar(boolean z6) {
        if (this.f20848G != z6) {
            this.f20848G = z6;
            int i2 = (getHeaderCount() <= 0 && this.f20848G) ? this.f20850I : 0;
            NavigationMenuView navigationMenuView = this.f20854b;
            navigationMenuView.setPadding(0, i2, 0, navigationMenuView.getPaddingBottom());
        }
    }

    public void setCheckedItem(k.s sVar) {
        this.f20858m.setCheckedItem(sVar);
    }

    public void setDividerInsetEnd(int i2) {
        this.f20844C = i2;
        updateMenuView(false);
    }

    public void setDividerInsetStart(int i2) {
        this.f20843B = i2;
        updateMenuView(false);
    }

    public void setId(int i2) {
        this.f20857j = i2;
    }

    public void setItemBackground(Drawable drawable) {
        this.f20866v = drawable;
        updateMenuView(false);
    }

    public void setItemForeground(RippleDrawable rippleDrawable) {
        this.f20867w = rippleDrawable;
        updateMenuView(false);
    }

    public void setItemHorizontalPadding(int i2) {
        this.f20868x = i2;
        updateMenuView(false);
    }

    public void setItemIconPadding(int i2) {
        this.f20870z = i2;
        updateMenuView(false);
    }

    public void setItemIconSize(int i2) {
        if (this.f20842A != i2) {
            this.f20842A = i2;
            this.f20847F = true;
            updateMenuView(false);
        }
    }

    public void setItemIconTintList(ColorStateList colorStateList) {
        this.f20865u = colorStateList;
        updateMenuView(false);
    }

    public void setItemMaxLines(int i2) {
        this.f20849H = i2;
        updateMenuView(false);
    }

    public void setItemTextAppearance(int i2) {
        this.f20862r = i2;
        updateMenuView(false);
    }

    public void setItemTextAppearanceActiveBoldEnabled(boolean z6) {
        this.f20863s = z6;
        updateMenuView(false);
    }

    public void setItemTextColor(ColorStateList colorStateList) {
        this.f20864t = colorStateList;
        updateMenuView(false);
    }

    public void setItemVerticalPadding(int i2) {
        this.f20869y = i2;
        updateMenuView(false);
    }

    public void setOverScrollMode(int i2) {
        this.f20852K = i2;
        NavigationMenuView navigationMenuView = this.f20854b;
        if (navigationMenuView != null) {
            navigationMenuView.setOverScrollMode(i2);
        }
    }

    public void setSubheaderColor(ColorStateList colorStateList) {
        this.f20861q = colorStateList;
        updateMenuView(false);
    }

    public void setSubheaderInsetEnd(int i2) {
        this.f20846E = i2;
        updateMenuView(false);
    }

    public void setSubheaderInsetStart(int i2) {
        this.f20845D = i2;
        updateMenuView(false);
    }

    public void setSubheaderTextAppearance(int i2) {
        this.f20860p = i2;
        updateMenuView(false);
    }

    public void setUpdateSuspended(boolean z6) {
        C1843q c1843q = this.f20858m;
        if (c1843q != null) {
            c1843q.setUpdateSuspended(z6);
        }
    }

    @Override // k.InterfaceC1060E
    public void updateMenuView(boolean z6) {
        C1843q c1843q = this.f20858m;
        if (c1843q != null) {
            c1843q.update();
        }
    }

    @Override // k.InterfaceC1060E
    public void onCloseMenu(C1084p c1084p, boolean z6) {
    }
}
