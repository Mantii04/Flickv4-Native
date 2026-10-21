package l;

import android.content.Context;
import android.os.Build;
import android.transition.Transition;
import android.util.AttributeSet;
import android.util.Log;
import android.view.MenuItem;
import android.widget.PopupWindow;
import java.lang.reflect.Method;
import k.C1084p;

/* renamed from: l.r1, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C1179r1 extends C1162l1 implements InterfaceC1165m1 {

    /* renamed from: N, reason: collision with root package name */
    public static final Method f17982N;

    /* renamed from: M, reason: collision with root package name */
    public InterfaceC1165m1 f17983M;

    static {
        try {
            if (Build.VERSION.SDK_INT <= 28) {
                f17982N = PopupWindow.class.getDeclaredMethod("setTouchModal", Boolean.TYPE);
            }
        } catch (NoSuchMethodException unused) {
            Log.i("MenuPopupWindow", "Could not find method setTouchModal() on PopupWindow. Oh well.");
        }
    }

    public C1179r1(Context context, AttributeSet attributeSet, int i2, int i7) {
        super(context, attributeSet, i2, i7);
    }

    @Override // l.C1162l1
    public final W0 a(Context context, boolean z6) {
        C1177q1 c1177q1 = new C1177q1(context, z6);
        c1177q1.setHoverListener(this);
        return c1177q1;
    }

    @Override // l.InterfaceC1165m1
    public void onItemHoverEnter(C1084p c1084p, MenuItem menuItem) {
        InterfaceC1165m1 interfaceC1165m1 = this.f17983M;
        if (interfaceC1165m1 != null) {
            interfaceC1165m1.onItemHoverEnter(c1084p, menuItem);
        }
    }

    @Override // l.InterfaceC1165m1
    public void onItemHoverExit(C1084p c1084p, MenuItem menuItem) {
        InterfaceC1165m1 interfaceC1165m1 = this.f17983M;
        if (interfaceC1165m1 != null) {
            interfaceC1165m1.onItemHoverExit(c1084p, menuItem);
        }
    }

    public void setEnterTransition(Object obj) {
        AbstractC1168n1.a(this.f17929I, (Transition) obj);
    }

    public void setExitTransition(Object obj) {
        AbstractC1168n1.b(this.f17929I, (Transition) obj);
    }

    public void setHoverListener(InterfaceC1165m1 interfaceC1165m1) {
        this.f17983M = interfaceC1165m1;
    }

    public void setTouchModal(boolean z6) {
        int i2 = Build.VERSION.SDK_INT;
        S s6 = this.f17929I;
        if (i2 > 28) {
            AbstractC1171o1.a(s6, z6);
            return;
        }
        Method method = f17982N;
        if (method != null) {
            try {
                method.invoke(s6, Boolean.valueOf(z6));
            } catch (Exception unused) {
                Log.i("MenuPopupWindow", "Could not invoke setTouchModal() on PopupWindow. Oh well.");
            }
        }
    }
}
