package androidx.fragment.app;

import android.annotation.SuppressLint;

/* renamed from: androidx.fragment.app.t, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class RunnableC0481t implements Runnable {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ DialogInterfaceOnCancelListenerC0486y f6317b;

    public RunnableC0481t(DialogInterfaceOnCancelListenerC0486y dialogInterfaceOnCancelListenerC0486y) {
        this.f6317b = dialogInterfaceOnCancelListenerC0486y;
    }

    @Override // java.lang.Runnable
    @SuppressLint({"SyntheticAccessor"})
    public void run() {
        DialogInterfaceOnCancelListenerC0486y dialogInterfaceOnCancelListenerC0486y = this.f6317b;
        dialogInterfaceOnCancelListenerC0486y.f6357i0.onDismiss(dialogInterfaceOnCancelListenerC0486y.f6365q0);
    }
}
