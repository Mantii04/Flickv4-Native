package k;

import M.AbstractC0158e;
import M.AbstractC0188t0;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.os.Parcelable;
import android.util.SparseArray;
import android.view.KeyCharacterMap;
import android.view.KeyEvent;
import android.view.MenuItem;
import android.view.SubMenu;
import android.view.View;
import android.view.ViewConfiguration;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;

/* renamed from: k.p, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public class C1084p implements F.a {

    /* renamed from: y, reason: collision with root package name */
    public static final int[] f17148y = {1, 4, 5, 3, 2, 0};

    /* renamed from: a, reason: collision with root package name */
    public final Context f17149a;

    /* renamed from: b, reason: collision with root package name */
    public final Resources f17150b;

    /* renamed from: c, reason: collision with root package name */
    public boolean f17151c;

    /* renamed from: d, reason: collision with root package name */
    public final boolean f17152d;

    /* renamed from: e, reason: collision with root package name */
    public InterfaceC1082n f17153e;

    /* renamed from: f, reason: collision with root package name */
    public final ArrayList f17154f;

    /* renamed from: g, reason: collision with root package name */
    public final ArrayList f17155g;

    /* renamed from: h, reason: collision with root package name */
    public boolean f17156h;

    /* renamed from: i, reason: collision with root package name */
    public final ArrayList f17157i;

    /* renamed from: j, reason: collision with root package name */
    public final ArrayList f17158j;

    /* renamed from: k, reason: collision with root package name */
    public boolean f17159k;

    /* renamed from: m, reason: collision with root package name */
    public CharSequence f17161m;

    /* renamed from: n, reason: collision with root package name */
    public Drawable f17162n;

    /* renamed from: o, reason: collision with root package name */
    public View f17163o;

    /* renamed from: v, reason: collision with root package name */
    public s f17170v;

    /* renamed from: x, reason: collision with root package name */
    public boolean f17172x;

    /* renamed from: l, reason: collision with root package name */
    public int f17160l = 0;

    /* renamed from: p, reason: collision with root package name */
    public boolean f17164p = false;

    /* renamed from: q, reason: collision with root package name */
    public boolean f17165q = false;

    /* renamed from: r, reason: collision with root package name */
    public boolean f17166r = false;

    /* renamed from: s, reason: collision with root package name */
    public boolean f17167s = false;

    /* renamed from: t, reason: collision with root package name */
    public final ArrayList f17168t = new ArrayList();

    /* renamed from: u, reason: collision with root package name */
    public final CopyOnWriteArrayList f17169u = new CopyOnWriteArrayList();

    /* renamed from: w, reason: collision with root package name */
    public boolean f17171w = false;

    public C1084p(Context context) {
        boolean z6 = false;
        this.f17149a = context;
        Resources resources = context.getResources();
        this.f17150b = resources;
        this.f17154f = new ArrayList();
        this.f17155g = new ArrayList();
        this.f17156h = true;
        this.f17157i = new ArrayList();
        this.f17158j = new ArrayList();
        this.f17159k = true;
        if (resources.getConfiguration().keyboard != 1 && AbstractC0188t0.shouldShowMenuShortcutsWhenKeyboardPresent(ViewConfiguration.get(context), context)) {
            z6 = true;
        }
        this.f17152d = z6;
    }

    public boolean a(C1084p c1084p, s sVar) {
        InterfaceC1082n interfaceC1082n = this.f17153e;
        return interfaceC1082n != null && interfaceC1082n.onMenuItemSelected(c1084p, sVar);
    }

    @Override // android.view.Menu
    public MenuItem add(CharSequence charSequence) {
        return addInternal(0, 0, 0, charSequence);
    }

    @Override // android.view.Menu
    public int addIntentOptions(int i2, int i7, int i8, ComponentName componentName, Intent[] intentArr, Intent intent, int i9, MenuItem[] menuItemArr) {
        int i10;
        PackageManager packageManager = this.f17149a.getPackageManager();
        List<ResolveInfo> queryIntentActivityOptions = packageManager.queryIntentActivityOptions(componentName, intentArr, intent, 0);
        int size = queryIntentActivityOptions != null ? queryIntentActivityOptions.size() : 0;
        if ((i9 & 1) == 0) {
            removeGroup(i2);
        }
        for (int i11 = 0; i11 < size; i11++) {
            ResolveInfo resolveInfo = queryIntentActivityOptions.get(i11);
            int i12 = resolveInfo.specificIndex;
            Intent intent2 = new Intent(i12 < 0 ? intent : intentArr[i12]);
            ActivityInfo activityInfo = resolveInfo.activityInfo;
            intent2.setComponent(new ComponentName(activityInfo.applicationInfo.packageName, activityInfo.name));
            MenuItem intent3 = add(i2, i7, i8, resolveInfo.loadLabel(packageManager)).setIcon(resolveInfo.loadIcon(packageManager)).setIntent(intent2);
            if (menuItemArr != null && (i10 = resolveInfo.specificIndex) >= 0) {
                menuItemArr[i10] = intent3;
            }
        }
        return size;
    }

    public MenuItem addInternal(int i2, int i7, int i8, CharSequence charSequence) {
        int i9;
        int i10 = ((-65536) & i8) >> 16;
        if (i10 < 0 || i10 >= 6) {
            throw new IllegalArgumentException("order does not contain a valid category.");
        }
        int i11 = (f17148y[i10] << 16) | (65535 & i8);
        s sVar = new s(this, i2, i7, i8, i11, charSequence, this.f17160l);
        ArrayList arrayList = this.f17154f;
        int size = arrayList.size() - 1;
        while (true) {
            if (size < 0) {
                i9 = 0;
                break;
            }
            if (((s) arrayList.get(size)).getOrdering() <= i11) {
                i9 = size + 1;
                break;
            }
            size--;
        }
        arrayList.add(i9, sVar);
        onItemsChanged(true);
        return sVar;
    }

    public void addMenuPresenter(InterfaceC1060E interfaceC1060E) {
        addMenuPresenter(interfaceC1060E, this.f17149a);
    }

    @Override // android.view.Menu
    public SubMenu addSubMenu(CharSequence charSequence) {
        return addSubMenu(0, 0, 0, charSequence);
    }

    public final s b(int i2, KeyEvent keyEvent) {
        ArrayList arrayList = this.f17168t;
        arrayList.clear();
        c(arrayList, i2, keyEvent);
        if (arrayList.isEmpty()) {
            return null;
        }
        int metaState = keyEvent.getMetaState();
        KeyCharacterMap.KeyData keyData = new KeyCharacterMap.KeyData();
        keyEvent.getKeyData(keyData);
        int size = arrayList.size();
        if (size == 1) {
            return (s) arrayList.get(0);
        }
        boolean isQwertyMode = isQwertyMode();
        for (int i7 = 0; i7 < size; i7++) {
            s sVar = (s) arrayList.get(i7);
            char alphabeticShortcut = isQwertyMode ? sVar.getAlphabeticShortcut() : sVar.getNumericShortcut();
            char[] cArr = keyData.meta;
            if ((alphabeticShortcut == cArr[0] && (metaState & 2) == 0) || ((alphabeticShortcut == cArr[2] && (metaState & 2) != 0) || (isQwertyMode && alphabeticShortcut == '\b' && i2 == 67))) {
                return sVar;
            }
        }
        return null;
    }

    public final void c(ArrayList arrayList, int i2, KeyEvent keyEvent) {
        boolean isQwertyMode = isQwertyMode();
        int modifiers = keyEvent.getModifiers();
        KeyCharacterMap.KeyData keyData = new KeyCharacterMap.KeyData();
        if (keyEvent.getKeyData(keyData) || i2 == 67) {
            ArrayList arrayList2 = this.f17154f;
            int size = arrayList2.size();
            for (int i7 = 0; i7 < size; i7++) {
                s sVar = (s) arrayList2.get(i7);
                if (sVar.hasSubMenu()) {
                    ((C1084p) sVar.getSubMenu()).c(arrayList, i2, keyEvent);
                }
                char alphabeticShortcut = isQwertyMode ? sVar.getAlphabeticShortcut() : sVar.getNumericShortcut();
                if ((modifiers & 69647) == ((isQwertyMode ? sVar.getAlphabeticModifiers() : sVar.getNumericModifiers()) & 69647) && alphabeticShortcut != 0) {
                    char[] cArr = keyData.meta;
                    if ((alphabeticShortcut == cArr[0] || alphabeticShortcut == cArr[2] || (isQwertyMode && alphabeticShortcut == '\b' && i2 == 67)) && sVar.isEnabled()) {
                        arrayList.add(sVar);
                    }
                }
            }
        }
    }

    public void changeMenuMode() {
        InterfaceC1082n interfaceC1082n = this.f17153e;
        if (interfaceC1082n != null) {
            interfaceC1082n.onMenuModeChange(this);
        }
    }

    @Override // android.view.Menu
    public void clear() {
        s sVar = this.f17170v;
        if (sVar != null) {
            collapseItemActionView(sVar);
        }
        this.f17154f.clear();
        onItemsChanged(true);
    }

    public void clearHeader() {
        this.f17162n = null;
        this.f17161m = null;
        this.f17163o = null;
        onItemsChanged(false);
    }

    public final void close(boolean z6) {
        if (this.f17167s) {
            return;
        }
        this.f17167s = true;
        CopyOnWriteArrayList copyOnWriteArrayList = this.f17169u;
        Iterator it = copyOnWriteArrayList.iterator();
        while (it.hasNext()) {
            WeakReference weakReference = (WeakReference) it.next();
            InterfaceC1060E interfaceC1060E = (InterfaceC1060E) weakReference.get();
            if (interfaceC1060E == null) {
                copyOnWriteArrayList.remove(weakReference);
            } else {
                interfaceC1060E.onCloseMenu(this, z6);
            }
        }
        this.f17167s = false;
    }

    public boolean collapseItemActionView(s sVar) {
        CopyOnWriteArrayList copyOnWriteArrayList = this.f17169u;
        boolean z6 = false;
        if (!copyOnWriteArrayList.isEmpty() && this.f17170v == sVar) {
            stopDispatchingItemsChanged();
            Iterator it = copyOnWriteArrayList.iterator();
            while (it.hasNext()) {
                WeakReference weakReference = (WeakReference) it.next();
                InterfaceC1060E interfaceC1060E = (InterfaceC1060E) weakReference.get();
                if (interfaceC1060E == null) {
                    copyOnWriteArrayList.remove(weakReference);
                } else {
                    z6 = interfaceC1060E.collapseItemActionView(this, sVar);
                    if (z6) {
                        break;
                    }
                }
            }
            startDispatchingItemsChanged();
            if (z6) {
                this.f17170v = null;
            }
        }
        return z6;
    }

    public final void d(int i2, CharSequence charSequence, int i7, Drawable drawable, View view) {
        if (view != null) {
            this.f17163o = view;
            this.f17161m = null;
            this.f17162n = null;
        } else {
            if (i2 > 0) {
                this.f17161m = this.f17150b.getText(i2);
            } else if (charSequence != null) {
                this.f17161m = charSequence;
            }
            if (i7 > 0) {
                this.f17162n = A.h.getDrawable(getContext(), i7);
            } else if (drawable != null) {
                this.f17162n = drawable;
            }
            this.f17163o = null;
        }
        onItemsChanged(false);
    }

    public boolean expandItemActionView(s sVar) {
        CopyOnWriteArrayList copyOnWriteArrayList = this.f17169u;
        boolean z6 = false;
        if (copyOnWriteArrayList.isEmpty()) {
            return false;
        }
        stopDispatchingItemsChanged();
        Iterator it = copyOnWriteArrayList.iterator();
        while (it.hasNext()) {
            WeakReference weakReference = (WeakReference) it.next();
            InterfaceC1060E interfaceC1060E = (InterfaceC1060E) weakReference.get();
            if (interfaceC1060E == null) {
                copyOnWriteArrayList.remove(weakReference);
            } else {
                z6 = interfaceC1060E.expandItemActionView(this, sVar);
                if (z6) {
                    break;
                }
            }
        }
        startDispatchingItemsChanged();
        if (z6) {
            this.f17170v = sVar;
        }
        return z6;
    }

    public int findGroupIndex(int i2) {
        return findGroupIndex(i2, 0);
    }

    @Override // android.view.Menu
    public MenuItem findItem(int i2) {
        MenuItem findItem;
        int size = size();
        for (int i7 = 0; i7 < size; i7++) {
            s sVar = (s) this.f17154f.get(i7);
            if (sVar.getItemId() == i2) {
                return sVar;
            }
            if (sVar.hasSubMenu() && (findItem = sVar.getSubMenu().findItem(i2)) != null) {
                return findItem;
            }
        }
        return null;
    }

    public int findItemIndex(int i2) {
        int size = size();
        for (int i7 = 0; i7 < size; i7++) {
            if (((s) this.f17154f.get(i7)).getItemId() == i2) {
                return i7;
            }
        }
        return -1;
    }

    public void flagActionItems() {
        ArrayList<s> visibleItems = getVisibleItems();
        if (this.f17159k) {
            CopyOnWriteArrayList copyOnWriteArrayList = this.f17169u;
            Iterator it = copyOnWriteArrayList.iterator();
            boolean z6 = false;
            while (it.hasNext()) {
                WeakReference weakReference = (WeakReference) it.next();
                InterfaceC1060E interfaceC1060E = (InterfaceC1060E) weakReference.get();
                if (interfaceC1060E == null) {
                    copyOnWriteArrayList.remove(weakReference);
                } else {
                    z6 |= interfaceC1060E.flagActionItems();
                }
            }
            ArrayList arrayList = this.f17157i;
            ArrayList arrayList2 = this.f17158j;
            if (z6) {
                arrayList.clear();
                arrayList2.clear();
                int size = visibleItems.size();
                for (int i2 = 0; i2 < size; i2++) {
                    s sVar = visibleItems.get(i2);
                    if (sVar.isActionButton()) {
                        arrayList.add(sVar);
                    } else {
                        arrayList2.add(sVar);
                    }
                }
            } else {
                arrayList.clear();
                arrayList2.clear();
                arrayList2.addAll(getVisibleItems());
            }
            this.f17159k = false;
        }
    }

    public ArrayList<s> getActionItems() {
        flagActionItems();
        return this.f17157i;
    }

    public String getActionViewStatesKey() {
        return "android:menu:actionviewstates";
    }

    public Context getContext() {
        return this.f17149a;
    }

    public s getExpandedItem() {
        return this.f17170v;
    }

    public Drawable getHeaderIcon() {
        return this.f17162n;
    }

    public CharSequence getHeaderTitle() {
        return this.f17161m;
    }

    public View getHeaderView() {
        return this.f17163o;
    }

    @Override // android.view.Menu
    public MenuItem getItem(int i2) {
        return (MenuItem) this.f17154f.get(i2);
    }

    public ArrayList<s> getNonActionItems() {
        flagActionItems();
        return this.f17158j;
    }

    public ArrayList<s> getVisibleItems() {
        boolean z6 = this.f17156h;
        ArrayList<s> arrayList = this.f17155g;
        if (!z6) {
            return arrayList;
        }
        arrayList.clear();
        ArrayList arrayList2 = this.f17154f;
        int size = arrayList2.size();
        for (int i2 = 0; i2 < size; i2++) {
            s sVar = (s) arrayList2.get(i2);
            if (sVar.isVisible()) {
                arrayList.add(sVar);
            }
        }
        this.f17156h = false;
        this.f17159k = true;
        return arrayList;
    }

    @Override // android.view.Menu
    public boolean hasVisibleItems() {
        if (this.f17172x) {
            return true;
        }
        int size = size();
        for (int i2 = 0; i2 < size; i2++) {
            if (((s) this.f17154f.get(i2)).isVisible()) {
                return true;
            }
        }
        return false;
    }

    public boolean isGroupDividerEnabled() {
        return this.f17171w;
    }

    public boolean isQwertyMode() {
        return this.f17151c;
    }

    @Override // android.view.Menu
    public boolean isShortcutKey(int i2, KeyEvent keyEvent) {
        return b(i2, keyEvent) != null;
    }

    public boolean isShortcutsVisible() {
        return this.f17152d;
    }

    public void onItemsChanged(boolean z6) {
        if (this.f17164p) {
            this.f17165q = true;
            if (z6) {
                this.f17166r = true;
                return;
            }
            return;
        }
        if (z6) {
            this.f17156h = true;
            this.f17159k = true;
        }
        CopyOnWriteArrayList copyOnWriteArrayList = this.f17169u;
        if (copyOnWriteArrayList.isEmpty()) {
            return;
        }
        stopDispatchingItemsChanged();
        Iterator it = copyOnWriteArrayList.iterator();
        while (it.hasNext()) {
            WeakReference weakReference = (WeakReference) it.next();
            InterfaceC1060E interfaceC1060E = (InterfaceC1060E) weakReference.get();
            if (interfaceC1060E == null) {
                copyOnWriteArrayList.remove(weakReference);
            } else {
                interfaceC1060E.updateMenuView(z6);
            }
        }
        startDispatchingItemsChanged();
    }

    @Override // android.view.Menu
    public boolean performIdentifierAction(int i2, int i7) {
        return performItemAction(findItem(i2), i7);
    }

    public boolean performItemAction(MenuItem menuItem, int i2) {
        return performItemAction(menuItem, null, i2);
    }

    @Override // android.view.Menu
    public boolean performShortcut(int i2, KeyEvent keyEvent, int i7) {
        s b7 = b(i2, keyEvent);
        boolean performItemAction = b7 != null ? performItemAction(b7, i7) : false;
        if ((i7 & 2) != 0) {
            close(true);
        }
        return performItemAction;
    }

    @Override // android.view.Menu
    public void removeGroup(int i2) {
        int findGroupIndex = findGroupIndex(i2);
        if (findGroupIndex >= 0) {
            ArrayList arrayList = this.f17154f;
            int size = arrayList.size() - findGroupIndex;
            int i7 = 0;
            while (true) {
                int i8 = i7 + 1;
                if (i7 >= size || ((s) arrayList.get(findGroupIndex)).getGroupId() != i2) {
                    break;
                }
                if (findGroupIndex >= 0) {
                    ArrayList arrayList2 = this.f17154f;
                    if (findGroupIndex < arrayList2.size()) {
                        arrayList2.remove(findGroupIndex);
                    }
                }
                i7 = i8;
            }
            onItemsChanged(true);
        }
    }

    @Override // android.view.Menu
    public void removeItem(int i2) {
        int findItemIndex = findItemIndex(i2);
        if (findItemIndex >= 0) {
            ArrayList arrayList = this.f17154f;
            if (findItemIndex >= arrayList.size()) {
                return;
            }
            arrayList.remove(findItemIndex);
            onItemsChanged(true);
        }
    }

    public void removeMenuPresenter(InterfaceC1060E interfaceC1060E) {
        CopyOnWriteArrayList copyOnWriteArrayList = this.f17169u;
        Iterator it = copyOnWriteArrayList.iterator();
        while (it.hasNext()) {
            WeakReference weakReference = (WeakReference) it.next();
            InterfaceC1060E interfaceC1060E2 = (InterfaceC1060E) weakReference.get();
            if (interfaceC1060E2 == null || interfaceC1060E2 == interfaceC1060E) {
                copyOnWriteArrayList.remove(weakReference);
            }
        }
    }

    public void restoreActionViewStates(Bundle bundle) {
        MenuItem findItem;
        if (bundle == null) {
            return;
        }
        SparseArray<Parcelable> sparseParcelableArray = bundle.getSparseParcelableArray(getActionViewStatesKey());
        int size = size();
        for (int i2 = 0; i2 < size; i2++) {
            MenuItem item = getItem(i2);
            View actionView = item.getActionView();
            if (actionView != null && actionView.getId() != -1) {
                actionView.restoreHierarchyState(sparseParcelableArray);
            }
            if (item.hasSubMenu()) {
                ((SubMenuC1068M) item.getSubMenu()).restoreActionViewStates(bundle);
            }
        }
        int i7 = bundle.getInt("android:menu:expandedactionview");
        if (i7 <= 0 || (findItem = findItem(i7)) == null) {
            return;
        }
        findItem.expandActionView();
    }

    public void restorePresenterStates(Bundle bundle) {
        Parcelable parcelable;
        SparseArray sparseParcelableArray = bundle.getSparseParcelableArray("android:menu:presenters");
        if (sparseParcelableArray != null) {
            CopyOnWriteArrayList copyOnWriteArrayList = this.f17169u;
            if (copyOnWriteArrayList.isEmpty()) {
                return;
            }
            Iterator it = copyOnWriteArrayList.iterator();
            while (it.hasNext()) {
                WeakReference weakReference = (WeakReference) it.next();
                InterfaceC1060E interfaceC1060E = (InterfaceC1060E) weakReference.get();
                if (interfaceC1060E == null) {
                    copyOnWriteArrayList.remove(weakReference);
                } else {
                    int id = interfaceC1060E.getId();
                    if (id > 0 && (parcelable = (Parcelable) sparseParcelableArray.get(id)) != null) {
                        interfaceC1060E.onRestoreInstanceState(parcelable);
                    }
                }
            }
        }
    }

    public void saveActionViewStates(Bundle bundle) {
        int size = size();
        SparseArray<? extends Parcelable> sparseArray = null;
        for (int i2 = 0; i2 < size; i2++) {
            MenuItem item = getItem(i2);
            View actionView = item.getActionView();
            if (actionView != null && actionView.getId() != -1) {
                if (sparseArray == null) {
                    sparseArray = new SparseArray<>();
                }
                actionView.saveHierarchyState(sparseArray);
                if (item.isActionViewExpanded()) {
                    bundle.putInt("android:menu:expandedactionview", item.getItemId());
                }
            }
            if (item.hasSubMenu()) {
                ((SubMenuC1068M) item.getSubMenu()).saveActionViewStates(bundle);
            }
        }
        if (sparseArray != null) {
            bundle.putSparseParcelableArray(getActionViewStatesKey(), sparseArray);
        }
    }

    public void savePresenterStates(Bundle bundle) {
        Parcelable onSaveInstanceState;
        CopyOnWriteArrayList copyOnWriteArrayList = this.f17169u;
        if (copyOnWriteArrayList.isEmpty()) {
            return;
        }
        SparseArray<? extends Parcelable> sparseArray = new SparseArray<>();
        Iterator it = copyOnWriteArrayList.iterator();
        while (it.hasNext()) {
            WeakReference weakReference = (WeakReference) it.next();
            InterfaceC1060E interfaceC1060E = (InterfaceC1060E) weakReference.get();
            if (interfaceC1060E == null) {
                copyOnWriteArrayList.remove(weakReference);
            } else {
                int id = interfaceC1060E.getId();
                if (id > 0 && (onSaveInstanceState = interfaceC1060E.onSaveInstanceState()) != null) {
                    sparseArray.put(id, onSaveInstanceState);
                }
            }
        }
        bundle.putSparseParcelableArray("android:menu:presenters", sparseArray);
    }

    public void setCallback(InterfaceC1082n interfaceC1082n) {
        this.f17153e = interfaceC1082n;
    }

    public C1084p setDefaultShowAsAction(int i2) {
        this.f17160l = i2;
        return this;
    }

    @Override // android.view.Menu
    public void setGroupCheckable(int i2, boolean z6, boolean z7) {
        ArrayList arrayList = this.f17154f;
        int size = arrayList.size();
        for (int i7 = 0; i7 < size; i7++) {
            s sVar = (s) arrayList.get(i7);
            if (sVar.getGroupId() == i2) {
                sVar.setExclusiveCheckable(z7);
                sVar.setCheckable(z6);
            }
        }
    }

    @Override // android.view.Menu
    public void setGroupDividerEnabled(boolean z6) {
        this.f17171w = z6;
    }

    @Override // android.view.Menu
    public void setGroupEnabled(int i2, boolean z6) {
        ArrayList arrayList = this.f17154f;
        int size = arrayList.size();
        for (int i7 = 0; i7 < size; i7++) {
            s sVar = (s) arrayList.get(i7);
            if (sVar.getGroupId() == i2) {
                sVar.setEnabled(z6);
            }
        }
    }

    @Override // android.view.Menu
    public void setGroupVisible(int i2, boolean z6) {
        ArrayList arrayList = this.f17154f;
        int size = arrayList.size();
        boolean z7 = false;
        for (int i7 = 0; i7 < size; i7++) {
            s sVar = (s) arrayList.get(i7);
            if (sVar.getGroupId() == i2) {
                int i8 = sVar.f17203x;
                int i9 = (i8 & (-9)) | (z6 ? 0 : 8);
                sVar.f17203x = i9;
                if (i8 != i9) {
                    z7 = true;
                }
            }
        }
        if (z7) {
            onItemsChanged(true);
        }
    }

    public C1084p setHeaderIconInt(Drawable drawable) {
        d(0, null, 0, drawable, null);
        return this;
    }

    public C1084p setHeaderTitleInt(CharSequence charSequence) {
        d(0, charSequence, 0, null, null);
        return this;
    }

    public C1084p setHeaderViewInt(View view) {
        d(0, null, 0, null, view);
        return this;
    }

    public void setOverrideVisibleItems(boolean z6) {
        this.f17172x = z6;
    }

    @Override // android.view.Menu
    public void setQwertyMode(boolean z6) {
        this.f17151c = z6;
        onItemsChanged(false);
    }

    @Override // android.view.Menu
    public int size() {
        return this.f17154f.size();
    }

    public void startDispatchingItemsChanged() {
        this.f17164p = false;
        if (this.f17165q) {
            this.f17165q = false;
            onItemsChanged(this.f17166r);
        }
    }

    public void stopDispatchingItemsChanged() {
        if (this.f17164p) {
            return;
        }
        this.f17164p = true;
        this.f17165q = false;
        this.f17166r = false;
    }

    @Override // android.view.Menu
    public MenuItem add(int i2) {
        return addInternal(0, 0, 0, this.f17150b.getString(i2));
    }

    public void addMenuPresenter(InterfaceC1060E interfaceC1060E, Context context) {
        this.f17169u.add(new WeakReference(interfaceC1060E));
        interfaceC1060E.initForMenu(context, this);
        this.f17159k = true;
    }

    @Override // android.view.Menu
    public SubMenu addSubMenu(int i2) {
        return addSubMenu(0, 0, 0, this.f17150b.getString(i2));
    }

    public int findGroupIndex(int i2, int i7) {
        int size = size();
        if (i7 < 0) {
            i7 = 0;
        }
        while (i7 < size) {
            if (((s) this.f17154f.get(i7)).getGroupId() == i2) {
                return i7;
            }
            i7++;
        }
        return -1;
    }

    public boolean performItemAction(MenuItem menuItem, InterfaceC1060E interfaceC1060E, int i2) {
        s sVar = (s) menuItem;
        if (sVar == null || !sVar.isEnabled()) {
            return false;
        }
        boolean invoke = sVar.invoke();
        AbstractC0158e supportActionProvider = sVar.getSupportActionProvider();
        boolean z6 = supportActionProvider != null && supportActionProvider.hasSubMenu();
        if (sVar.hasCollapsibleActionView()) {
            boolean expandActionView = sVar.expandActionView() | invoke;
            if (expandActionView) {
                close(true);
            }
            return expandActionView;
        }
        if (!sVar.hasSubMenu() && !z6) {
            if ((i2 & 1) == 0) {
                close(true);
            }
            return invoke;
        }
        if ((i2 & 4) == 0) {
            close(false);
        }
        if (!sVar.hasSubMenu()) {
            sVar.setSubMenu(new SubMenuC1068M(getContext(), this, sVar));
        }
        SubMenuC1068M subMenuC1068M = (SubMenuC1068M) sVar.getSubMenu();
        if (z6) {
            supportActionProvider.onPrepareSubMenu(subMenuC1068M);
        }
        CopyOnWriteArrayList copyOnWriteArrayList = this.f17169u;
        if (!copyOnWriteArrayList.isEmpty()) {
            r0 = interfaceC1060E != null ? interfaceC1060E.onSubMenuSelected(subMenuC1068M) : false;
            Iterator it = copyOnWriteArrayList.iterator();
            while (it.hasNext()) {
                WeakReference weakReference = (WeakReference) it.next();
                InterfaceC1060E interfaceC1060E2 = (InterfaceC1060E) weakReference.get();
                if (interfaceC1060E2 == null) {
                    copyOnWriteArrayList.remove(weakReference);
                } else if (!r0) {
                    r0 = interfaceC1060E2.onSubMenuSelected(subMenuC1068M);
                }
            }
        }
        boolean z7 = invoke | r0;
        if (!z7) {
            close(true);
        }
        return z7;
    }

    public C1084p setHeaderIconInt(int i2) {
        d(0, null, i2, null, null);
        return this;
    }

    public C1084p setHeaderTitleInt(int i2) {
        d(i2, null, 0, null, null);
        return this;
    }

    @Override // android.view.Menu
    public MenuItem add(int i2, int i7, int i8, CharSequence charSequence) {
        return addInternal(i2, i7, i8, charSequence);
    }

    @Override // android.view.Menu
    public SubMenu addSubMenu(int i2, int i7, int i8, CharSequence charSequence) {
        s sVar = (s) addInternal(i2, i7, i8, charSequence);
        SubMenuC1068M subMenuC1068M = new SubMenuC1068M(this.f17149a, this, sVar);
        sVar.setSubMenu(subMenuC1068M);
        return subMenuC1068M;
    }

    @Override // android.view.Menu
    public MenuItem add(int i2, int i7, int i8, int i9) {
        return addInternal(i2, i7, i8, this.f17150b.getString(i9));
    }

    @Override // android.view.Menu
    public SubMenu addSubMenu(int i2, int i7, int i8, int i9) {
        return addSubMenu(i2, i7, i8, this.f17150b.getString(i9));
    }

    @Override // android.view.Menu
    public void close() {
        close(true);
    }

    public C1084p getRootMenu() {
        return this;
    }
}
