package androidx.activity;

import android.window.OnBackInvokedCallback;
import android.window.OnBackInvokedDispatcher;

/* loaded from: classes.dex */
public final class u {

    /* renamed from: a, reason: collision with root package name */
    public static final u f4926a = new u();

    public final OnBackInvokedCallback createOnBackInvokedCallback(H5.a onBackInvoked) {
        kotlin.jvm.internal.j.checkNotNullParameter(onBackInvoked, "onBackInvoked");
        return new t(onBackInvoked, 0);
    }

    public final void registerOnBackInvokedCallback(Object dispatcher, int i2, Object callback) {
        kotlin.jvm.internal.j.checkNotNullParameter(dispatcher, "dispatcher");
        kotlin.jvm.internal.j.checkNotNullParameter(callback, "callback");
        ((OnBackInvokedDispatcher) dispatcher).registerOnBackInvokedCallback(i2, (OnBackInvokedCallback) callback);
    }

    public final void unregisterOnBackInvokedCallback(Object dispatcher, Object callback) {
        kotlin.jvm.internal.j.checkNotNullParameter(dispatcher, "dispatcher");
        kotlin.jvm.internal.j.checkNotNullParameter(callback, "callback");
        ((OnBackInvokedDispatcher) dispatcher).unregisterOnBackInvokedCallback((OnBackInvokedCallback) callback);
    }
}
