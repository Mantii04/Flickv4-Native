package k;

import M.AbstractC0158e;
import android.content.Context;
import android.content.Intent;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.view.ActionProvider;
import android.view.ContextMenu;
import android.view.KeyEvent;
import android.view.MenuItem;
import android.view.SubMenu;
import android.view.View;

/* renamed from: k.a, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C1069a implements F.b {

    /* renamed from: a, reason: collision with root package name */
    public final int f17066a;

    /* renamed from: b, reason: collision with root package name */
    public final int f17067b;

    /* renamed from: c, reason: collision with root package name */
    public final int f17068c;

    /* renamed from: d, reason: collision with root package name */
    public CharSequence f17069d;

    /* renamed from: e, reason: collision with root package name */
    public CharSequence f17070e;

    /* renamed from: f, reason: collision with root package name */
    public Intent f17071f;

    /* renamed from: g, reason: collision with root package name */
    public char f17072g;

    /* renamed from: i, reason: collision with root package name */
    public char f17074i;

    /* renamed from: k, reason: collision with root package name */
    public Drawable f17076k;

    /* renamed from: l, reason: collision with root package name */
    public final Context f17077l;

    /* renamed from: m, reason: collision with root package name */
    public CharSequence f17078m;

    /* renamed from: n, reason: collision with root package name */
    public CharSequence f17079n;

    /* renamed from: h, reason: collision with root package name */
    public int f17073h = 4096;

    /* renamed from: j, reason: collision with root package name */
    public int f17075j = 4096;

    /* renamed from: o, reason: collision with root package name */
    public ColorStateList f17080o = null;

    /* renamed from: p, reason: collision with root package name */
    public PorterDuff.Mode f17081p = null;

    /* renamed from: q, reason: collision with root package name */
    public boolean f17082q = false;

    /* renamed from: r, reason: collision with root package name */
    public boolean f17083r = false;

    /* renamed from: s, reason: collision with root package name */
    public int f17084s = 16;

    public C1069a(Context context, int i2, int i7, int i8, int i9, CharSequence charSequence) {
        this.f17077l = context;
        this.f17066a = i7;
        this.f17067b = i2;
        this.f17068c = i9;
        this.f17069d = charSequence;
    }

    public final void a() {
        Drawable drawable = this.f17076k;
        if (drawable != null) {
            if (this.f17082q || this.f17083r) {
                Drawable wrap = E.c.wrap(drawable);
                this.f17076k = wrap;
                Drawable mutate = wrap.mutate();
                this.f17076k = mutate;
                if (this.f17082q) {
                    E.c.setTintList(mutate, this.f17080o);
                }
                if (this.f17083r) {
                    E.c.setTintMode(this.f17076k, this.f17081p);
                }
            }
        }
    }

    @Override // F.b, android.view.MenuItem
    public boolean collapseActionView() {
        return false;
    }

    @Override // F.b, android.view.MenuItem
    public boolean expandActionView() {
        return false;
    }

    @Override // android.view.MenuItem
    public ActionProvider getActionProvider() {
        throw new UnsupportedOperationException();
    }

    @Override // F.b, android.view.MenuItem
    public View getActionView() {
        return null;
    }

    @Override // F.b, android.view.MenuItem
    public int getAlphabeticModifiers() {
        return this.f17075j;
    }

    @Override // android.view.MenuItem
    public char getAlphabeticShortcut() {
        return this.f17074i;
    }

    @Override // F.b, android.view.MenuItem
    public CharSequence getContentDescription() {
        return this.f17078m;
    }

    @Override // android.view.MenuItem
    public int getGroupId() {
        return this.f17067b;
    }

    @Override // android.view.MenuItem
    public Drawable getIcon() {
        return this.f17076k;
    }

    @Override // F.b, android.view.MenuItem
    public ColorStateList getIconTintList() {
        return this.f17080o;
    }

    @Override // F.b, android.view.MenuItem
    public PorterDuff.Mode getIconTintMode() {
        return this.f17081p;
    }

    @Override // android.view.MenuItem
    public Intent getIntent() {
        return this.f17071f;
    }

    @Override // android.view.MenuItem
    public int getItemId() {
        return this.f17066a;
    }

    @Override // android.view.MenuItem
    public ContextMenu.ContextMenuInfo getMenuInfo() {
        return null;
    }

    @Override // F.b, android.view.MenuItem
    public int getNumericModifiers() {
        return this.f17073h;
    }

    @Override // android.view.MenuItem
    public char getNumericShortcut() {
        return this.f17072g;
    }

    @Override // android.view.MenuItem
    public int getOrder() {
        return this.f17068c;
    }

    @Override // android.view.MenuItem
    public SubMenu getSubMenu() {
        return null;
    }

    @Override // F.b
    public AbstractC0158e getSupportActionProvider() {
        return null;
    }

    @Override // android.view.MenuItem
    public CharSequence getTitle() {
        return this.f17069d;
    }

    @Override // android.view.MenuItem
    public CharSequence getTitleCondensed() {
        CharSequence charSequence = this.f17070e;
        return charSequence != null ? charSequence : this.f17069d;
    }

    @Override // F.b, android.view.MenuItem
    public CharSequence getTooltipText() {
        return this.f17079n;
    }

    @Override // android.view.MenuItem
    public boolean hasSubMenu() {
        return false;
    }

    @Override // F.b, android.view.MenuItem
    public boolean isActionViewExpanded() {
        return false;
    }

    @Override // android.view.MenuItem
    public boolean isCheckable() {
        return (this.f17084s & 1) != 0;
    }

    @Override // android.view.MenuItem
    public boolean isChecked() {
        return (this.f17084s & 2) != 0;
    }

    @Override // android.view.MenuItem
    public boolean isEnabled() {
        return (this.f17084s & 16) != 0;
    }

    @Override // android.view.MenuItem
    public boolean isVisible() {
        return (this.f17084s & 8) == 0;
    }

    @Override // android.view.MenuItem
    public MenuItem setActionProvider(ActionProvider actionProvider) {
        throw new UnsupportedOperationException();
    }

    @Override // android.view.MenuItem
    public MenuItem setAlphabeticShortcut(char c7) {
        this.f17074i = Character.toLowerCase(c7);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setCheckable(boolean z6) {
        this.f17084s = (z6 ? 1 : 0) | (this.f17084s & (-2));
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setChecked(boolean z6) {
        this.f17084s = (z6 ? 2 : 0) | (this.f17084s & (-3));
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setEnabled(boolean z6) {
        this.f17084s = (z6 ? 16 : 0) | (this.f17084s & (-17));
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setIcon(Drawable drawable) {
        this.f17076k = drawable;
        a();
        return this;
    }

    @Override // F.b, android.view.MenuItem
    public MenuItem setIconTintList(ColorStateList colorStateList) {
        this.f17080o = colorStateList;
        this.f17082q = true;
        a();
        return this;
    }

    @Override // F.b, android.view.MenuItem
    public MenuItem setIconTintMode(PorterDuff.Mode mode) {
        this.f17081p = mode;
        this.f17083r = true;
        a();
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setIntent(Intent intent) {
        this.f17071f = intent;
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setNumericShortcut(char c7) {
        this.f17072g = c7;
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setOnActionExpandListener(MenuItem.OnActionExpandListener onActionExpandListener) {
        throw new UnsupportedOperationException();
    }

    @Override // android.view.MenuItem
    public MenuItem setShortcut(char c7, char c8) {
        this.f17072g = c7;
        this.f17074i = Character.toLowerCase(c8);
        return this;
    }

    @Override // F.b
    public F.b setSupportActionProvider(AbstractC0158e abstractC0158e) {
        throw new UnsupportedOperationException();
    }

    @Override // android.view.MenuItem
    public MenuItem setTitle(CharSequence charSequence) {
        this.f17069d = charSequence;
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setTitleCondensed(CharSequence charSequence) {
        this.f17070e = charSequence;
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setVisible(boolean z6) {
        this.f17084s = (this.f17084s & 8) | (z6 ? 0 : 8);
        return this;
    }

    @Override // F.b, android.view.MenuItem
    public MenuItem setAlphabeticShortcut(char c7, int i2) {
        this.f17074i = Character.toLowerCase(c7);
        this.f17075j = KeyEvent.normalizeMetaState(i2);
        return this;
    }

    @Override // android.view.MenuItem
    public F.b setContentDescription(CharSequence charSequence) {
        this.f17078m = charSequence;
        return this;
    }

    @Override // F.b, android.view.MenuItem
    public MenuItem setNumericShortcut(char c7, int i2) {
        this.f17072g = c7;
        this.f17073h = KeyEvent.normalizeMetaState(i2);
        return this;
    }

    @Override // F.b, android.view.MenuItem
    public F.b setShowAsActionFlags(int i2) {
        setShowAsAction(i2);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setTitle(int i2) {
        this.f17069d = this.f17077l.getResources().getString(i2);
        return this;
    }

    @Override // android.view.MenuItem
    public F.b setTooltipText(CharSequence charSequence) {
        this.f17079n = charSequence;
        return this;
    }

    @Override // F.b, android.view.MenuItem
    public F.b setActionView(View view) {
        throw new UnsupportedOperationException();
    }

    @Override // android.view.MenuItem
    public MenuItem setIcon(int i2) {
        this.f17076k = A.h.getDrawable(this.f17077l, i2);
        a();
        return this;
    }

    @Override // F.b, android.view.MenuItem
    public MenuItem setShortcut(char c7, char c8, int i2, int i7) {
        this.f17072g = c7;
        this.f17073h = KeyEvent.normalizeMetaState(i2);
        this.f17074i = Character.toLowerCase(c8);
        this.f17075j = KeyEvent.normalizeMetaState(i7);
        return this;
    }

    @Override // F.b, android.view.MenuItem
    public F.b setActionView(int i2) {
        throw new UnsupportedOperationException();
    }

    @Override // android.view.MenuItem
    public MenuItem setOnMenuItemClickListener(MenuItem.OnMenuItemClickListener onMenuItemClickListener) {
        return this;
    }

    @Override // F.b, android.view.MenuItem
    public void setShowAsAction(int i2) {
    }
}
