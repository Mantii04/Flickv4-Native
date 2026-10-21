package k;

import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import java.util.ArrayList;

/* renamed from: k.k, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C1079k extends BaseAdapter {

    /* renamed from: b, reason: collision with root package name */
    public int f17132b = -1;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ C1080l f17133e;

    public C1079k(C1080l c1080l) {
        this.f17133e = c1080l;
        a();
    }

    public final void a() {
        C1080l c1080l = this.f17133e;
        s expandedItem = c1080l.f17136f.getExpandedItem();
        if (expandedItem != null) {
            ArrayList<s> nonActionItems = c1080l.f17136f.getNonActionItems();
            int size = nonActionItems.size();
            for (int i2 = 0; i2 < size; i2++) {
                if (nonActionItems.get(i2) == expandedItem) {
                    this.f17132b = i2;
                    return;
                }
            }
        }
        this.f17132b = -1;
    }

    @Override // android.widget.Adapter
    public int getCount() {
        C1080l c1080l = this.f17133e;
        int size = c1080l.f17136f.getNonActionItems().size();
        c1080l.getClass();
        return this.f17132b < 0 ? size : size - 1;
    }

    @Override // android.widget.Adapter
    public long getItemId(int i2) {
        return i2;
    }

    @Override // android.widget.Adapter
    public View getView(int i2, View view, ViewGroup viewGroup) {
        if (view == null) {
            C1080l c1080l = this.f17133e;
            view = c1080l.f17135e.inflate(c1080l.f17139n, viewGroup, false);
        }
        ((InterfaceC1061F) view).initialize(getItem(i2), 0);
        return view;
    }

    @Override // android.widget.BaseAdapter
    public void notifyDataSetChanged() {
        a();
        super.notifyDataSetChanged();
    }

    @Override // android.widget.Adapter
    public s getItem(int i2) {
        C1080l c1080l = this.f17133e;
        ArrayList<s> nonActionItems = c1080l.f17136f.getNonActionItems();
        c1080l.getClass();
        int i7 = this.f17132b;
        if (i7 >= 0 && i2 >= i7) {
            i2++;
        }
        return nonActionItems.get(i2);
    }
}
