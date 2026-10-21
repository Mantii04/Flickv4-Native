package l;

import android.content.Context;
import android.os.Parcelable;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import androidx.appcompat.widget.Toolbar;
import j.InterfaceC1021d;
import java.util.ArrayList;
import k.C1084p;
import k.InterfaceC1060E;
import k.SubMenuC1068M;

/* loaded from: classes.dex */
public final class k2 implements InterfaceC1060E {

    /* renamed from: b, reason: collision with root package name */
    public C1084p f17914b;

    /* renamed from: e, reason: collision with root package name */
    public k.s f17915e;

    /* renamed from: f, reason: collision with root package name */
    public final /* synthetic */ Toolbar f17916f;

    public k2(Toolbar toolbar) {
        this.f17916f = toolbar;
    }

    @Override // k.InterfaceC1060E
    public boolean collapseItemActionView(C1084p c1084p, k.s sVar) {
        Toolbar toolbar = this.f17916f;
        KeyEvent.Callback callback = toolbar.f5173r;
        if (callback instanceof InterfaceC1021d) {
            ((InterfaceC1021d) callback).onActionViewCollapsed();
        }
        toolbar.removeView(toolbar.f5173r);
        toolbar.removeView(toolbar.f5172q);
        toolbar.f5173r = null;
        ArrayList arrayList = toolbar.f5149N;
        for (int size = arrayList.size() - 1; size >= 0; size--) {
            toolbar.addView((View) arrayList.get(size));
        }
        arrayList.clear();
        this.f17915e = null;
        toolbar.requestLayout();
        sVar.setActionViewExpanded(false);
        toolbar.q();
        return true;
    }

    @Override // k.InterfaceC1060E
    public boolean expandItemActionView(C1084p c1084p, k.s sVar) {
        Toolbar toolbar = this.f17916f;
        toolbar.c();
        ViewParent parent = toolbar.f5172q.getParent();
        if (parent != toolbar) {
            if (parent instanceof ViewGroup) {
                ((ViewGroup) parent).removeView(toolbar.f5172q);
            }
            toolbar.addView(toolbar.f5172q);
        }
        View actionView = sVar.getActionView();
        toolbar.f5173r = actionView;
        this.f17915e = sVar;
        ViewParent parent2 = actionView.getParent();
        if (parent2 != toolbar) {
            if (parent2 instanceof ViewGroup) {
                ((ViewGroup) parent2).removeView(toolbar.f5173r);
            }
            l2 generateDefaultLayoutParams = toolbar.generateDefaultLayoutParams();
            generateDefaultLayoutParams.f13686a = (toolbar.f5178w & 112) | 8388611;
            generateDefaultLayoutParams.f17947b = 2;
            toolbar.f5173r.setLayoutParams(generateDefaultLayoutParams);
            toolbar.addView(toolbar.f5173r);
        }
        for (int childCount = toolbar.getChildCount() - 1; childCount >= 0; childCount--) {
            View childAt = toolbar.getChildAt(childCount);
            if (((l2) childAt.getLayoutParams()).f17947b != 2 && childAt != toolbar.f5160b) {
                toolbar.removeViewAt(childCount);
                toolbar.f5149N.add(childAt);
            }
        }
        toolbar.requestLayout();
        sVar.setActionViewExpanded(true);
        KeyEvent.Callback callback = toolbar.f5173r;
        if (callback instanceof InterfaceC1021d) {
            ((InterfaceC1021d) callback).onActionViewExpanded();
        }
        toolbar.q();
        return true;
    }

    @Override // k.InterfaceC1060E
    public boolean flagActionItems() {
        return false;
    }

    @Override // k.InterfaceC1060E
    public int getId() {
        return 0;
    }

    @Override // k.InterfaceC1060E
    public void initForMenu(Context context, C1084p c1084p) {
        k.s sVar;
        C1084p c1084p2 = this.f17914b;
        if (c1084p2 != null && (sVar = this.f17915e) != null) {
            c1084p2.collapseItemActionView(sVar);
        }
        this.f17914b = c1084p;
    }

    @Override // k.InterfaceC1060E
    public Parcelable onSaveInstanceState() {
        return null;
    }

    @Override // k.InterfaceC1060E
    public boolean onSubMenuSelected(SubMenuC1068M subMenuC1068M) {
        return false;
    }

    @Override // k.InterfaceC1060E
    public void updateMenuView(boolean z6) {
        if (this.f17915e != null) {
            C1084p c1084p = this.f17914b;
            if (c1084p != null) {
                int size = c1084p.size();
                for (int i2 = 0; i2 < size; i2++) {
                    if (this.f17914b.getItem(i2) == this.f17915e) {
                        return;
                    }
                }
            }
            collapseItemActionView(this.f17914b, this.f17915e);
        }
    }

    @Override // k.InterfaceC1060E
    public void onRestoreInstanceState(Parcelable parcelable) {
    }

    @Override // k.InterfaceC1060E
    public void onCloseMenu(C1084p c1084p, boolean z6) {
    }
}
