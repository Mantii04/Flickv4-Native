package M;

import android.view.View;
import androidx.core.R;
import java.util.Objects;

/* renamed from: M.i0, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public abstract class AbstractC0167i0 {
    public static void a(View view, InterfaceC0177n0 interfaceC0177n0) {
        p.q qVar = (p.q) view.getTag(R.id.tag_unhandled_key_listeners);
        if (qVar == null) {
            qVar = new p.q();
            view.setTag(R.id.tag_unhandled_key_listeners, qVar);
        }
        Objects.requireNonNull(interfaceC0177n0);
        View.OnUnhandledKeyEventListener viewOnUnhandledKeyEventListenerC0165h0 = new ViewOnUnhandledKeyEventListenerC0165h0();
        qVar.put(interfaceC0177n0, viewOnUnhandledKeyEventListenerC0165h0);
        view.addOnUnhandledKeyEventListener(viewOnUnhandledKeyEventListenerC0165h0);
    }

    public static CharSequence b(View view) {
        return view.getAccessibilityPaneTitle();
    }

    public static boolean c(View view) {
        return view.isAccessibilityHeading();
    }

    public static boolean d(View view) {
        return view.isScreenReaderFocusable();
    }

    public static void e(View view, InterfaceC0177n0 interfaceC0177n0) {
        View.OnUnhandledKeyEventListener onUnhandledKeyEventListener;
        p.q qVar = (p.q) view.getTag(R.id.tag_unhandled_key_listeners);
        if (qVar == null || (onUnhandledKeyEventListener = (View.OnUnhandledKeyEventListener) qVar.get(interfaceC0177n0)) == null) {
            return;
        }
        view.removeOnUnhandledKeyEventListener(onUnhandledKeyEventListener);
    }

    public static <T> T f(View view, int i2) {
        return (T) view.requireViewById(i2);
    }

    public static void g(View view, boolean z6) {
        view.setAccessibilityHeading(z6);
    }

    public static void h(View view, CharSequence charSequence) {
        view.setAccessibilityPaneTitle(charSequence);
    }

    public static void i(View view, boolean z6) {
        view.setScreenReaderFocusable(z6);
    }

    public static void setAutofillId(View view, P.a aVar) {
        view.setAutofillId(null);
    }
}
