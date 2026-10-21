package e;

import android.app.Activity;
import android.window.OnBackInvokedCallback;
import android.window.OnBackInvokedDispatcher;
import androidx.media3.common.PlaybackException;
import java.util.Objects;

/* loaded from: classes.dex */
public abstract class Q {
    public static OnBackInvokedDispatcher a(Activity activity) {
        OnBackInvokedDispatcher onBackInvokedDispatcher;
        onBackInvokedDispatcher = activity.getOnBackInvokedDispatcher();
        return onBackInvokedDispatcher;
    }

    public static OnBackInvokedCallback b(Object obj, a0 a0Var) {
        Objects.requireNonNull(a0Var);
        androidx.activity.t tVar = new androidx.activity.t(a0Var, 1);
        N.g.h(obj).registerOnBackInvokedCallback(PlaybackException.CUSTOM_ERROR_CODE_BASE, tVar);
        return tVar;
    }

    public static void c(Object obj, Object obj2) {
        N.g.h(obj).unregisterOnBackInvokedCallback(N.g.d(obj2));
    }
}
