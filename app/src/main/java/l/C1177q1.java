package l;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.widget.HeaderViewListAdapter;
import android.widget.ListAdapter;
import androidx.appcompat.view.menu.ListMenuItemView;
import k.C1081m;
import k.C1084p;

/* renamed from: l.q1, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C1177q1 extends W0 {

    /* renamed from: v, reason: collision with root package name */
    public final int f17970v;

    /* renamed from: w, reason: collision with root package name */
    public final int f17971w;

    /* renamed from: x, reason: collision with root package name */
    public InterfaceC1165m1 f17972x;

    /* renamed from: y, reason: collision with root package name */
    public k.s f17973y;

    public C1177q1(Context context, boolean z6) {
        super(context, z6);
        if (1 == AbstractC1174p1.a(context.getResources().getConfiguration())) {
            this.f17970v = 21;
            this.f17971w = 22;
        } else {
            this.f17970v = 22;
            this.f17971w = 21;
        }
    }

    @Override // l.W0, android.view.ViewGroup, android.view.View
    public /* bridge */ /* synthetic */ boolean hasFocus() {
        return super.hasFocus();
    }

    @Override // l.W0, android.view.View
    public /* bridge */ /* synthetic */ boolean hasWindowFocus() {
        return super.hasWindowFocus();
    }

    @Override // l.W0, android.view.View
    public /* bridge */ /* synthetic */ boolean isFocused() {
        return super.isFocused();
    }

    @Override // l.W0, android.view.View
    public /* bridge */ /* synthetic */ boolean isInTouchMode() {
        return super.isInTouchMode();
    }

    @Override // l.W0
    public /* bridge */ /* synthetic */ int measureHeightOfChildrenCompat(int i2, int i7, int i8, int i9, int i10) {
        return super.measureHeightOfChildrenCompat(i2, i7, i8, i9, i10);
    }

    @Override // l.W0
    public /* bridge */ /* synthetic */ boolean onForwardedEvent(MotionEvent motionEvent, int i2) {
        return super.onForwardedEvent(motionEvent, i2);
    }

    @Override // l.W0, android.view.View
    public boolean onHoverEvent(MotionEvent motionEvent) {
        C1081m c1081m;
        int i2;
        int pointToPosition;
        int i7;
        if (this.f17972x != null) {
            ListAdapter adapter = getAdapter();
            if (adapter instanceof HeaderViewListAdapter) {
                HeaderViewListAdapter headerViewListAdapter = (HeaderViewListAdapter) adapter;
                i2 = headerViewListAdapter.getHeadersCount();
                c1081m = (C1081m) headerViewListAdapter.getWrappedAdapter();
            } else {
                c1081m = (C1081m) adapter;
                i2 = 0;
            }
            k.s item = (motionEvent.getAction() == 10 || (pointToPosition = pointToPosition((int) motionEvent.getX(), (int) motionEvent.getY())) == -1 || (i7 = pointToPosition - i2) < 0 || i7 >= c1081m.getCount()) ? null : c1081m.getItem(i7);
            k.s sVar = this.f17973y;
            if (sVar != item) {
                C1084p adapterMenu = c1081m.getAdapterMenu();
                if (sVar != null) {
                    this.f17972x.onItemHoverExit(adapterMenu, sVar);
                }
                this.f17973y = item;
                if (item != null) {
                    this.f17972x.onItemHoverEnter(adapterMenu, item);
                }
            }
        }
        return super.onHoverEvent(motionEvent);
    }

    @Override // android.widget.ListView, android.widget.AbsListView, android.view.View, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i2, KeyEvent keyEvent) {
        ListMenuItemView listMenuItemView = (ListMenuItemView) getSelectedView();
        if (listMenuItemView != null && i2 == this.f17970v) {
            if (listMenuItemView.isEnabled() && listMenuItemView.getItemData().hasSubMenu()) {
                performItemClick(listMenuItemView, getSelectedItemPosition(), getSelectedItemId());
            }
            return true;
        }
        if (listMenuItemView == null || i2 != this.f17971w) {
            return super.onKeyDown(i2, keyEvent);
        }
        setSelection(-1);
        ListAdapter adapter = getAdapter();
        (adapter instanceof HeaderViewListAdapter ? (C1081m) ((HeaderViewListAdapter) adapter).getWrappedAdapter() : (C1081m) adapter).getAdapterMenu().close(false);
        return true;
    }

    @Override // l.W0, android.widget.AbsListView, android.view.View
    public /* bridge */ /* synthetic */ boolean onTouchEvent(MotionEvent motionEvent) {
        return super.onTouchEvent(motionEvent);
    }

    public void setHoverListener(InterfaceC1165m1 interfaceC1165m1) {
        this.f17972x = interfaceC1165m1;
    }

    @Override // l.W0, android.widget.AbsListView
    public /* bridge */ /* synthetic */ void setSelector(Drawable drawable) {
        super.setSelector(drawable);
    }
}
