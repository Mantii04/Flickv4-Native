package k;

import android.content.Context;
import android.graphics.Rect;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.FrameLayout;
import android.widget.HeaderViewListAdapter;
import android.widget.ListAdapter;
import android.widget.PopupWindow;

/* loaded from: classes.dex */
public abstract class z implements InterfaceC1064I, InterfaceC1060E, AdapterView.OnItemClickListener {

    /* renamed from: b, reason: collision with root package name */
    public Rect f17216b;

    public static int measureIndividualMenuWidth(ListAdapter listAdapter, ViewGroup viewGroup, Context context, int i2) {
        int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(0, 0);
        int makeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(0, 0);
        int count = listAdapter.getCount();
        int i7 = 0;
        int i8 = 0;
        View view = null;
        for (int i9 = 0; i9 < count; i9++) {
            int itemViewType = listAdapter.getItemViewType(i9);
            if (itemViewType != i8) {
                view = null;
                i8 = itemViewType;
            }
            if (viewGroup == null) {
                viewGroup = new FrameLayout(context);
            }
            view = listAdapter.getView(i9, view, viewGroup);
            view.measure(makeMeasureSpec, makeMeasureSpec2);
            int measuredWidth = view.getMeasuredWidth();
            if (measuredWidth >= i2) {
                return i2;
            }
            if (measuredWidth > i7) {
                i7 = measuredWidth;
            }
        }
        return i7;
    }

    public static boolean shouldPreserveIconSpacing(C1084p c1084p) {
        int size = c1084p.size();
        for (int i2 = 0; i2 < size; i2++) {
            MenuItem item = c1084p.getItem(i2);
            if (item.isVisible() && item.getIcon() != null) {
                return true;
            }
        }
        return false;
    }

    public static C1081m toMenuAdapter(ListAdapter listAdapter) {
        return listAdapter instanceof HeaderViewListAdapter ? (C1081m) ((HeaderViewListAdapter) listAdapter).getWrappedAdapter() : (C1081m) listAdapter;
    }

    public abstract void addMenu(C1084p c1084p);

    public boolean closeMenuOnSubMenuOpened() {
        return true;
    }

    @Override // k.InterfaceC1060E
    public boolean collapseItemActionView(C1084p c1084p, s sVar) {
        return false;
    }

    @Override // k.InterfaceC1060E
    public boolean expandItemActionView(C1084p c1084p, s sVar) {
        return false;
    }

    public Rect getEpicenterBounds() {
        return this.f17216b;
    }

    @Override // k.InterfaceC1060E
    public int getId() {
        return 0;
    }

    @Override // android.widget.AdapterView.OnItemClickListener
    public void onItemClick(AdapterView<?> adapterView, View view, int i2, long j7) {
        ListAdapter listAdapter = (ListAdapter) adapterView.getAdapter();
        toMenuAdapter(listAdapter).f17142b.performItemAction((MenuItem) listAdapter.getItem(i2), this, closeMenuOnSubMenuOpened() ? 0 : 4);
    }

    public abstract void setAnchorView(View view);

    public void setEpicenterBounds(Rect rect) {
        this.f17216b = rect;
    }

    public abstract void setForceShowIcon(boolean z6);

    public abstract void setGravity(int i2);

    public abstract void setHorizontalOffset(int i2);

    public abstract void setOnDismissListener(PopupWindow.OnDismissListener onDismissListener);

    public abstract void setShowTitle(boolean z6);

    public abstract void setVerticalOffset(int i2);

    @Override // k.InterfaceC1060E
    public void initForMenu(Context context, C1084p c1084p) {
    }
}
