package k;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import androidx.appcompat.view.menu.ListMenuItemView;
import java.util.ArrayList;

/* renamed from: k.m, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C1081m extends BaseAdapter {

    /* renamed from: b, reason: collision with root package name */
    public final C1084p f17142b;

    /* renamed from: e, reason: collision with root package name */
    public int f17143e = -1;

    /* renamed from: f, reason: collision with root package name */
    public boolean f17144f;

    /* renamed from: j, reason: collision with root package name */
    public final boolean f17145j;

    /* renamed from: m, reason: collision with root package name */
    public final LayoutInflater f17146m;

    /* renamed from: n, reason: collision with root package name */
    public final int f17147n;

    public C1081m(C1084p c1084p, LayoutInflater layoutInflater, boolean z6, int i2) {
        this.f17145j = z6;
        this.f17146m = layoutInflater;
        this.f17142b = c1084p;
        this.f17147n = i2;
        a();
    }

    public final void a() {
        C1084p c1084p = this.f17142b;
        s expandedItem = c1084p.getExpandedItem();
        if (expandedItem != null) {
            ArrayList<s> nonActionItems = c1084p.getNonActionItems();
            int size = nonActionItems.size();
            for (int i2 = 0; i2 < size; i2++) {
                if (nonActionItems.get(i2) == expandedItem) {
                    this.f17143e = i2;
                    return;
                }
            }
        }
        this.f17143e = -1;
    }

    public C1084p getAdapterMenu() {
        return this.f17142b;
    }

    @Override // android.widget.Adapter
    public int getCount() {
        boolean z6 = this.f17145j;
        C1084p c1084p = this.f17142b;
        return this.f17143e < 0 ? (z6 ? c1084p.getNonActionItems() : c1084p.getVisibleItems()).size() : r0.size() - 1;
    }

    @Override // android.widget.Adapter
    public long getItemId(int i2) {
        return i2;
    }

    @Override // android.widget.Adapter
    public View getView(int i2, View view, ViewGroup viewGroup) {
        if (view == null) {
            view = this.f17146m.inflate(this.f17147n, viewGroup, false);
        }
        int groupId = getItem(i2).getGroupId();
        int i7 = i2 - 1;
        ListMenuItemView listMenuItemView = (ListMenuItemView) view;
        listMenuItemView.setGroupDividerEnabled(this.f17142b.isGroupDividerEnabled() && groupId != (i7 >= 0 ? getItem(i7).getGroupId() : groupId));
        InterfaceC1061F interfaceC1061F = (InterfaceC1061F) view;
        if (this.f17144f) {
            listMenuItemView.setForceShowIcon(true);
        }
        interfaceC1061F.initialize(getItem(i2), 0);
        return view;
    }

    @Override // android.widget.BaseAdapter
    public void notifyDataSetChanged() {
        a();
        super.notifyDataSetChanged();
    }

    public void setForceShowIcon(boolean z6) {
        this.f17144f = z6;
    }

    @Override // android.widget.Adapter
    public s getItem(int i2) {
        boolean z6 = this.f17145j;
        C1084p c1084p = this.f17142b;
        ArrayList<s> nonActionItems = z6 ? c1084p.getNonActionItems() : c1084p.getVisibleItems();
        int i7 = this.f17143e;
        if (i7 >= 0 && i2 >= i7) {
            i2++;
        }
        return nonActionItems.get(i2);
    }
}
