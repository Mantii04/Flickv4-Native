package k;

import M.AbstractC0181p0;
import M.AbstractC0185s;
import android.content.Context;
import android.graphics.Point;
import android.graphics.Rect;
import android.view.Display;
import android.view.View;
import android.view.WindowManager;
import android.widget.PopupWindow;
import androidx.appcompat.R;

/* renamed from: k.C, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public class C1058C {

    /* renamed from: a, reason: collision with root package name */
    public final Context f17028a;

    /* renamed from: b, reason: collision with root package name */
    public final C1084p f17029b;

    /* renamed from: c, reason: collision with root package name */
    public final boolean f17030c;

    /* renamed from: d, reason: collision with root package name */
    public final int f17031d;

    /* renamed from: e, reason: collision with root package name */
    public final int f17032e;

    /* renamed from: f, reason: collision with root package name */
    public View f17033f;

    /* renamed from: g, reason: collision with root package name */
    public int f17034g;

    /* renamed from: h, reason: collision with root package name */
    public boolean f17035h;

    /* renamed from: i, reason: collision with root package name */
    public InterfaceC1059D f17036i;

    /* renamed from: j, reason: collision with root package name */
    public z f17037j;

    /* renamed from: k, reason: collision with root package name */
    public PopupWindow.OnDismissListener f17038k;

    /* renamed from: l, reason: collision with root package name */
    public final C1056A f17039l;

    public C1058C(Context context, C1084p c1084p, View view, boolean z6, int i2) {
        this(context, c1084p, view, z6, i2, 0);
    }

    public final void a(int i2, int i7, boolean z6, boolean z7) {
        z popup = getPopup();
        popup.setShowTitle(z7);
        if (z6) {
            if ((AbstractC0185s.getAbsoluteGravity(this.f17034g, AbstractC0181p0.getLayoutDirection(this.f17033f)) & 7) == 5) {
                i2 -= this.f17033f.getWidth();
            }
            popup.setHorizontalOffset(i2);
            popup.setVerticalOffset(i7);
            int i8 = (int) ((this.f17028a.getResources().getDisplayMetrics().density * 48.0f) / 2.0f);
            popup.setEpicenterBounds(new Rect(i2 - i8, i7 - i8, i2 + i8, i7 + i8));
        }
        popup.show();
    }

    public void dismiss() {
        if (isShowing()) {
            this.f17037j.dismiss();
        }
    }

    public z getPopup() {
        z viewOnKeyListenerC1067L;
        if (this.f17037j == null) {
            Context context = this.f17028a;
            Display defaultDisplay = ((WindowManager) context.getSystemService("window")).getDefaultDisplay();
            Point point = new Point();
            AbstractC1057B.a(defaultDisplay, point);
            if (Math.min(point.x, point.y) >= context.getResources().getDimensionPixelSize(R.dimen.abc_cascading_menus_min_smallest_width)) {
                viewOnKeyListenerC1067L = new ViewOnKeyListenerC1078j(this.f17028a, this.f17033f, this.f17031d, this.f17032e, this.f17030c);
            } else {
                viewOnKeyListenerC1067L = new ViewOnKeyListenerC1067L(this.f17028a, this.f17029b, this.f17033f, this.f17031d, this.f17032e, this.f17030c);
            }
            viewOnKeyListenerC1067L.addMenu(this.f17029b);
            viewOnKeyListenerC1067L.setOnDismissListener(this.f17039l);
            viewOnKeyListenerC1067L.setAnchorView(this.f17033f);
            viewOnKeyListenerC1067L.setCallback(this.f17036i);
            viewOnKeyListenerC1067L.setForceShowIcon(this.f17035h);
            viewOnKeyListenerC1067L.setGravity(this.f17034g);
            this.f17037j = viewOnKeyListenerC1067L;
        }
        return this.f17037j;
    }

    public boolean isShowing() {
        z zVar = this.f17037j;
        return zVar != null && zVar.isShowing();
    }

    public void onDismiss() {
        this.f17037j = null;
        PopupWindow.OnDismissListener onDismissListener = this.f17038k;
        if (onDismissListener != null) {
            onDismissListener.onDismiss();
        }
    }

    public void setAnchorView(View view) {
        this.f17033f = view;
    }

    public void setForceShowIcon(boolean z6) {
        this.f17035h = z6;
        z zVar = this.f17037j;
        if (zVar != null) {
            zVar.setForceShowIcon(z6);
        }
    }

    public void setGravity(int i2) {
        this.f17034g = i2;
    }

    public void setOnDismissListener(PopupWindow.OnDismissListener onDismissListener) {
        this.f17038k = onDismissListener;
    }

    public void setPresenterCallback(InterfaceC1059D interfaceC1059D) {
        this.f17036i = interfaceC1059D;
        z zVar = this.f17037j;
        if (zVar != null) {
            zVar.setCallback(interfaceC1059D);
        }
    }

    public void show() {
        if (!tryShow()) {
            throw new IllegalStateException("MenuPopupHelper cannot be used without an anchor");
        }
    }

    public boolean tryShow() {
        if (isShowing()) {
            return true;
        }
        if (this.f17033f == null) {
            return false;
        }
        a(0, 0, false, false);
        return true;
    }

    public C1058C(Context context, C1084p c1084p, View view, boolean z6, int i2, int i7) {
        this.f17034g = 8388611;
        this.f17039l = new C1056A(this);
        this.f17028a = context;
        this.f17029b = c1084p;
        this.f17033f = view;
        this.f17030c = z6;
        this.f17031d = i2;
        this.f17032e = i7;
    }

    public boolean tryShow(int i2, int i7) {
        if (isShowing()) {
            return true;
        }
        if (this.f17033f == null) {
            return false;
        }
        a(i2, i7, true, true);
        return true;
    }
}
