package k;

import android.content.Context;
import android.os.Bundle;
import android.os.Parcelable;
import android.util.SparseArray;
import android.view.ContextThemeWrapper;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.ListAdapter;
import androidx.appcompat.R;
import androidx.appcompat.view.menu.ExpandedMenuView;

/* renamed from: k.l, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C1080l implements InterfaceC1060E, AdapterView.OnItemClickListener {

    /* renamed from: b, reason: collision with root package name */
    public Context f17134b;

    /* renamed from: e, reason: collision with root package name */
    public LayoutInflater f17135e;

    /* renamed from: f, reason: collision with root package name */
    public C1084p f17136f;

    /* renamed from: j, reason: collision with root package name */
    public ExpandedMenuView f17137j;

    /* renamed from: m, reason: collision with root package name */
    public final int f17138m;

    /* renamed from: n, reason: collision with root package name */
    public final int f17139n;

    /* renamed from: p, reason: collision with root package name */
    public InterfaceC1059D f17140p;

    /* renamed from: q, reason: collision with root package name */
    public C1079k f17141q;

    public C1080l(Context context, int i2) {
        this(i2, 0);
        this.f17134b = context;
        this.f17135e = LayoutInflater.from(context);
    }

    @Override // k.InterfaceC1060E
    public boolean collapseItemActionView(C1084p c1084p, s sVar) {
        return false;
    }

    @Override // k.InterfaceC1060E
    public boolean expandItemActionView(C1084p c1084p, s sVar) {
        return false;
    }

    @Override // k.InterfaceC1060E
    public boolean flagActionItems() {
        return false;
    }

    public ListAdapter getAdapter() {
        if (this.f17141q == null) {
            this.f17141q = new C1079k(this);
        }
        return this.f17141q;
    }

    @Override // k.InterfaceC1060E
    public int getId() {
        return 0;
    }

    public InterfaceC1062G getMenuView(ViewGroup viewGroup) {
        if (this.f17137j == null) {
            this.f17137j = (ExpandedMenuView) this.f17135e.inflate(R.layout.abc_expanded_menu_layout, viewGroup, false);
            if (this.f17141q == null) {
                this.f17141q = new C1079k(this);
            }
            this.f17137j.setAdapter((ListAdapter) this.f17141q);
            this.f17137j.setOnItemClickListener(this);
        }
        return this.f17137j;
    }

    @Override // k.InterfaceC1060E
    public void initForMenu(Context context, C1084p c1084p) {
        int i2 = this.f17138m;
        if (i2 != 0) {
            ContextThemeWrapper contextThemeWrapper = new ContextThemeWrapper(context, i2);
            this.f17134b = contextThemeWrapper;
            this.f17135e = LayoutInflater.from(contextThemeWrapper);
        } else if (this.f17134b != null) {
            this.f17134b = context;
            if (this.f17135e == null) {
                this.f17135e = LayoutInflater.from(context);
            }
        }
        this.f17136f = c1084p;
        C1079k c1079k = this.f17141q;
        if (c1079k != null) {
            c1079k.notifyDataSetChanged();
        }
    }

    @Override // k.InterfaceC1060E
    public void onCloseMenu(C1084p c1084p, boolean z6) {
        InterfaceC1059D interfaceC1059D = this.f17140p;
        if (interfaceC1059D != null) {
            interfaceC1059D.onCloseMenu(c1084p, z6);
        }
    }

    @Override // android.widget.AdapterView.OnItemClickListener
    public void onItemClick(AdapterView<?> adapterView, View view, int i2, long j7) {
        this.f17136f.performItemAction(this.f17141q.getItem(i2), this, 0);
    }

    @Override // k.InterfaceC1060E
    public void onRestoreInstanceState(Parcelable parcelable) {
        restoreHierarchyState((Bundle) parcelable);
    }

    @Override // k.InterfaceC1060E
    public Parcelable onSaveInstanceState() {
        if (this.f17137j == null) {
            return null;
        }
        Bundle bundle = new Bundle();
        saveHierarchyState(bundle);
        return bundle;
    }

    @Override // k.InterfaceC1060E
    public boolean onSubMenuSelected(SubMenuC1068M subMenuC1068M) {
        if (!subMenuC1068M.hasVisibleItems()) {
            return false;
        }
        new DialogInterfaceOnKeyListenerC1085q(subMenuC1068M).show(null);
        InterfaceC1059D interfaceC1059D = this.f17140p;
        if (interfaceC1059D == null) {
            return true;
        }
        interfaceC1059D.onOpenSubMenu(subMenuC1068M);
        return true;
    }

    public void restoreHierarchyState(Bundle bundle) {
        SparseArray<Parcelable> sparseParcelableArray = bundle.getSparseParcelableArray("android:menu:list");
        if (sparseParcelableArray != null) {
            this.f17137j.restoreHierarchyState(sparseParcelableArray);
        }
    }

    public void saveHierarchyState(Bundle bundle) {
        SparseArray<Parcelable> sparseArray = new SparseArray<>();
        ExpandedMenuView expandedMenuView = this.f17137j;
        if (expandedMenuView != null) {
            expandedMenuView.saveHierarchyState(sparseArray);
        }
        bundle.putSparseParcelableArray("android:menu:list", sparseArray);
    }

    @Override // k.InterfaceC1060E
    public void setCallback(InterfaceC1059D interfaceC1059D) {
        this.f17140p = interfaceC1059D;
    }

    @Override // k.InterfaceC1060E
    public void updateMenuView(boolean z6) {
        C1079k c1079k = this.f17141q;
        if (c1079k != null) {
            c1079k.notifyDataSetChanged();
        }
    }

    public C1080l(int i2, int i7) {
        this.f17139n = i2;
        this.f17138m = i7;
    }
}
