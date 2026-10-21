package k;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import java.util.ArrayList;

/* renamed from: k.d, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public abstract class AbstractC1072d implements InterfaceC1060E {

    /* renamed from: b, reason: collision with root package name */
    public final Context f17086b;

    /* renamed from: e, reason: collision with root package name */
    public Context f17087e;

    /* renamed from: f, reason: collision with root package name */
    public C1084p f17088f;

    /* renamed from: j, reason: collision with root package name */
    public final LayoutInflater f17089j;

    /* renamed from: m, reason: collision with root package name */
    public InterfaceC1059D f17090m;

    /* renamed from: n, reason: collision with root package name */
    public final int f17091n;

    /* renamed from: p, reason: collision with root package name */
    public final int f17092p;

    /* renamed from: q, reason: collision with root package name */
    public InterfaceC1062G f17093q;

    /* renamed from: r, reason: collision with root package name */
    public int f17094r;

    public AbstractC1072d(Context context, int i2, int i7) {
        this.f17086b = context;
        this.f17089j = LayoutInflater.from(context);
        this.f17091n = i2;
        this.f17092p = i7;
    }

    public void addItemView(View view, int i2) {
        ViewGroup viewGroup = (ViewGroup) view.getParent();
        if (viewGroup != null) {
            viewGroup.removeView(view);
        }
        ((ViewGroup) this.f17093q).addView(view, i2);
    }

    public abstract void bindItemView(s sVar, InterfaceC1061F interfaceC1061F);

    @Override // k.InterfaceC1060E
    public boolean collapseItemActionView(C1084p c1084p, s sVar) {
        return false;
    }

    public InterfaceC1061F createItemView(ViewGroup viewGroup) {
        return (InterfaceC1061F) this.f17089j.inflate(this.f17092p, viewGroup, false);
    }

    @Override // k.InterfaceC1060E
    public boolean expandItemActionView(C1084p c1084p, s sVar) {
        return false;
    }

    public boolean filterLeftoverView(ViewGroup viewGroup, int i2) {
        viewGroup.removeViewAt(i2);
        return true;
    }

    public InterfaceC1059D getCallback() {
        return this.f17090m;
    }

    @Override // k.InterfaceC1060E
    public int getId() {
        return this.f17094r;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public View getItemView(s sVar, View view, ViewGroup viewGroup) {
        InterfaceC1061F createItemView = view instanceof InterfaceC1061F ? (InterfaceC1061F) view : createItemView(viewGroup);
        bindItemView(sVar, createItemView);
        return (View) createItemView;
    }

    public InterfaceC1062G getMenuView(ViewGroup viewGroup) {
        if (this.f17093q == null) {
            InterfaceC1062G interfaceC1062G = (InterfaceC1062G) this.f17089j.inflate(this.f17091n, viewGroup, false);
            this.f17093q = interfaceC1062G;
            interfaceC1062G.initialize(this.f17088f);
            updateMenuView(true);
        }
        return this.f17093q;
    }

    @Override // k.InterfaceC1060E
    public void initForMenu(Context context, C1084p c1084p) {
        this.f17087e = context;
        LayoutInflater.from(context);
        this.f17088f = c1084p;
    }

    @Override // k.InterfaceC1060E
    public void onCloseMenu(C1084p c1084p, boolean z6) {
        InterfaceC1059D interfaceC1059D = this.f17090m;
        if (interfaceC1059D != null) {
            interfaceC1059D.onCloseMenu(c1084p, z6);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v4, types: [k.p] */
    @Override // k.InterfaceC1060E
    public boolean onSubMenuSelected(SubMenuC1068M subMenuC1068M) {
        InterfaceC1059D interfaceC1059D = this.f17090m;
        SubMenuC1068M subMenuC1068M2 = subMenuC1068M;
        if (interfaceC1059D == null) {
            return false;
        }
        if (subMenuC1068M == null) {
            subMenuC1068M2 = this.f17088f;
        }
        return interfaceC1059D.onOpenSubMenu(subMenuC1068M2);
    }

    @Override // k.InterfaceC1060E
    public void setCallback(InterfaceC1059D interfaceC1059D) {
        this.f17090m = interfaceC1059D;
    }

    public void setId(int i2) {
        this.f17094r = i2;
    }

    public abstract boolean shouldIncludeItem(int i2, s sVar);

    /* JADX WARN: Multi-variable type inference failed */
    @Override // k.InterfaceC1060E
    public void updateMenuView(boolean z6) {
        ViewGroup viewGroup = (ViewGroup) this.f17093q;
        if (viewGroup == null) {
            return;
        }
        C1084p c1084p = this.f17088f;
        int i2 = 0;
        if (c1084p != null) {
            c1084p.flagActionItems();
            ArrayList<s> visibleItems = this.f17088f.getVisibleItems();
            int size = visibleItems.size();
            int i7 = 0;
            for (int i8 = 0; i8 < size; i8++) {
                s sVar = visibleItems.get(i8);
                if (shouldIncludeItem(i7, sVar)) {
                    View childAt = viewGroup.getChildAt(i7);
                    s itemData = childAt instanceof InterfaceC1061F ? ((InterfaceC1061F) childAt).getItemData() : null;
                    View itemView = getItemView(sVar, childAt, viewGroup);
                    if (sVar != itemData) {
                        itemView.setPressed(false);
                        itemView.jumpDrawablesToCurrentState();
                    }
                    if (itemView != childAt) {
                        addItemView(itemView, i7);
                    }
                    i7++;
                }
            }
            i2 = i7;
        }
        while (i2 < viewGroup.getChildCount()) {
            if (!filterLeftoverView(viewGroup, i2)) {
                i2++;
            }
        }
    }
}
