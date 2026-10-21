package androidx.fragment.app;

import android.annotation.SuppressLint;
import android.util.Log;
import android.view.View;
import androidx.lifecycle.InterfaceC0561t;

/* renamed from: androidx.fragment.app.w, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0484w implements androidx.lifecycle.F {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ DialogInterfaceOnCancelListenerC0486y f6348a;

    public C0484w(DialogInterfaceOnCancelListenerC0486y dialogInterfaceOnCancelListenerC0486y) {
        this.f6348a = dialogInterfaceOnCancelListenerC0486y;
    }

    @SuppressLint({"SyntheticAccessor"})
    public void onChanged(InterfaceC0561t interfaceC0561t) {
        if (interfaceC0561t != null) {
            DialogInterfaceOnCancelListenerC0486y dialogInterfaceOnCancelListenerC0486y = this.f6348a;
            if (dialogInterfaceOnCancelListenerC0486y.f6361m0) {
                View requireView = dialogInterfaceOnCancelListenerC0486y.requireView();
                if (requireView.getParent() != null) {
                    throw new IllegalStateException("DialogFragment can not be attached to a container view");
                }
                if (dialogInterfaceOnCancelListenerC0486y.f6365q0 != null) {
                    if (AbstractC0467i0.isLoggingEnabled(3)) {
                        Log.d("FragmentManager", "DialogFragment " + this + " setting the content view on " + dialogInterfaceOnCancelListenerC0486y.f6365q0);
                    }
                    dialogInterfaceOnCancelListenerC0486y.f6365q0.setContentView(requireView);
                }
            }
        }
    }
}
