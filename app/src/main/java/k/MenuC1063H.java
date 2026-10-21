package k;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.view.KeyEvent;
import android.view.Menu;
import android.view.MenuItem;
import android.view.SubMenu;
import e.V;

/* renamed from: k.H, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public class MenuC1063H extends V implements Menu {

    /* renamed from: c, reason: collision with root package name */
    public final F.a f17040c;

    public MenuC1063H(Context context, F.a aVar) {
        super(context);
        if (aVar == null) {
            throw new IllegalArgumentException("Wrapped Object can not be null.");
        }
        this.f17040c = aVar;
    }

    @Override // android.view.Menu
    public MenuItem add(CharSequence charSequence) {
        return c(((C1084p) this.f17040c).add(charSequence));
    }

    @Override // android.view.Menu
    public int addIntentOptions(int i2, int i7, int i8, ComponentName componentName, Intent[] intentArr, Intent intent, int i9, MenuItem[] menuItemArr) {
        MenuItem[] menuItemArr2 = menuItemArr != null ? new MenuItem[menuItemArr.length] : null;
        int addIntentOptions = ((C1084p) this.f17040c).addIntentOptions(i2, i7, i8, componentName, intentArr, intent, i9, menuItemArr2);
        if (menuItemArr2 != null) {
            int length = menuItemArr2.length;
            for (int i10 = 0; i10 < length; i10++) {
                menuItemArr[i10] = c(menuItemArr2[i10]);
            }
        }
        return addIntentOptions;
    }

    @Override // android.view.Menu
    public SubMenu addSubMenu(CharSequence charSequence) {
        return ((C1084p) this.f17040c).addSubMenu(charSequence);
    }

    @Override // android.view.Menu
    public void clear() {
        p.q qVar = (p.q) this.f13665b;
        if (qVar != null) {
            qVar.clear();
        }
        ((C1084p) this.f17040c).clear();
    }

    @Override // android.view.Menu
    public void close() {
        ((C1084p) this.f17040c).close();
    }

    @Override // android.view.Menu
    public MenuItem findItem(int i2) {
        return c(((C1084p) this.f17040c).findItem(i2));
    }

    @Override // android.view.Menu
    public MenuItem getItem(int i2) {
        return c(((C1084p) this.f17040c).getItem(i2));
    }

    @Override // android.view.Menu
    public boolean hasVisibleItems() {
        return ((C1084p) this.f17040c).hasVisibleItems();
    }

    @Override // android.view.Menu
    public boolean isShortcutKey(int i2, KeyEvent keyEvent) {
        return ((C1084p) this.f17040c).isShortcutKey(i2, keyEvent);
    }

    @Override // android.view.Menu
    public boolean performIdentifierAction(int i2, int i7) {
        return ((C1084p) this.f17040c).performIdentifierAction(i2, i7);
    }

    @Override // android.view.Menu
    public boolean performShortcut(int i2, KeyEvent keyEvent, int i7) {
        return ((C1084p) this.f17040c).performShortcut(i2, keyEvent, i7);
    }

    @Override // android.view.Menu
    public void removeGroup(int i2) {
        if (((p.q) this.f13665b) != null) {
            int i7 = 0;
            while (i7 < ((p.q) this.f13665b).size()) {
                if (((F.b) ((p.q) this.f13665b).keyAt(i7)).getGroupId() == i2) {
                    ((p.q) this.f13665b).removeAt(i7);
                    i7--;
                }
                i7++;
            }
        }
        ((C1084p) this.f17040c).removeGroup(i2);
    }

    @Override // android.view.Menu
    public void removeItem(int i2) {
        if (((p.q) this.f13665b) != null) {
            int i7 = 0;
            while (true) {
                if (i7 >= ((p.q) this.f13665b).size()) {
                    break;
                }
                if (((F.b) ((p.q) this.f13665b).keyAt(i7)).getItemId() == i2) {
                    ((p.q) this.f13665b).removeAt(i7);
                    break;
                }
                i7++;
            }
        }
        ((C1084p) this.f17040c).removeItem(i2);
    }

    @Override // android.view.Menu
    public void setGroupCheckable(int i2, boolean z6, boolean z7) {
        ((C1084p) this.f17040c).setGroupCheckable(i2, z6, z7);
    }

    @Override // android.view.Menu
    public void setGroupEnabled(int i2, boolean z6) {
        ((C1084p) this.f17040c).setGroupEnabled(i2, z6);
    }

    @Override // android.view.Menu
    public void setGroupVisible(int i2, boolean z6) {
        ((C1084p) this.f17040c).setGroupVisible(i2, z6);
    }

    @Override // android.view.Menu
    public void setQwertyMode(boolean z6) {
        this.f17040c.setQwertyMode(z6);
    }

    @Override // android.view.Menu
    public int size() {
        return ((C1084p) this.f17040c).size();
    }

    @Override // android.view.Menu
    public MenuItem add(int i2) {
        return c(((C1084p) this.f17040c).add(i2));
    }

    @Override // android.view.Menu
    public SubMenu addSubMenu(int i2) {
        return ((C1084p) this.f17040c).addSubMenu(i2);
    }

    @Override // android.view.Menu
    public MenuItem add(int i2, int i7, int i8, CharSequence charSequence) {
        return c(((C1084p) this.f17040c).add(i2, i7, i8, charSequence));
    }

    @Override // android.view.Menu
    public SubMenu addSubMenu(int i2, int i7, int i8, CharSequence charSequence) {
        return this.f17040c.addSubMenu(i2, i7, i8, charSequence);
    }

    @Override // android.view.Menu
    public MenuItem add(int i2, int i7, int i8, int i9) {
        return c(((C1084p) this.f17040c).add(i2, i7, i8, i9));
    }

    @Override // android.view.Menu
    public SubMenu addSubMenu(int i2, int i7, int i8, int i9) {
        return ((C1084p) this.f17040c).addSubMenu(i2, i7, i8, i9);
    }
}
