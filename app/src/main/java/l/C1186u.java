package l;

import M.AbstractC0158e;
import M.InterfaceC0154c;
import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.os.Parcelable;
import android.util.SparseBooleanArray;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import androidx.appcompat.R;
import androidx.appcompat.view.menu.ActionMenuItemView;
import androidx.appcompat.widget.ActionMenuView;
import j.C1018a;
import java.util.ArrayList;
import k.AbstractC1072d;
import k.C1084p;
import k.InterfaceC1061F;
import k.InterfaceC1062G;
import k.SubMenuC1068M;

/* renamed from: l.u, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C1186u extends AbstractC1072d implements InterfaceC0154c {

    /* renamed from: A, reason: collision with root package name */
    public boolean f18005A;

    /* renamed from: B, reason: collision with root package name */
    public final SparseBooleanArray f18006B;

    /* renamed from: C, reason: collision with root package name */
    public C1175q f18007C;

    /* renamed from: D, reason: collision with root package name */
    public C1160l f18008D;

    /* renamed from: E, reason: collision with root package name */
    public RunnableC1166n f18009E;

    /* renamed from: F, reason: collision with root package name */
    public C1163m f18010F;

    /* renamed from: G, reason: collision with root package name */
    public final r f18011G;

    /* renamed from: H, reason: collision with root package name */
    public int f18012H;

    /* renamed from: s, reason: collision with root package name */
    public C1172p f18013s;

    /* renamed from: t, reason: collision with root package name */
    public Drawable f18014t;

    /* renamed from: u, reason: collision with root package name */
    public boolean f18015u;

    /* renamed from: v, reason: collision with root package name */
    public boolean f18016v;

    /* renamed from: w, reason: collision with root package name */
    public boolean f18017w;

    /* renamed from: x, reason: collision with root package name */
    public int f18018x;

    /* renamed from: y, reason: collision with root package name */
    public int f18019y;

    /* renamed from: z, reason: collision with root package name */
    public int f18020z;

    public C1186u(Context context) {
        super(context, R.layout.abc_action_menu_layout, R.layout.abc_action_menu_item_layout);
        this.f18006B = new SparseBooleanArray();
        this.f18011G = new r(this);
    }

    @Override // k.AbstractC1072d
    public void bindItemView(k.s sVar, InterfaceC1061F interfaceC1061F) {
        interfaceC1061F.initialize(sVar, 0);
        ActionMenuItemView actionMenuItemView = (ActionMenuItemView) interfaceC1061F;
        actionMenuItemView.setItemInvoker((ActionMenuView) this.f17093q);
        if (this.f18010F == null) {
            this.f18010F = new C1163m(this);
        }
        actionMenuItemView.setPopupCallback(this.f18010F);
    }

    public boolean dismissPopupMenus() {
        return hideOverflowMenu() | hideSubMenus();
    }

    @Override // k.AbstractC1072d
    public boolean filterLeftoverView(ViewGroup viewGroup, int i2) {
        if (viewGroup.getChildAt(i2) == this.f18013s) {
            return false;
        }
        return super.filterLeftoverView(viewGroup, i2);
    }

    @Override // k.InterfaceC1060E
    public boolean flagActionItems() {
        ArrayList<k.s> arrayList;
        int i2;
        boolean z6;
        boolean z7;
        boolean z8;
        C1084p c1084p = this.f17088f;
        View view = null;
        boolean z9 = false;
        if (c1084p != null) {
            arrayList = c1084p.getVisibleItems();
            i2 = arrayList.size();
        } else {
            arrayList = null;
            i2 = 0;
        }
        int i7 = this.f18020z;
        int i8 = this.f18019y;
        int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(0, 0);
        ViewGroup viewGroup = (ViewGroup) this.f17093q;
        int i9 = 0;
        boolean z10 = false;
        int i10 = 0;
        int i11 = 0;
        while (true) {
            z6 = true;
            if (i9 >= i2) {
                break;
            }
            k.s sVar = arrayList.get(i9);
            if (sVar.requiresActionButton()) {
                i10++;
            } else if (sVar.requestsActionButton()) {
                i11++;
            } else {
                z10 = true;
            }
            if (this.f18005A && sVar.isActionViewExpanded()) {
                i7 = 0;
            }
            i9++;
        }
        if (this.f18016v && (z10 || i11 + i10 > i7)) {
            i7--;
        }
        int i12 = i7 - i10;
        SparseBooleanArray sparseBooleanArray = this.f18006B;
        sparseBooleanArray.clear();
        int i13 = 0;
        int i14 = 0;
        while (i13 < i2) {
            k.s sVar2 = arrayList.get(i13);
            if (sVar2.requiresActionButton()) {
                View itemView = getItemView(sVar2, view, viewGroup);
                itemView.measure(makeMeasureSpec, makeMeasureSpec);
                int measuredWidth = itemView.getMeasuredWidth();
                i8 -= measuredWidth;
                if (i14 == 0) {
                    i14 = measuredWidth;
                }
                int groupId = sVar2.getGroupId();
                if (groupId != 0) {
                    sparseBooleanArray.put(groupId, z6);
                }
                sVar2.setIsActionButton(z6);
                z7 = z9;
                z8 = z6;
            } else if (sVar2.requestsActionButton()) {
                int groupId2 = sVar2.getGroupId();
                boolean z11 = sparseBooleanArray.get(groupId2);
                boolean z12 = ((i12 > 0 || z11) && i8 > 0) ? z6 : z9;
                if (z12) {
                    View itemView2 = getItemView(sVar2, view, viewGroup);
                    itemView2.measure(makeMeasureSpec, makeMeasureSpec);
                    int measuredWidth2 = itemView2.getMeasuredWidth();
                    i8 -= measuredWidth2;
                    if (i14 == 0) {
                        i14 = measuredWidth2;
                    }
                    z12 &= i8 + i14 > 0 ? z6 : false;
                }
                boolean z13 = z12;
                if (z13 && groupId2 != 0) {
                    sparseBooleanArray.put(groupId2, z6);
                } else if (z11) {
                    sparseBooleanArray.put(groupId2, false);
                    int i15 = 0;
                    while (i15 < i13) {
                        k.s sVar3 = arrayList.get(i15);
                        boolean z14 = z6;
                        if (sVar3.getGroupId() == groupId2) {
                            if (sVar3.isActionButton()) {
                                i12++;
                            }
                            sVar3.setIsActionButton(false);
                        }
                        i15++;
                        z6 = z14;
                    }
                }
                z8 = z6;
                if (z13) {
                    i12--;
                }
                sVar2.setIsActionButton(z13);
                z7 = false;
            } else {
                z7 = z9;
                z8 = z6;
                sVar2.setIsActionButton(z7);
            }
            i13++;
            z9 = z7;
            z6 = z8;
            view = null;
        }
        return z6;
    }

    @Override // k.AbstractC1072d
    public View getItemView(k.s sVar, View view, ViewGroup viewGroup) {
        View actionView = sVar.getActionView();
        if (actionView == null || sVar.hasCollapsibleActionView()) {
            actionView = super.getItemView(sVar, view, viewGroup);
        }
        actionView.setVisibility(sVar.isActionViewExpanded() ? 8 : 0);
        ActionMenuView actionMenuView = (ActionMenuView) viewGroup;
        ViewGroup.LayoutParams layoutParams = actionView.getLayoutParams();
        if (!actionMenuView.checkLayoutParams(layoutParams)) {
            actionView.setLayoutParams(actionMenuView.generateLayoutParams(layoutParams));
        }
        return actionView;
    }

    @Override // k.AbstractC1072d
    public InterfaceC1062G getMenuView(ViewGroup viewGroup) {
        InterfaceC1062G interfaceC1062G = this.f17093q;
        InterfaceC1062G menuView = super.getMenuView(viewGroup);
        if (interfaceC1062G != menuView) {
            ((ActionMenuView) menuView).setPresenter(this);
        }
        return menuView;
    }

    public Drawable getOverflowIcon() {
        C1172p c1172p = this.f18013s;
        if (c1172p != null) {
            return c1172p.getDrawable();
        }
        if (this.f18015u) {
            return this.f18014t;
        }
        return null;
    }

    public boolean hideOverflowMenu() {
        Object obj;
        RunnableC1166n runnableC1166n = this.f18009E;
        if (runnableC1166n != null && (obj = this.f17093q) != null) {
            ((View) obj).removeCallbacks(runnableC1166n);
            this.f18009E = null;
            return true;
        }
        C1175q c1175q = this.f18007C;
        if (c1175q == null) {
            return false;
        }
        c1175q.dismiss();
        return true;
    }

    public boolean hideSubMenus() {
        C1160l c1160l = this.f18008D;
        if (c1160l == null) {
            return false;
        }
        c1160l.dismiss();
        return true;
    }

    @Override // k.AbstractC1072d, k.InterfaceC1060E
    public void initForMenu(Context context, C1084p c1084p) {
        super.initForMenu(context, c1084p);
        Resources resources = context.getResources();
        C1018a c1018a = C1018a.get(context);
        if (!this.f18017w) {
            this.f18016v = c1018a.showsOverflowMenuButton();
        }
        this.f18018x = c1018a.getEmbeddedMenuWidthLimit();
        this.f18020z = c1018a.getMaxActionButtons();
        int i2 = this.f18018x;
        if (this.f18016v) {
            if (this.f18013s == null) {
                C1172p c1172p = new C1172p(this, this.f17086b);
                this.f18013s = c1172p;
                if (this.f18015u) {
                    c1172p.setImageDrawable(this.f18014t);
                    this.f18014t = null;
                    this.f18015u = false;
                }
                int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(0, 0);
                this.f18013s.measure(makeMeasureSpec, makeMeasureSpec);
            }
            i2 -= this.f18013s.getMeasuredWidth();
        } else {
            this.f18013s = null;
        }
        this.f18019y = i2;
        float f3 = resources.getDisplayMetrics().density;
    }

    public boolean isOverflowMenuShowPending() {
        return this.f18009E != null || isOverflowMenuShowing();
    }

    public boolean isOverflowMenuShowing() {
        C1175q c1175q = this.f18007C;
        return c1175q != null && c1175q.isShowing();
    }

    @Override // k.AbstractC1072d, k.InterfaceC1060E
    public void onCloseMenu(C1084p c1084p, boolean z6) {
        dismissPopupMenus();
        super.onCloseMenu(c1084p, z6);
    }

    public void onConfigurationChanged(Configuration configuration) {
        this.f18020z = C1018a.get(this.f17087e).getMaxActionButtons();
        C1084p c1084p = this.f17088f;
        if (c1084p != null) {
            c1084p.onItemsChanged(true);
        }
    }

    @Override // k.InterfaceC1060E
    public void onRestoreInstanceState(Parcelable parcelable) {
        int i2;
        MenuItem findItem;
        if ((parcelable instanceof C1183t) && (i2 = ((C1183t) parcelable).f18003b) > 0 && (findItem = this.f17088f.findItem(i2)) != null) {
            onSubMenuSelected((SubMenuC1068M) findItem.getSubMenu());
        }
    }

    @Override // k.InterfaceC1060E
    public Parcelable onSaveInstanceState() {
        C1183t c1183t = new C1183t();
        c1183t.f18003b = this.f18012H;
        return c1183t;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // k.AbstractC1072d, k.InterfaceC1060E
    public boolean onSubMenuSelected(SubMenuC1068M subMenuC1068M) {
        boolean z6 = false;
        if (!subMenuC1068M.hasVisibleItems()) {
            return false;
        }
        SubMenuC1068M subMenuC1068M2 = subMenuC1068M;
        while (subMenuC1068M2.getParentMenu() != this.f17088f) {
            subMenuC1068M2 = (SubMenuC1068M) subMenuC1068M2.getParentMenu();
        }
        MenuItem item = subMenuC1068M2.getItem();
        ViewGroup viewGroup = (ViewGroup) this.f17093q;
        View view = null;
        if (viewGroup != null) {
            int childCount = viewGroup.getChildCount();
            int i2 = 0;
            while (true) {
                if (i2 >= childCount) {
                    break;
                }
                View childAt = viewGroup.getChildAt(i2);
                if ((childAt instanceof InterfaceC1061F) && ((InterfaceC1061F) childAt).getItemData() == item) {
                    view = childAt;
                    break;
                }
                i2++;
            }
        }
        if (view == null) {
            return false;
        }
        this.f18012H = subMenuC1068M.getItem().getItemId();
        int size = subMenuC1068M.size();
        int i7 = 0;
        while (true) {
            if (i7 >= size) {
                break;
            }
            MenuItem item2 = subMenuC1068M.getItem(i7);
            if (item2.isVisible() && item2.getIcon() != null) {
                z6 = true;
                break;
            }
            i7++;
        }
        C1160l c1160l = new C1160l(this, this.f17087e, subMenuC1068M, view);
        this.f18008D = c1160l;
        c1160l.setForceShowIcon(z6);
        this.f18008D.show();
        super.onSubMenuSelected(subMenuC1068M);
        return true;
    }

    public void setExpandedActionViewsExclusive(boolean z6) {
        this.f18005A = z6;
    }

    public void setMenuView(ActionMenuView actionMenuView) {
        this.f17093q = actionMenuView;
        actionMenuView.initialize(this.f17088f);
    }

    public void setOverflowIcon(Drawable drawable) {
        C1172p c1172p = this.f18013s;
        if (c1172p != null) {
            c1172p.setImageDrawable(drawable);
        } else {
            this.f18015u = true;
            this.f18014t = drawable;
        }
    }

    public void setReserveOverflow(boolean z6) {
        this.f18016v = z6;
        this.f18017w = true;
    }

    @Override // k.AbstractC1072d
    public boolean shouldIncludeItem(int i2, k.s sVar) {
        return sVar.isActionButton();
    }

    public boolean showOverflowMenu() {
        C1084p c1084p;
        if (!this.f18016v || isOverflowMenuShowing() || (c1084p = this.f17088f) == null || this.f17093q == null || this.f18009E != null || c1084p.getNonActionItems().isEmpty()) {
            return false;
        }
        RunnableC1166n runnableC1166n = new RunnableC1166n(this, new C1175q(this, this.f17087e, this.f17088f, this.f18013s, true));
        this.f18009E = runnableC1166n;
        ((View) this.f17093q).post(runnableC1166n);
        return true;
    }

    @Override // k.AbstractC1072d, k.InterfaceC1060E
    public void updateMenuView(boolean z6) {
        super.updateMenuView(z6);
        ((View) this.f17093q).requestLayout();
        C1084p c1084p = this.f17088f;
        boolean z7 = false;
        if (c1084p != null) {
            ArrayList<k.s> actionItems = c1084p.getActionItems();
            int size = actionItems.size();
            for (int i2 = 0; i2 < size; i2++) {
                AbstractC0158e supportActionProvider = actionItems.get(i2).getSupportActionProvider();
                if (supportActionProvider != null) {
                    supportActionProvider.setSubUiVisibilityListener(this);
                }
            }
        }
        C1084p c1084p2 = this.f17088f;
        ArrayList<k.s> nonActionItems = c1084p2 != null ? c1084p2.getNonActionItems() : null;
        if (this.f18016v && nonActionItems != null) {
            int size2 = nonActionItems.size();
            if (size2 == 1) {
                z7 = !nonActionItems.get(0).isActionViewExpanded();
            } else if (size2 > 0) {
                z7 = true;
            }
        }
        if (z7) {
            if (this.f18013s == null) {
                this.f18013s = new C1172p(this, this.f17086b);
            }
            ViewGroup viewGroup = (ViewGroup) this.f18013s.getParent();
            if (viewGroup != this.f17093q) {
                if (viewGroup != null) {
                    viewGroup.removeView(this.f18013s);
                }
                ActionMenuView actionMenuView = (ActionMenuView) this.f17093q;
                actionMenuView.addView(this.f18013s, actionMenuView.generateOverflowButtonLayoutParams());
            }
        } else {
            C1172p c1172p = this.f18013s;
            if (c1172p != null) {
                Object parent = c1172p.getParent();
                Object obj = this.f17093q;
                if (parent == obj) {
                    ((ViewGroup) obj).removeView(this.f18013s);
                }
            }
        }
        ((ActionMenuView) this.f17093q).setOverflowReserved(this.f18016v);
    }
}
