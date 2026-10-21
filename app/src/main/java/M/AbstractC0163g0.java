package M;

import android.view.View;
import android.view.autofill.AutofillId;
import java.util.Collection;

/* renamed from: M.g0, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public abstract class AbstractC0163g0 {
    public static void a(View view, Collection<View> collection, int i2) {
        view.addKeyboardNavigationClusters(collection, i2);
    }

    public static int b(View view) {
        return view.getImportantForAutofill();
    }

    public static int c(View view) {
        return view.getNextClusterForwardId();
    }

    public static boolean d(View view) {
        return view.hasExplicitFocusable();
    }

    public static boolean e(View view) {
        return view.isFocusedByDefault();
    }

    public static boolean f(View view) {
        return view.isImportantForAutofill();
    }

    public static boolean g(View view) {
        return view.isKeyboardNavigationCluster();
    }

    public static AutofillId getAutofillId(View view) {
        return view.getAutofillId();
    }

    public static View h(View view, View view2, int i2) {
        return view.keyboardNavigationClusterSearch(view2, i2);
    }

    public static boolean i(View view) {
        return view.restoreDefaultFocus();
    }

    public static void j(View view, String... strArr) {
        view.setAutofillHints(strArr);
    }

    public static void k(View view, boolean z6) {
        view.setFocusedByDefault(z6);
    }

    public static void l(View view, int i2) {
        view.setImportantForAutofill(i2);
    }

    public static void m(View view, boolean z6) {
        view.setKeyboardNavigationCluster(z6);
    }

    public static void n(View view, int i2) {
        view.setNextClusterForwardId(i2);
    }

    public static void o(View view, CharSequence charSequence) {
        view.setTooltipText(charSequence);
    }
}
