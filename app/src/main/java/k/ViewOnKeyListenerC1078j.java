package k;

import M.AbstractC0181p0;
import M.AbstractC0185s;
import android.content.Context;
import android.content.res.Resources;
import android.os.Handler;
import android.os.Parcelable;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewTreeObserver;
import android.widget.ListView;
import android.widget.PopupWindow;
import androidx.appcompat.R;
import java.util.ArrayList;
import java.util.Iterator;
import l.C1179r1;

/* renamed from: k.j, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class ViewOnKeyListenerC1078j extends z implements View.OnKeyListener, PopupWindow.OnDismissListener {

    /* renamed from: K, reason: collision with root package name */
    public static final int f17105K = R.layout.abc_cascading_menu_item_layout;

    /* renamed from: A, reason: collision with root package name */
    public boolean f17106A;

    /* renamed from: B, reason: collision with root package name */
    public boolean f17107B;

    /* renamed from: C, reason: collision with root package name */
    public int f17108C;

    /* renamed from: D, reason: collision with root package name */
    public int f17109D;

    /* renamed from: F, reason: collision with root package name */
    public boolean f17111F;

    /* renamed from: G, reason: collision with root package name */
    public InterfaceC1059D f17112G;

    /* renamed from: H, reason: collision with root package name */
    public ViewTreeObserver f17113H;

    /* renamed from: I, reason: collision with root package name */
    public PopupWindow.OnDismissListener f17114I;

    /* renamed from: J, reason: collision with root package name */
    public boolean f17115J;

    /* renamed from: e, reason: collision with root package name */
    public final Context f17116e;

    /* renamed from: f, reason: collision with root package name */
    public final int f17117f;

    /* renamed from: j, reason: collision with root package name */
    public final int f17118j;

    /* renamed from: m, reason: collision with root package name */
    public final int f17119m;

    /* renamed from: n, reason: collision with root package name */
    public final boolean f17120n;

    /* renamed from: p, reason: collision with root package name */
    public final Handler f17121p;

    /* renamed from: x, reason: collision with root package name */
    public View f17129x;

    /* renamed from: y, reason: collision with root package name */
    public View f17130y;

    /* renamed from: z, reason: collision with root package name */
    public int f17131z;

    /* renamed from: q, reason: collision with root package name */
    public final ArrayList f17122q = new ArrayList();

    /* renamed from: r, reason: collision with root package name */
    public final ArrayList f17123r = new ArrayList();

    /* renamed from: s, reason: collision with root package name */
    public final ViewTreeObserverOnGlobalLayoutListenerC1073e f17124s = new ViewTreeObserverOnGlobalLayoutListenerC1073e(this);

    /* renamed from: t, reason: collision with root package name */
    public final ViewOnAttachStateChangeListenerC1074f f17125t = new ViewOnAttachStateChangeListenerC1074f(this);

    /* renamed from: u, reason: collision with root package name */
    public final C1076h f17126u = new C1076h(this);

    /* renamed from: v, reason: collision with root package name */
    public int f17127v = 0;

    /* renamed from: w, reason: collision with root package name */
    public int f17128w = 0;

    /* renamed from: E, reason: collision with root package name */
    public boolean f17110E = false;

    public ViewOnKeyListenerC1078j(Context context, View view, int i2, int i7, boolean z6) {
        this.f17116e = context;
        this.f17129x = view;
        this.f17118j = i2;
        this.f17119m = i7;
        this.f17120n = z6;
        this.f17131z = AbstractC0181p0.getLayoutDirection(view) != 1 ? 1 : 0;
        Resources resources = context.getResources();
        this.f17117f = Math.max(resources.getDisplayMetrics().widthPixels / 2, resources.getDimensionPixelSize(R.dimen.abc_config_prefDialogWidth));
        this.f17121p = new Handler();
    }

    /* JADX WARN: Code restructure failed: missing block: B:21:0x0120, code lost:
    
        if (((r5.getWidth() + r11[0]) + r7) > r6.right) goto L49;
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x0122, code lost:
    
        r5 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:55:0x0125, code lost:
    
        r5 = 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:57:0x012a, code lost:
    
        if ((r11[0] - r7) < 0) goto L51;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void a(k.C1084p r18) {
        /*
            Method dump skipped, instructions count: 499
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: k.ViewOnKeyListenerC1078j.a(k.p):void");
    }

    @Override // k.z
    public void addMenu(C1084p c1084p) {
        c1084p.addMenuPresenter(this, this.f17116e);
        if (isShowing()) {
            a(c1084p);
        } else {
            this.f17122q.add(c1084p);
        }
    }

    @Override // k.z
    public boolean closeMenuOnSubMenuOpened() {
        return false;
    }

    @Override // k.InterfaceC1064I
    public void dismiss() {
        ArrayList arrayList = this.f17123r;
        int size = arrayList.size();
        if (size > 0) {
            C1077i[] c1077iArr = (C1077i[]) arrayList.toArray(new C1077i[size]);
            for (int i2 = size - 1; i2 >= 0; i2--) {
                C1077i c1077i = c1077iArr[i2];
                if (c1077i.f17102a.isShowing()) {
                    c1077i.f17102a.dismiss();
                }
            }
        }
    }

    @Override // k.InterfaceC1060E
    public boolean flagActionItems() {
        return false;
    }

    @Override // k.InterfaceC1064I
    public ListView getListView() {
        ArrayList arrayList = this.f17123r;
        if (arrayList.isEmpty()) {
            return null;
        }
        return ((C1077i) b.c.h(1, arrayList)).getListView();
    }

    @Override // k.InterfaceC1064I
    public boolean isShowing() {
        ArrayList arrayList = this.f17123r;
        return arrayList.size() > 0 && ((C1077i) arrayList.get(0)).f17102a.isShowing();
    }

    @Override // k.InterfaceC1060E
    public void onCloseMenu(C1084p c1084p, boolean z6) {
        ArrayList arrayList = this.f17123r;
        int size = arrayList.size();
        int i2 = 0;
        while (true) {
            if (i2 >= size) {
                i2 = -1;
                break;
            } else if (c1084p == ((C1077i) arrayList.get(i2)).f17103b) {
                break;
            } else {
                i2++;
            }
        }
        if (i2 < 0) {
            return;
        }
        int i7 = i2 + 1;
        if (i7 < arrayList.size()) {
            ((C1077i) arrayList.get(i7)).f17103b.close(false);
        }
        C1077i c1077i = (C1077i) arrayList.remove(i2);
        c1077i.f17103b.removeMenuPresenter(this);
        boolean z7 = this.f17115J;
        C1179r1 c1179r1 = c1077i.f17102a;
        if (z7) {
            c1179r1.setExitTransition(null);
            c1179r1.setAnimationStyle(0);
        }
        c1179r1.dismiss();
        int size2 = arrayList.size();
        if (size2 > 0) {
            this.f17131z = ((C1077i) arrayList.get(size2 - 1)).f17104c;
        } else {
            this.f17131z = AbstractC0181p0.getLayoutDirection(this.f17129x) == 1 ? 0 : 1;
        }
        if (size2 != 0) {
            if (z6) {
                ((C1077i) arrayList.get(0)).f17103b.close(false);
                return;
            }
            return;
        }
        dismiss();
        InterfaceC1059D interfaceC1059D = this.f17112G;
        if (interfaceC1059D != null) {
            interfaceC1059D.onCloseMenu(c1084p, true);
        }
        ViewTreeObserver viewTreeObserver = this.f17113H;
        if (viewTreeObserver != null) {
            if (viewTreeObserver.isAlive()) {
                this.f17113H.removeGlobalOnLayoutListener(this.f17124s);
            }
            this.f17113H = null;
        }
        this.f17130y.removeOnAttachStateChangeListener(this.f17125t);
        this.f17114I.onDismiss();
    }

    @Override // android.widget.PopupWindow.OnDismissListener
    public void onDismiss() {
        C1077i c1077i;
        ArrayList arrayList = this.f17123r;
        int size = arrayList.size();
        int i2 = 0;
        while (true) {
            if (i2 >= size) {
                c1077i = null;
                break;
            }
            c1077i = (C1077i) arrayList.get(i2);
            if (!c1077i.f17102a.isShowing()) {
                break;
            } else {
                i2++;
            }
        }
        if (c1077i != null) {
            c1077i.f17103b.close(false);
        }
    }

    @Override // android.view.View.OnKeyListener
    public boolean onKey(View view, int i2, KeyEvent keyEvent) {
        if (keyEvent.getAction() != 1 || i2 != 82) {
            return false;
        }
        dismiss();
        return true;
    }

    @Override // k.InterfaceC1060E
    public Parcelable onSaveInstanceState() {
        return null;
    }

    @Override // k.InterfaceC1060E
    public boolean onSubMenuSelected(SubMenuC1068M subMenuC1068M) {
        Iterator it = this.f17123r.iterator();
        while (it.hasNext()) {
            C1077i c1077i = (C1077i) it.next();
            if (subMenuC1068M == c1077i.f17103b) {
                c1077i.getListView().requestFocus();
                return true;
            }
        }
        if (!subMenuC1068M.hasVisibleItems()) {
            return false;
        }
        addMenu(subMenuC1068M);
        InterfaceC1059D interfaceC1059D = this.f17112G;
        if (interfaceC1059D != null) {
            interfaceC1059D.onOpenSubMenu(subMenuC1068M);
        }
        return true;
    }

    @Override // k.z
    public void setAnchorView(View view) {
        if (this.f17129x != view) {
            this.f17129x = view;
            this.f17128w = AbstractC0185s.getAbsoluteGravity(this.f17127v, AbstractC0181p0.getLayoutDirection(view));
        }
    }

    @Override // k.InterfaceC1060E
    public void setCallback(InterfaceC1059D interfaceC1059D) {
        this.f17112G = interfaceC1059D;
    }

    @Override // k.z
    public void setForceShowIcon(boolean z6) {
        this.f17110E = z6;
    }

    @Override // k.z
    public void setGravity(int i2) {
        if (this.f17127v != i2) {
            this.f17127v = i2;
            this.f17128w = AbstractC0185s.getAbsoluteGravity(i2, AbstractC0181p0.getLayoutDirection(this.f17129x));
        }
    }

    @Override // k.z
    public void setHorizontalOffset(int i2) {
        this.f17106A = true;
        this.f17108C = i2;
    }

    @Override // k.z
    public void setOnDismissListener(PopupWindow.OnDismissListener onDismissListener) {
        this.f17114I = onDismissListener;
    }

    @Override // k.z
    public void setShowTitle(boolean z6) {
        this.f17111F = z6;
    }

    @Override // k.z
    public void setVerticalOffset(int i2) {
        this.f17107B = true;
        this.f17109D = i2;
    }

    @Override // k.InterfaceC1064I
    public void show() {
        if (isShowing()) {
            return;
        }
        ArrayList arrayList = this.f17122q;
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            a((C1084p) it.next());
        }
        arrayList.clear();
        View view = this.f17129x;
        this.f17130y = view;
        if (view != null) {
            boolean z6 = this.f17113H == null;
            ViewTreeObserver viewTreeObserver = view.getViewTreeObserver();
            this.f17113H = viewTreeObserver;
            if (z6) {
                viewTreeObserver.addOnGlobalLayoutListener(this.f17124s);
            }
            this.f17130y.addOnAttachStateChangeListener(this.f17125t);
        }
    }

    @Override // k.InterfaceC1060E
    public void updateMenuView(boolean z6) {
        Iterator it = this.f17123r.iterator();
        while (it.hasNext()) {
            z.toMenuAdapter(((C1077i) it.next()).getListView().getAdapter()).notifyDataSetChanged();
        }
    }

    @Override // k.InterfaceC1060E
    public void onRestoreInstanceState(Parcelable parcelable) {
    }
}
