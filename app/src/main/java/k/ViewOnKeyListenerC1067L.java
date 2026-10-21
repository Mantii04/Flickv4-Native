package k;

import M.AbstractC0181p0;
import android.content.Context;
import android.content.res.Resources;
import android.os.Parcelable;
import android.view.Gravity;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.widget.FrameLayout;
import android.widget.ListView;
import android.widget.PopupWindow;
import android.widget.TextView;
import androidx.appcompat.R;
import l.C1179r1;

/* renamed from: k.L, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class ViewOnKeyListenerC1067L extends z implements PopupWindow.OnDismissListener, View.OnKeyListener {

    /* renamed from: E, reason: collision with root package name */
    public static final int f17043E = R.layout.abc_popup_menu_item_layout;

    /* renamed from: A, reason: collision with root package name */
    public boolean f17044A;

    /* renamed from: B, reason: collision with root package name */
    public int f17045B;

    /* renamed from: D, reason: collision with root package name */
    public boolean f17047D;

    /* renamed from: e, reason: collision with root package name */
    public final Context f17048e;

    /* renamed from: f, reason: collision with root package name */
    public final C1084p f17049f;

    /* renamed from: j, reason: collision with root package name */
    public final C1081m f17050j;

    /* renamed from: m, reason: collision with root package name */
    public final boolean f17051m;

    /* renamed from: n, reason: collision with root package name */
    public final int f17052n;

    /* renamed from: p, reason: collision with root package name */
    public final int f17053p;

    /* renamed from: q, reason: collision with root package name */
    public final int f17054q;

    /* renamed from: r, reason: collision with root package name */
    public final C1179r1 f17055r;

    /* renamed from: u, reason: collision with root package name */
    public PopupWindow.OnDismissListener f17058u;

    /* renamed from: v, reason: collision with root package name */
    public View f17059v;

    /* renamed from: w, reason: collision with root package name */
    public View f17060w;

    /* renamed from: x, reason: collision with root package name */
    public InterfaceC1059D f17061x;

    /* renamed from: y, reason: collision with root package name */
    public ViewTreeObserver f17062y;

    /* renamed from: z, reason: collision with root package name */
    public boolean f17063z;

    /* renamed from: s, reason: collision with root package name */
    public final ViewTreeObserverOnGlobalLayoutListenerC1065J f17056s = new ViewTreeObserverOnGlobalLayoutListenerC1065J(this);

    /* renamed from: t, reason: collision with root package name */
    public final ViewOnAttachStateChangeListenerC1066K f17057t = new ViewOnAttachStateChangeListenerC1066K(this);

    /* renamed from: C, reason: collision with root package name */
    public int f17046C = 0;

    public ViewOnKeyListenerC1067L(Context context, C1084p c1084p, View view, int i2, int i7, boolean z6) {
        this.f17048e = context;
        this.f17049f = c1084p;
        this.f17051m = z6;
        this.f17050j = new C1081m(c1084p, LayoutInflater.from(context), z6, f17043E);
        this.f17053p = i2;
        this.f17054q = i7;
        Resources resources = context.getResources();
        this.f17052n = Math.max(resources.getDisplayMetrics().widthPixels / 2, resources.getDimensionPixelSize(R.dimen.abc_config_prefDialogWidth));
        this.f17059v = view;
        this.f17055r = new C1179r1(context, null, i2, i7);
        c1084p.addMenuPresenter(this, context);
    }

    @Override // k.InterfaceC1064I
    public void dismiss() {
        if (isShowing()) {
            this.f17055r.dismiss();
        }
    }

    @Override // k.InterfaceC1060E
    public boolean flagActionItems() {
        return false;
    }

    @Override // k.InterfaceC1064I
    public ListView getListView() {
        return this.f17055r.getListView();
    }

    @Override // k.InterfaceC1064I
    public boolean isShowing() {
        return !this.f17063z && this.f17055r.isShowing();
    }

    @Override // k.InterfaceC1060E
    public void onCloseMenu(C1084p c1084p, boolean z6) {
        if (c1084p != this.f17049f) {
            return;
        }
        dismiss();
        InterfaceC1059D interfaceC1059D = this.f17061x;
        if (interfaceC1059D != null) {
            interfaceC1059D.onCloseMenu(c1084p, z6);
        }
    }

    @Override // android.widget.PopupWindow.OnDismissListener
    public void onDismiss() {
        this.f17063z = true;
        this.f17049f.close();
        ViewTreeObserver viewTreeObserver = this.f17062y;
        if (viewTreeObserver != null) {
            if (!viewTreeObserver.isAlive()) {
                this.f17062y = this.f17060w.getViewTreeObserver();
            }
            this.f17062y.removeGlobalOnLayoutListener(this.f17056s);
            this.f17062y = null;
        }
        this.f17060w.removeOnAttachStateChangeListener(this.f17057t);
        PopupWindow.OnDismissListener onDismissListener = this.f17058u;
        if (onDismissListener != null) {
            onDismissListener.onDismiss();
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
        if (subMenuC1068M.hasVisibleItems()) {
            C1058C c1058c = new C1058C(this.f17048e, subMenuC1068M, this.f17060w, this.f17051m, this.f17053p, this.f17054q);
            c1058c.setPresenterCallback(this.f17061x);
            c1058c.setForceShowIcon(z.shouldPreserveIconSpacing(subMenuC1068M));
            c1058c.setOnDismissListener(this.f17058u);
            this.f17058u = null;
            this.f17049f.close(false);
            C1179r1 c1179r1 = this.f17055r;
            int horizontalOffset = c1179r1.getHorizontalOffset();
            int verticalOffset = c1179r1.getVerticalOffset();
            if ((Gravity.getAbsoluteGravity(this.f17046C, AbstractC0181p0.getLayoutDirection(this.f17059v)) & 7) == 5) {
                horizontalOffset += this.f17059v.getWidth();
            }
            if (c1058c.tryShow(horizontalOffset, verticalOffset)) {
                InterfaceC1059D interfaceC1059D = this.f17061x;
                if (interfaceC1059D == null) {
                    return true;
                }
                interfaceC1059D.onOpenSubMenu(subMenuC1068M);
                return true;
            }
        }
        return false;
    }

    @Override // k.z
    public void setAnchorView(View view) {
        this.f17059v = view;
    }

    @Override // k.InterfaceC1060E
    public void setCallback(InterfaceC1059D interfaceC1059D) {
        this.f17061x = interfaceC1059D;
    }

    @Override // k.z
    public void setForceShowIcon(boolean z6) {
        this.f17050j.setForceShowIcon(z6);
    }

    @Override // k.z
    public void setGravity(int i2) {
        this.f17046C = i2;
    }

    @Override // k.z
    public void setHorizontalOffset(int i2) {
        this.f17055r.setHorizontalOffset(i2);
    }

    @Override // k.z
    public void setOnDismissListener(PopupWindow.OnDismissListener onDismissListener) {
        this.f17058u = onDismissListener;
    }

    @Override // k.z
    public void setShowTitle(boolean z6) {
        this.f17047D = z6;
    }

    @Override // k.z
    public void setVerticalOffset(int i2) {
        this.f17055r.setVerticalOffset(i2);
    }

    @Override // k.InterfaceC1064I
    public void show() {
        View view;
        if (isShowing()) {
            return;
        }
        if (this.f17063z || (view = this.f17059v) == null) {
            throw new IllegalStateException("StandardMenuPopup cannot be used without an anchor");
        }
        this.f17060w = view;
        C1179r1 c1179r1 = this.f17055r;
        c1179r1.setOnDismissListener(this);
        c1179r1.setOnItemClickListener(this);
        c1179r1.setModal(true);
        View view2 = this.f17060w;
        boolean z6 = this.f17062y == null;
        ViewTreeObserver viewTreeObserver = view2.getViewTreeObserver();
        this.f17062y = viewTreeObserver;
        if (z6) {
            viewTreeObserver.addOnGlobalLayoutListener(this.f17056s);
        }
        view2.addOnAttachStateChangeListener(this.f17057t);
        c1179r1.setAnchorView(view2);
        c1179r1.setDropDownGravity(this.f17046C);
        boolean z7 = this.f17044A;
        Context context = this.f17048e;
        C1081m c1081m = this.f17050j;
        if (!z7) {
            this.f17045B = z.measureIndividualMenuWidth(c1081m, null, context, this.f17052n);
            this.f17044A = true;
        }
        c1179r1.setContentWidth(this.f17045B);
        c1179r1.setInputMethodMode(2);
        c1179r1.setEpicenterBounds(getEpicenterBounds());
        c1179r1.show();
        ListView listView = c1179r1.getListView();
        listView.setOnKeyListener(this);
        if (this.f17047D) {
            C1084p c1084p = this.f17049f;
            if (c1084p.getHeaderTitle() != null) {
                FrameLayout frameLayout = (FrameLayout) LayoutInflater.from(context).inflate(R.layout.abc_popup_menu_header_item_layout, (ViewGroup) listView, false);
                TextView textView = (TextView) frameLayout.findViewById(android.R.id.title);
                if (textView != null) {
                    textView.setText(c1084p.getHeaderTitle());
                }
                frameLayout.setEnabled(false);
                listView.addHeaderView(frameLayout, null, false);
            }
        }
        c1179r1.setAdapter(c1081m);
        c1179r1.show();
    }

    @Override // k.InterfaceC1060E
    public void updateMenuView(boolean z6) {
        this.f17044A = false;
        C1081m c1081m = this.f17050j;
        if (c1081m != null) {
            c1081m.notifyDataSetChanged();
        }
    }

    @Override // k.z
    public void addMenu(C1084p c1084p) {
    }

    @Override // k.InterfaceC1060E
    public void onRestoreInstanceState(Parcelable parcelable) {
    }
}
