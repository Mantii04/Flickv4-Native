package x3;

import M.AbstractC0181p0;
import android.content.res.ColorStateList;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.RippleDrawable;
import android.os.Bundle;
import android.os.Parcelable;
import android.util.SparseArray;
import android.view.SubMenu;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.google.android.material.internal.NavigationMenuItemView;
import java.util.ArrayList;

/* renamed from: x3.q, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C1843q extends m1.V {

    /* renamed from: d, reason: collision with root package name */
    public final ArrayList f20912d = new ArrayList();

    /* renamed from: e, reason: collision with root package name */
    public k.s f20913e;

    /* renamed from: f, reason: collision with root package name */
    public boolean f20914f;

    /* renamed from: g, reason: collision with root package name */
    public final /* synthetic */ C1826A f20915g;

    public C1843q(C1826A c1826a) {
        this.f20915g = c1826a;
        a();
    }

    public final void a() {
        boolean z6;
        if (this.f20914f) {
            return;
        }
        this.f20914f = true;
        ArrayList arrayList = this.f20912d;
        arrayList.clear();
        arrayList.add(new r());
        C1826A c1826a = this.f20915g;
        int size = c1826a.f20856f.getVisibleItems().size();
        boolean z7 = false;
        int i2 = -1;
        int i7 = 0;
        boolean z8 = false;
        int i8 = 0;
        while (i7 < size) {
            k.s sVar = c1826a.f20856f.getVisibleItems().get(i7);
            if (sVar.isChecked()) {
                setCheckedItem(sVar);
            }
            if (sVar.isCheckable()) {
                sVar.setExclusiveCheckable(z7);
            }
            if (sVar.hasSubMenu()) {
                SubMenu subMenu = sVar.getSubMenu();
                if (subMenu.hasVisibleItems()) {
                    if (i7 != 0) {
                        arrayList.add(new C1845t(c1826a.f20851J, z7 ? 1 : 0));
                    }
                    arrayList.add(new C1846u(sVar));
                    int size2 = subMenu.size();
                    int i9 = z7 ? 1 : 0;
                    int i10 = i9;
                    while (i9 < size2) {
                        k.s sVar2 = (k.s) subMenu.getItem(i9);
                        if (sVar2.isVisible()) {
                            if (i10 == 0 && sVar2.getIcon() != null) {
                                i10 = 1;
                            }
                            if (sVar2.isCheckable()) {
                                sVar2.setExclusiveCheckable(z7);
                            }
                            if (sVar.isChecked()) {
                                setCheckedItem(sVar);
                            }
                            arrayList.add(new C1846u(sVar2));
                        }
                        i9++;
                        z7 = false;
                    }
                    if (i10 != 0) {
                        int size3 = arrayList.size();
                        for (int size4 = arrayList.size(); size4 < size3; size4++) {
                            ((C1846u) arrayList.get(size4)).f20919b = true;
                        }
                    }
                }
                z6 = true;
            } else {
                int groupId = sVar.getGroupId();
                if (groupId != i2) {
                    i8 = arrayList.size();
                    z8 = sVar.getIcon() != null;
                    if (i7 != 0) {
                        i8++;
                        int i11 = c1826a.f20851J;
                        arrayList.add(new C1845t(i11, i11));
                    }
                } else if (!z8 && sVar.getIcon() != null) {
                    int size5 = arrayList.size();
                    for (int i12 = i8; i12 < size5; i12++) {
                        ((C1846u) arrayList.get(i12)).f20919b = true;
                    }
                    z6 = true;
                    z8 = true;
                    C1846u c1846u = new C1846u(sVar);
                    c1846u.f20919b = z8;
                    arrayList.add(c1846u);
                    i2 = groupId;
                }
                z6 = true;
                C1846u c1846u2 = new C1846u(sVar);
                c1846u2.f20919b = z8;
                arrayList.add(c1846u2);
                i2 = groupId;
            }
            i7++;
            z7 = false;
        }
        this.f20914f = z7 ? 1 : 0;
    }

    public Bundle createInstanceState() {
        Bundle bundle = new Bundle();
        k.s sVar = this.f20913e;
        if (sVar != null) {
            bundle.putInt("android:menu:checked", sVar.getItemId());
        }
        SparseArray<? extends Parcelable> sparseArray = new SparseArray<>();
        ArrayList arrayList = this.f20912d;
        int size = arrayList.size();
        for (int i2 = 0; i2 < size; i2++) {
            InterfaceC1844s interfaceC1844s = (InterfaceC1844s) arrayList.get(i2);
            if (interfaceC1844s instanceof C1846u) {
                k.s menuItem = ((C1846u) interfaceC1844s).getMenuItem();
                View actionView = menuItem != null ? menuItem.getActionView() : null;
                if (actionView != null) {
                    D d7 = new D();
                    actionView.saveHierarchyState(d7);
                    sparseArray.put(menuItem.getItemId(), d7);
                }
            }
        }
        bundle.putSparseParcelableArray("android:menu:action_views", sparseArray);
        return bundle;
    }

    public k.s getCheckedItem() {
        return this.f20913e;
    }

    @Override // m1.V
    public int getItemCount() {
        return this.f20912d.size();
    }

    @Override // m1.V
    public long getItemId(int i2) {
        return i2;
    }

    @Override // m1.V
    public int getItemViewType(int i2) {
        InterfaceC1844s interfaceC1844s = (InterfaceC1844s) this.f20912d.get(i2);
        if (interfaceC1844s instanceof C1845t) {
            return 2;
        }
        if (interfaceC1844s instanceof r) {
            return 3;
        }
        if (interfaceC1844s instanceof C1846u) {
            return ((C1846u) interfaceC1844s).getMenuItem().hasSubMenu() ? 1 : 0;
        }
        throw new RuntimeException("Unknown item type.");
    }

    public void restoreInstanceState(Bundle bundle) {
        k.s menuItem;
        View actionView;
        D d7;
        k.s menuItem2;
        int i2 = bundle.getInt("android:menu:checked", 0);
        ArrayList arrayList = this.f20912d;
        if (i2 != 0) {
            this.f20914f = true;
            int size = arrayList.size();
            int i7 = 0;
            while (true) {
                if (i7 >= size) {
                    break;
                }
                InterfaceC1844s interfaceC1844s = (InterfaceC1844s) arrayList.get(i7);
                if ((interfaceC1844s instanceof C1846u) && (menuItem2 = ((C1846u) interfaceC1844s).getMenuItem()) != null && menuItem2.getItemId() == i2) {
                    setCheckedItem(menuItem2);
                    break;
                }
                i7++;
            }
            this.f20914f = false;
            a();
        }
        SparseArray sparseParcelableArray = bundle.getSparseParcelableArray("android:menu:action_views");
        if (sparseParcelableArray != null) {
            int size2 = arrayList.size();
            for (int i8 = 0; i8 < size2; i8++) {
                InterfaceC1844s interfaceC1844s2 = (InterfaceC1844s) arrayList.get(i8);
                if ((interfaceC1844s2 instanceof C1846u) && (menuItem = ((C1846u) interfaceC1844s2).getMenuItem()) != null && (actionView = menuItem.getActionView()) != null && (d7 = (D) sparseParcelableArray.get(menuItem.getItemId())) != null) {
                    actionView.restoreHierarchyState(d7);
                }
            }
        }
    }

    public void setCheckedItem(k.s sVar) {
        if (this.f20913e == sVar || !sVar.isCheckable()) {
            return;
        }
        k.s sVar2 = this.f20913e;
        if (sVar2 != null) {
            sVar2.setChecked(false);
        }
        this.f20913e = sVar;
        sVar.setChecked(true);
    }

    public void setUpdateSuspended(boolean z6) {
        this.f20914f = z6;
    }

    public void update() {
        a();
        notifyDataSetChanged();
    }

    @Override // m1.V
    public void onBindViewHolder(z zVar, int i2) {
        int itemViewType = getItemViewType(i2);
        ArrayList arrayList = this.f20912d;
        C1826A c1826a = this.f20915g;
        if (itemViewType != 0) {
            if (itemViewType != 1) {
                if (itemViewType != 2) {
                    return;
                }
                C1845t c1845t = (C1845t) arrayList.get(i2);
                zVar.f18217a.setPadding(c1826a.f20843B, c1845t.getPaddingTop(), c1826a.f20844C, c1845t.getPaddingBottom());
                return;
            }
            TextView textView = (TextView) zVar.f18217a;
            textView.setText(((C1846u) arrayList.get(i2)).getMenuItem().getTitle());
            S.A.setTextAppearance(textView, c1826a.f20860p);
            textView.setPadding(c1826a.f20845D, textView.getPaddingTop(), c1826a.f20846E, textView.getPaddingBottom());
            ColorStateList colorStateList = c1826a.f20861q;
            if (colorStateList != null) {
                textView.setTextColor(colorStateList);
            }
            AbstractC0181p0.setAccessibilityDelegate(textView, new C1842p(this, i2, true));
            return;
        }
        NavigationMenuItemView navigationMenuItemView = (NavigationMenuItemView) zVar.f18217a;
        navigationMenuItemView.setIconTintList(c1826a.f20865u);
        navigationMenuItemView.setTextAppearance(c1826a.f20862r);
        ColorStateList colorStateList2 = c1826a.f20864t;
        if (colorStateList2 != null) {
            navigationMenuItemView.setTextColor(colorStateList2);
        }
        Drawable drawable = c1826a.f20866v;
        AbstractC0181p0.setBackground(navigationMenuItemView, drawable != null ? drawable.getConstantState().newDrawable() : null);
        RippleDrawable rippleDrawable = c1826a.f20867w;
        if (rippleDrawable != null) {
            navigationMenuItemView.setForeground(rippleDrawable.getConstantState().newDrawable());
        }
        C1846u c1846u = (C1846u) arrayList.get(i2);
        navigationMenuItemView.setNeedsEmptyIcon(c1846u.f20919b);
        int i7 = c1826a.f20868x;
        int i8 = c1826a.f20869y;
        navigationMenuItemView.setPadding(i7, i8, i7, i8);
        navigationMenuItemView.setIconPadding(c1826a.f20870z);
        if (c1826a.f20847F) {
            navigationMenuItemView.setIconSize(c1826a.f20842A);
        }
        navigationMenuItemView.setMaxLines(c1826a.f20849H);
        navigationMenuItemView.initialize(c1846u.getMenuItem(), c1826a.f20863s);
        AbstractC0181p0.setAccessibilityDelegate(navigationMenuItemView, new C1842p(this, i2, false));
    }

    @Override // m1.V
    public z onCreateViewHolder(ViewGroup viewGroup, int i2) {
        C1826A c1826a = this.f20915g;
        if (i2 == 0) {
            return new w(c1826a.f20859n, viewGroup, c1826a.f20853L);
        }
        if (i2 == 1) {
            return new y(c1826a.f20859n, viewGroup);
        }
        if (i2 == 2) {
            return new x(c1826a.f20859n, viewGroup);
        }
        if (i2 != 3) {
            return null;
        }
        return new C1841o(c1826a.f20855e);
    }

    @Override // m1.V
    public void onViewRecycled(z zVar) {
        if (zVar instanceof w) {
            ((NavigationMenuItemView) zVar.f18217a).recycle();
        }
    }
}
