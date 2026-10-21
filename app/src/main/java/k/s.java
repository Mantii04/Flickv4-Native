package k;

import M.AbstractC0158e;
import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.util.Log;
import android.view.ActionProvider;
import android.view.ContextMenu;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.MenuItem;
import android.view.SubMenu;
import android.view.View;
import android.view.ViewDebug;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import f.AbstractC0876a;
import java.util.ArrayList;

/* loaded from: classes.dex */
public final class s implements F.b {

    /* renamed from: A, reason: collision with root package name */
    public AbstractC0158e f17177A;

    /* renamed from: B, reason: collision with root package name */
    public MenuItem.OnActionExpandListener f17178B;

    /* renamed from: a, reason: collision with root package name */
    public final int f17180a;

    /* renamed from: b, reason: collision with root package name */
    public final int f17181b;

    /* renamed from: c, reason: collision with root package name */
    public final int f17182c;

    /* renamed from: d, reason: collision with root package name */
    public final int f17183d;

    /* renamed from: e, reason: collision with root package name */
    public CharSequence f17184e;

    /* renamed from: f, reason: collision with root package name */
    public CharSequence f17185f;

    /* renamed from: g, reason: collision with root package name */
    public Intent f17186g;

    /* renamed from: h, reason: collision with root package name */
    public char f17187h;

    /* renamed from: j, reason: collision with root package name */
    public char f17189j;

    /* renamed from: l, reason: collision with root package name */
    public Drawable f17191l;

    /* renamed from: n, reason: collision with root package name */
    public final C1084p f17193n;

    /* renamed from: o, reason: collision with root package name */
    public SubMenuC1068M f17194o;

    /* renamed from: p, reason: collision with root package name */
    public MenuItem.OnMenuItemClickListener f17195p;

    /* renamed from: q, reason: collision with root package name */
    public CharSequence f17196q;

    /* renamed from: r, reason: collision with root package name */
    public CharSequence f17197r;

    /* renamed from: y, reason: collision with root package name */
    public int f17204y;

    /* renamed from: z, reason: collision with root package name */
    public View f17205z;

    /* renamed from: i, reason: collision with root package name */
    public int f17188i = 4096;

    /* renamed from: k, reason: collision with root package name */
    public int f17190k = 4096;

    /* renamed from: m, reason: collision with root package name */
    public int f17192m = 0;

    /* renamed from: s, reason: collision with root package name */
    public ColorStateList f17198s = null;

    /* renamed from: t, reason: collision with root package name */
    public PorterDuff.Mode f17199t = null;

    /* renamed from: u, reason: collision with root package name */
    public boolean f17200u = false;

    /* renamed from: v, reason: collision with root package name */
    public boolean f17201v = false;

    /* renamed from: w, reason: collision with root package name */
    public boolean f17202w = false;

    /* renamed from: x, reason: collision with root package name */
    public int f17203x = 16;

    /* renamed from: C, reason: collision with root package name */
    public boolean f17179C = false;

    public s(C1084p c1084p, int i2, int i7, int i8, int i9, CharSequence charSequence, int i10) {
        this.f17193n = c1084p;
        this.f17180a = i7;
        this.f17181b = i2;
        this.f17182c = i8;
        this.f17183d = i9;
        this.f17184e = charSequence;
        this.f17204y = i10;
    }

    public static void a(int i2, int i7, String str, StringBuilder sb) {
        if ((i2 & i7) == i7) {
            sb.append(str);
        }
    }

    public void actionFormatChanged() {
        C1084p c1084p = this.f17193n;
        c1084p.f17159k = true;
        c1084p.onItemsChanged(true);
    }

    public final Drawable b(Drawable drawable) {
        if (drawable != null && this.f17202w && (this.f17200u || this.f17201v)) {
            drawable = E.c.wrap(drawable).mutate();
            if (this.f17200u) {
                E.c.setTintList(drawable, this.f17198s);
            }
            if (this.f17201v) {
                E.c.setTintMode(drawable, this.f17199t);
            }
            this.f17202w = false;
        }
        return drawable;
    }

    @Override // F.b, android.view.MenuItem
    public boolean collapseActionView() {
        if ((this.f17204y & 8) == 0) {
            return false;
        }
        if (this.f17205z == null) {
            return true;
        }
        MenuItem.OnActionExpandListener onActionExpandListener = this.f17178B;
        if (onActionExpandListener == null || onActionExpandListener.onMenuItemActionCollapse(this)) {
            return this.f17193n.collapseItemActionView(this);
        }
        return false;
    }

    @Override // F.b, android.view.MenuItem
    public boolean expandActionView() {
        if (!hasCollapsibleActionView()) {
            return false;
        }
        MenuItem.OnActionExpandListener onActionExpandListener = this.f17178B;
        if (onActionExpandListener == null || onActionExpandListener.onMenuItemActionExpand(this)) {
            return this.f17193n.expandItemActionView(this);
        }
        return false;
    }

    @Override // android.view.MenuItem
    public ActionProvider getActionProvider() {
        throw new UnsupportedOperationException("This is not supported, use MenuItemCompat.getActionProvider()");
    }

    @Override // F.b, android.view.MenuItem
    public View getActionView() {
        View view = this.f17205z;
        if (view != null) {
            return view;
        }
        AbstractC0158e abstractC0158e = this.f17177A;
        if (abstractC0158e == null) {
            return null;
        }
        View onCreateActionView = abstractC0158e.onCreateActionView(this);
        this.f17205z = onCreateActionView;
        return onCreateActionView;
    }

    @Override // F.b, android.view.MenuItem
    public int getAlphabeticModifiers() {
        return this.f17190k;
    }

    @Override // android.view.MenuItem
    public char getAlphabeticShortcut() {
        return this.f17189j;
    }

    @Override // F.b, android.view.MenuItem
    public CharSequence getContentDescription() {
        return this.f17196q;
    }

    @Override // android.view.MenuItem
    public int getGroupId() {
        return this.f17181b;
    }

    @Override // android.view.MenuItem
    public Drawable getIcon() {
        Drawable drawable = this.f17191l;
        if (drawable != null) {
            return b(drawable);
        }
        if (this.f17192m == 0) {
            return null;
        }
        Drawable drawable2 = AbstractC0876a.getDrawable(this.f17193n.getContext(), this.f17192m);
        this.f17192m = 0;
        this.f17191l = drawable2;
        return b(drawable2);
    }

    @Override // F.b, android.view.MenuItem
    public ColorStateList getIconTintList() {
        return this.f17198s;
    }

    @Override // F.b, android.view.MenuItem
    public PorterDuff.Mode getIconTintMode() {
        return this.f17199t;
    }

    @Override // android.view.MenuItem
    public Intent getIntent() {
        return this.f17186g;
    }

    @Override // android.view.MenuItem
    @ViewDebug.CapturedViewProperty
    public int getItemId() {
        return this.f17180a;
    }

    @Override // android.view.MenuItem
    public ContextMenu.ContextMenuInfo getMenuInfo() {
        return null;
    }

    @Override // F.b, android.view.MenuItem
    public int getNumericModifiers() {
        return this.f17188i;
    }

    @Override // android.view.MenuItem
    public char getNumericShortcut() {
        return this.f17187h;
    }

    @Override // android.view.MenuItem
    public int getOrder() {
        return this.f17182c;
    }

    public int getOrdering() {
        return this.f17183d;
    }

    @Override // android.view.MenuItem
    public SubMenu getSubMenu() {
        return this.f17194o;
    }

    @Override // F.b
    public AbstractC0158e getSupportActionProvider() {
        return this.f17177A;
    }

    @Override // android.view.MenuItem
    @ViewDebug.CapturedViewProperty
    public CharSequence getTitle() {
        return this.f17184e;
    }

    @Override // android.view.MenuItem
    public CharSequence getTitleCondensed() {
        CharSequence charSequence = this.f17185f;
        return charSequence != null ? charSequence : this.f17184e;
    }

    @Override // F.b, android.view.MenuItem
    public CharSequence getTooltipText() {
        return this.f17197r;
    }

    public boolean hasCollapsibleActionView() {
        AbstractC0158e abstractC0158e;
        if ((this.f17204y & 8) != 0) {
            if (this.f17205z == null && (abstractC0158e = this.f17177A) != null) {
                this.f17205z = abstractC0158e.onCreateActionView(this);
            }
            if (this.f17205z != null) {
                return true;
            }
        }
        return false;
    }

    @Override // android.view.MenuItem
    public boolean hasSubMenu() {
        return this.f17194o != null;
    }

    public boolean invoke() {
        MenuItem.OnMenuItemClickListener onMenuItemClickListener = this.f17195p;
        if (onMenuItemClickListener == null || !onMenuItemClickListener.onMenuItemClick(this)) {
            C1084p c1084p = this.f17193n;
            if (!c1084p.a(c1084p, this)) {
                if (this.f17186g != null) {
                    try {
                        c1084p.getContext().startActivity(this.f17186g);
                        return true;
                    } catch (ActivityNotFoundException e3) {
                        Log.e("MenuItemImpl", "Can't find activity to handle intent; ignoring", e3);
                    }
                }
                AbstractC0158e abstractC0158e = this.f17177A;
                if (abstractC0158e == null || !abstractC0158e.onPerformDefaultAction()) {
                    return false;
                }
            }
        }
        return true;
    }

    public boolean isActionButton() {
        return (this.f17203x & 32) == 32;
    }

    @Override // F.b, android.view.MenuItem
    public boolean isActionViewExpanded() {
        return this.f17179C;
    }

    @Override // android.view.MenuItem
    public boolean isCheckable() {
        return (this.f17203x & 1) == 1;
    }

    @Override // android.view.MenuItem
    public boolean isChecked() {
        return (this.f17203x & 2) == 2;
    }

    @Override // android.view.MenuItem
    public boolean isEnabled() {
        return (this.f17203x & 16) != 0;
    }

    public boolean isExclusiveCheckable() {
        return (this.f17203x & 4) != 0;
    }

    @Override // android.view.MenuItem
    public boolean isVisible() {
        AbstractC0158e abstractC0158e = this.f17177A;
        return (abstractC0158e == null || !abstractC0158e.overridesItemVisibility()) ? (this.f17203x & 8) == 0 : (this.f17203x & 8) == 0 && this.f17177A.isVisible();
    }

    public boolean requestsActionButton() {
        return (this.f17204y & 1) == 1;
    }

    public boolean requiresActionButton() {
        return (this.f17204y & 2) == 2;
    }

    @Override // android.view.MenuItem
    public MenuItem setActionProvider(ActionProvider actionProvider) {
        throw new UnsupportedOperationException("This is not supported, use MenuItemCompat.setActionProvider()");
    }

    public void setActionViewExpanded(boolean z6) {
        this.f17179C = z6;
        this.f17193n.onItemsChanged(false);
    }

    @Override // android.view.MenuItem
    public MenuItem setAlphabeticShortcut(char c7) {
        if (this.f17189j == c7) {
            return this;
        }
        this.f17189j = Character.toLowerCase(c7);
        this.f17193n.onItemsChanged(false);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setCheckable(boolean z6) {
        int i2 = this.f17203x;
        int i7 = (z6 ? 1 : 0) | (i2 & (-2));
        this.f17203x = i7;
        if (i2 != i7) {
            this.f17193n.onItemsChanged(false);
        }
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setChecked(boolean z6) {
        int i2 = this.f17203x;
        if ((i2 & 4) == 0) {
            int i7 = (i2 & (-3)) | (z6 ? 2 : 0);
            this.f17203x = i7;
            if (i2 != i7) {
                this.f17193n.onItemsChanged(false);
            }
            return this;
        }
        C1084p c1084p = this.f17193n;
        int groupId = getGroupId();
        ArrayList arrayList = c1084p.f17154f;
        int size = arrayList.size();
        c1084p.stopDispatchingItemsChanged();
        for (int i8 = 0; i8 < size; i8++) {
            s sVar = (s) arrayList.get(i8);
            if (sVar.getGroupId() == groupId && sVar.isExclusiveCheckable() && sVar.isCheckable()) {
                boolean z7 = sVar == this;
                int i9 = sVar.f17203x;
                int i10 = (z7 ? 2 : 0) | (i9 & (-3));
                sVar.f17203x = i10;
                if (i9 != i10) {
                    sVar.f17193n.onItemsChanged(false);
                }
            }
        }
        c1084p.startDispatchingItemsChanged();
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setEnabled(boolean z6) {
        if (z6) {
            this.f17203x |= 16;
        } else {
            this.f17203x &= -17;
        }
        this.f17193n.onItemsChanged(false);
        return this;
    }

    public void setExclusiveCheckable(boolean z6) {
        this.f17203x = (z6 ? 4 : 0) | (this.f17203x & (-5));
    }

    @Override // android.view.MenuItem
    public MenuItem setIcon(Drawable drawable) {
        this.f17192m = 0;
        this.f17191l = drawable;
        this.f17202w = true;
        this.f17193n.onItemsChanged(false);
        return this;
    }

    @Override // F.b, android.view.MenuItem
    public MenuItem setIconTintList(ColorStateList colorStateList) {
        this.f17198s = colorStateList;
        this.f17200u = true;
        this.f17202w = true;
        this.f17193n.onItemsChanged(false);
        return this;
    }

    @Override // F.b, android.view.MenuItem
    public MenuItem setIconTintMode(PorterDuff.Mode mode) {
        this.f17199t = mode;
        this.f17201v = true;
        this.f17202w = true;
        this.f17193n.onItemsChanged(false);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setIntent(Intent intent) {
        this.f17186g = intent;
        return this;
    }

    public void setIsActionButton(boolean z6) {
        if (z6) {
            this.f17203x |= 32;
        } else {
            this.f17203x &= -33;
        }
    }

    @Override // android.view.MenuItem
    public MenuItem setNumericShortcut(char c7) {
        if (this.f17187h == c7) {
            return this;
        }
        this.f17187h = c7;
        this.f17193n.onItemsChanged(false);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setOnActionExpandListener(MenuItem.OnActionExpandListener onActionExpandListener) {
        this.f17178B = onActionExpandListener;
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setOnMenuItemClickListener(MenuItem.OnMenuItemClickListener onMenuItemClickListener) {
        this.f17195p = onMenuItemClickListener;
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setShortcut(char c7, char c8) {
        this.f17187h = c7;
        this.f17189j = Character.toLowerCase(c8);
        this.f17193n.onItemsChanged(false);
        return this;
    }

    @Override // F.b, android.view.MenuItem
    public void setShowAsAction(int i2) {
        int i7 = i2 & 3;
        if (i7 != 0 && i7 != 1 && i7 != 2) {
            throw new IllegalArgumentException("SHOW_AS_ACTION_ALWAYS, SHOW_AS_ACTION_IF_ROOM, and SHOW_AS_ACTION_NEVER are mutually exclusive.");
        }
        this.f17204y = i2;
        C1084p c1084p = this.f17193n;
        c1084p.f17159k = true;
        c1084p.onItemsChanged(true);
    }

    public void setSubMenu(SubMenuC1068M subMenuC1068M) {
        this.f17194o = subMenuC1068M;
        subMenuC1068M.setHeaderTitle(getTitle());
    }

    @Override // F.b
    public F.b setSupportActionProvider(AbstractC0158e abstractC0158e) {
        AbstractC0158e abstractC0158e2 = this.f17177A;
        if (abstractC0158e2 != null) {
            abstractC0158e2.reset();
        }
        this.f17205z = null;
        this.f17177A = abstractC0158e;
        this.f17193n.onItemsChanged(true);
        AbstractC0158e abstractC0158e3 = this.f17177A;
        if (abstractC0158e3 != null) {
            abstractC0158e3.setVisibilityListener(new r(this));
        }
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setTitle(CharSequence charSequence) {
        this.f17184e = charSequence;
        this.f17193n.onItemsChanged(false);
        SubMenuC1068M subMenuC1068M = this.f17194o;
        if (subMenuC1068M != null) {
            subMenuC1068M.setHeaderTitle(charSequence);
        }
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setTitleCondensed(CharSequence charSequence) {
        this.f17185f = charSequence;
        this.f17193n.onItemsChanged(false);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setVisible(boolean z6) {
        int i2 = this.f17203x;
        int i7 = (z6 ? 0 : 8) | (i2 & (-9));
        this.f17203x = i7;
        if (i2 != i7) {
            C1084p c1084p = this.f17193n;
            c1084p.f17156h = true;
            c1084p.onItemsChanged(true);
        }
        return this;
    }

    public boolean shouldShowIcon() {
        this.f17193n.getClass();
        return false;
    }

    public boolean showsTextAsAction() {
        return (this.f17204y & 4) == 4;
    }

    public String toString() {
        CharSequence charSequence = this.f17184e;
        if (charSequence != null) {
            return charSequence.toString();
        }
        return null;
    }

    @Override // android.view.MenuItem
    public F.b setContentDescription(CharSequence charSequence) {
        this.f17196q = charSequence;
        this.f17193n.onItemsChanged(false);
        return this;
    }

    @Override // F.b, android.view.MenuItem
    public F.b setShowAsActionFlags(int i2) {
        setShowAsAction(i2);
        return this;
    }

    @Override // android.view.MenuItem
    public F.b setTooltipText(CharSequence charSequence) {
        this.f17197r = charSequence;
        this.f17193n.onItemsChanged(false);
        return this;
    }

    @Override // F.b, android.view.MenuItem
    public F.b setActionView(View view) {
        int i2;
        this.f17205z = view;
        this.f17177A = null;
        if (view != null && view.getId() == -1 && (i2 = this.f17180a) > 0) {
            view.setId(i2);
        }
        C1084p c1084p = this.f17193n;
        c1084p.f17159k = true;
        c1084p.onItemsChanged(true);
        return this;
    }

    @Override // F.b, android.view.MenuItem
    public MenuItem setAlphabeticShortcut(char c7, int i2) {
        if (this.f17189j == c7 && this.f17190k == i2) {
            return this;
        }
        this.f17189j = Character.toLowerCase(c7);
        this.f17190k = KeyEvent.normalizeMetaState(i2);
        this.f17193n.onItemsChanged(false);
        return this;
    }

    @Override // F.b, android.view.MenuItem
    public MenuItem setNumericShortcut(char c7, int i2) {
        if (this.f17187h == c7 && this.f17188i == i2) {
            return this;
        }
        this.f17187h = c7;
        this.f17188i = KeyEvent.normalizeMetaState(i2);
        this.f17193n.onItemsChanged(false);
        return this;
    }

    @Override // F.b, android.view.MenuItem
    public MenuItem setShortcut(char c7, char c8, int i2, int i7) {
        this.f17187h = c7;
        this.f17188i = KeyEvent.normalizeMetaState(i2);
        this.f17189j = Character.toLowerCase(c8);
        this.f17190k = KeyEvent.normalizeMetaState(i7);
        this.f17193n.onItemsChanged(false);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setIcon(int i2) {
        this.f17191l = null;
        this.f17192m = i2;
        this.f17202w = true;
        this.f17193n.onItemsChanged(false);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setTitle(int i2) {
        return setTitle(this.f17193n.getContext().getString(i2));
    }

    @Override // F.b, android.view.MenuItem
    public F.b setActionView(int i2) {
        Context context = this.f17193n.getContext();
        setActionView(LayoutInflater.from(context).inflate(i2, (ViewGroup) new LinearLayout(context), false));
        return this;
    }
}
