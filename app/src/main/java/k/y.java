package k;

import M.AbstractC0158e;
import android.content.Context;
import android.content.Intent;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.util.Log;
import android.view.ActionProvider;
import android.view.CollapsibleActionView;
import android.view.ContextMenu;
import android.view.MenuItem;
import android.view.SubMenu;
import android.view.View;
import e.V;
import java.lang.reflect.Method;

/* loaded from: classes.dex */
public final class y extends V implements MenuItem {

    /* renamed from: c, reason: collision with root package name */
    public final F.b f17214c;

    /* renamed from: d, reason: collision with root package name */
    public Method f17215d;

    public y(Context context, F.b bVar) {
        super(context);
        if (bVar == null) {
            throw new IllegalArgumentException("Wrapped Object can not be null.");
        }
        this.f17214c = bVar;
    }

    @Override // android.view.MenuItem
    public boolean collapseActionView() {
        return this.f17214c.collapseActionView();
    }

    @Override // android.view.MenuItem
    public boolean expandActionView() {
        return this.f17214c.expandActionView();
    }

    @Override // android.view.MenuItem
    public ActionProvider getActionProvider() {
        AbstractC0158e supportActionProvider = this.f17214c.getSupportActionProvider();
        if (supportActionProvider instanceof t) {
            return ((t) supportActionProvider).f17206c;
        }
        return null;
    }

    @Override // android.view.MenuItem
    public View getActionView() {
        View actionView = this.f17214c.getActionView();
        return actionView instanceof v ? (View) ((v) actionView).f17209b : actionView;
    }

    @Override // android.view.MenuItem
    public int getAlphabeticModifiers() {
        return this.f17214c.getAlphabeticModifiers();
    }

    @Override // android.view.MenuItem
    public char getAlphabeticShortcut() {
        return this.f17214c.getAlphabeticShortcut();
    }

    @Override // android.view.MenuItem
    public CharSequence getContentDescription() {
        return this.f17214c.getContentDescription();
    }

    @Override // android.view.MenuItem
    public int getGroupId() {
        return this.f17214c.getGroupId();
    }

    @Override // android.view.MenuItem
    public Drawable getIcon() {
        return this.f17214c.getIcon();
    }

    @Override // android.view.MenuItem
    public ColorStateList getIconTintList() {
        return this.f17214c.getIconTintList();
    }

    @Override // android.view.MenuItem
    public PorterDuff.Mode getIconTintMode() {
        return this.f17214c.getIconTintMode();
    }

    @Override // android.view.MenuItem
    public Intent getIntent() {
        return this.f17214c.getIntent();
    }

    @Override // android.view.MenuItem
    public int getItemId() {
        return this.f17214c.getItemId();
    }

    @Override // android.view.MenuItem
    public ContextMenu.ContextMenuInfo getMenuInfo() {
        return this.f17214c.getMenuInfo();
    }

    @Override // android.view.MenuItem
    public int getNumericModifiers() {
        return this.f17214c.getNumericModifiers();
    }

    @Override // android.view.MenuItem
    public char getNumericShortcut() {
        return this.f17214c.getNumericShortcut();
    }

    @Override // android.view.MenuItem
    public int getOrder() {
        return this.f17214c.getOrder();
    }

    @Override // android.view.MenuItem
    public SubMenu getSubMenu() {
        return this.f17214c.getSubMenu();
    }

    @Override // android.view.MenuItem
    public CharSequence getTitle() {
        return this.f17214c.getTitle();
    }

    @Override // android.view.MenuItem
    public CharSequence getTitleCondensed() {
        return this.f17214c.getTitleCondensed();
    }

    @Override // android.view.MenuItem
    public CharSequence getTooltipText() {
        return this.f17214c.getTooltipText();
    }

    @Override // android.view.MenuItem
    public boolean hasSubMenu() {
        return this.f17214c.hasSubMenu();
    }

    @Override // android.view.MenuItem
    public boolean isActionViewExpanded() {
        return this.f17214c.isActionViewExpanded();
    }

    @Override // android.view.MenuItem
    public boolean isCheckable() {
        return this.f17214c.isCheckable();
    }

    @Override // android.view.MenuItem
    public boolean isChecked() {
        return this.f17214c.isChecked();
    }

    @Override // android.view.MenuItem
    public boolean isEnabled() {
        return this.f17214c.isEnabled();
    }

    @Override // android.view.MenuItem
    public boolean isVisible() {
        return this.f17214c.isVisible();
    }

    @Override // android.view.MenuItem
    public MenuItem setActionProvider(ActionProvider actionProvider) {
        u uVar = new u(this, (Context) this.f13664a, actionProvider);
        if (actionProvider == null) {
            uVar = null;
        }
        this.f17214c.setSupportActionProvider(uVar);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setActionView(View view) {
        if (view instanceof CollapsibleActionView) {
            view = new v(view);
        }
        this.f17214c.setActionView(view);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setAlphabeticShortcut(char c7) {
        this.f17214c.setAlphabeticShortcut(c7);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setCheckable(boolean z6) {
        this.f17214c.setCheckable(z6);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setChecked(boolean z6) {
        this.f17214c.setChecked(z6);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setContentDescription(CharSequence charSequence) {
        this.f17214c.setContentDescription(charSequence);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setEnabled(boolean z6) {
        this.f17214c.setEnabled(z6);
        return this;
    }

    public void setExclusiveCheckable(boolean z6) {
        try {
            Method method = this.f17215d;
            F.b bVar = this.f17214c;
            if (method == null) {
                this.f17215d = bVar.getClass().getDeclaredMethod("setExclusiveCheckable", Boolean.TYPE);
            }
            this.f17215d.invoke(bVar, Boolean.valueOf(z6));
        } catch (Exception e3) {
            Log.w("MenuItemWrapper", "Error while calling setExclusiveCheckable", e3);
        }
    }

    @Override // android.view.MenuItem
    public MenuItem setIcon(Drawable drawable) {
        this.f17214c.setIcon(drawable);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setIconTintList(ColorStateList colorStateList) {
        this.f17214c.setIconTintList(colorStateList);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setIconTintMode(PorterDuff.Mode mode) {
        this.f17214c.setIconTintMode(mode);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setIntent(Intent intent) {
        this.f17214c.setIntent(intent);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setNumericShortcut(char c7) {
        this.f17214c.setNumericShortcut(c7);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setOnActionExpandListener(MenuItem.OnActionExpandListener onActionExpandListener) {
        this.f17214c.setOnActionExpandListener(onActionExpandListener != null ? new w(this, onActionExpandListener) : null);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setOnMenuItemClickListener(MenuItem.OnMenuItemClickListener onMenuItemClickListener) {
        this.f17214c.setOnMenuItemClickListener(onMenuItemClickListener != null ? new x(this, onMenuItemClickListener) : null);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setShortcut(char c7, char c8) {
        this.f17214c.setShortcut(c7, c8);
        return this;
    }

    @Override // android.view.MenuItem
    public void setShowAsAction(int i2) {
        this.f17214c.setShowAsAction(i2);
    }

    @Override // android.view.MenuItem
    public MenuItem setShowAsActionFlags(int i2) {
        this.f17214c.setShowAsActionFlags(i2);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setTitle(CharSequence charSequence) {
        this.f17214c.setTitle(charSequence);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setTitleCondensed(CharSequence charSequence) {
        this.f17214c.setTitleCondensed(charSequence);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setTooltipText(CharSequence charSequence) {
        this.f17214c.setTooltipText(charSequence);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setVisible(boolean z6) {
        return this.f17214c.setVisible(z6);
    }

    @Override // android.view.MenuItem
    public MenuItem setAlphabeticShortcut(char c7, int i2) {
        this.f17214c.setAlphabeticShortcut(c7, i2);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setIcon(int i2) {
        this.f17214c.setIcon(i2);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setNumericShortcut(char c7, int i2) {
        this.f17214c.setNumericShortcut(c7, i2);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setShortcut(char c7, char c8, int i2, int i7) {
        this.f17214c.setShortcut(c7, c8, i2, i7);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setTitle(int i2) {
        this.f17214c.setTitle(i2);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setActionView(int i2) {
        F.b bVar = this.f17214c;
        bVar.setActionView(i2);
        View actionView = bVar.getActionView();
        if (actionView instanceof CollapsibleActionView) {
            bVar.setActionView(new v(actionView));
        }
        return this;
    }
}
