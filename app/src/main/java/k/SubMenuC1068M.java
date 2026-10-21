package k;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.view.Menu;
import android.view.MenuItem;
import android.view.SubMenu;
import android.view.View;

/* renamed from: k.M, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public class SubMenuC1068M extends C1084p implements SubMenu {

    /* renamed from: A, reason: collision with root package name */
    public final s f17064A;

    /* renamed from: z, reason: collision with root package name */
    public final C1084p f17065z;

    public SubMenuC1068M(Context context, C1084p c1084p, s sVar) {
        super(context);
        this.f17065z = c1084p;
        this.f17064A = sVar;
    }

    @Override // k.C1084p
    public final boolean a(C1084p c1084p, s sVar) {
        return super.a(c1084p, sVar) || this.f17065z.a(c1084p, sVar);
    }

    @Override // k.C1084p
    public boolean collapseItemActionView(s sVar) {
        return this.f17065z.collapseItemActionView(sVar);
    }

    @Override // k.C1084p
    public boolean expandItemActionView(s sVar) {
        return this.f17065z.expandItemActionView(sVar);
    }

    @Override // k.C1084p
    public String getActionViewStatesKey() {
        s sVar = this.f17064A;
        int itemId = sVar != null ? sVar.getItemId() : 0;
        if (itemId == 0) {
            return null;
        }
        return super.getActionViewStatesKey() + ":" + itemId;
    }

    @Override // android.view.SubMenu
    public MenuItem getItem() {
        return this.f17064A;
    }

    public Menu getParentMenu() {
        return this.f17065z;
    }

    @Override // k.C1084p
    public C1084p getRootMenu() {
        return this.f17065z.getRootMenu();
    }

    @Override // k.C1084p
    public boolean isGroupDividerEnabled() {
        return this.f17065z.isGroupDividerEnabled();
    }

    @Override // k.C1084p
    public boolean isQwertyMode() {
        return this.f17065z.isQwertyMode();
    }

    @Override // k.C1084p
    public boolean isShortcutsVisible() {
        return this.f17065z.isShortcutsVisible();
    }

    @Override // k.C1084p
    public void setCallback(InterfaceC1082n interfaceC1082n) {
        this.f17065z.setCallback(interfaceC1082n);
    }

    @Override // k.C1084p, android.view.Menu
    public void setGroupDividerEnabled(boolean z6) {
        this.f17065z.setGroupDividerEnabled(z6);
    }

    @Override // android.view.SubMenu
    public SubMenu setHeaderIcon(Drawable drawable) {
        return (SubMenu) setHeaderIconInt(drawable);
    }

    @Override // android.view.SubMenu
    public SubMenu setHeaderTitle(CharSequence charSequence) {
        return (SubMenu) setHeaderTitleInt(charSequence);
    }

    @Override // android.view.SubMenu
    public SubMenu setHeaderView(View view) {
        return (SubMenu) setHeaderViewInt(view);
    }

    @Override // android.view.SubMenu
    public SubMenu setIcon(Drawable drawable) {
        this.f17064A.setIcon(drawable);
        return this;
    }

    @Override // k.C1084p, android.view.Menu
    public void setQwertyMode(boolean z6) {
        this.f17065z.setQwertyMode(z6);
    }

    @Override // android.view.SubMenu
    public SubMenu setHeaderIcon(int i2) {
        return (SubMenu) setHeaderIconInt(i2);
    }

    @Override // android.view.SubMenu
    public SubMenu setHeaderTitle(int i2) {
        return (SubMenu) setHeaderTitleInt(i2);
    }

    @Override // android.view.SubMenu
    public SubMenu setIcon(int i2) {
        this.f17064A.setIcon(i2);
        return this;
    }
}
