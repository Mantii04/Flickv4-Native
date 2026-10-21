package androidx.mediarouter.app;

import android.app.Dialog;
import android.content.Context;
import android.content.res.Configuration;
import android.os.Bundle;
import androidx.fragment.app.DialogInterfaceOnCancelListenerC0486y;

/* loaded from: classes.dex */
public class E extends DialogInterfaceOnCancelListenerC0486y {

    /* renamed from: v0, reason: collision with root package name */
    public boolean f7672v0 = false;

    /* renamed from: w0, reason: collision with root package name */
    public e.c0 f7673w0;

    /* renamed from: x0, reason: collision with root package name */
    public f1.L f7674x0;

    public E() {
        setCancelable(true);
    }

    @Override // androidx.fragment.app.C, android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        e.c0 c0Var = this.f7673w0;
        if (c0Var != null) {
            if (this.f7672v0) {
                ((m0) c0Var).e();
            } else {
                ((D) c0Var).o();
            }
        }
    }

    public D onCreateControllerDialog(Context context, Bundle bundle) {
        return new D(context);
    }

    @Override // androidx.fragment.app.DialogInterfaceOnCancelListenerC0486y
    public Dialog onCreateDialog(Bundle bundle) {
        if (this.f7672v0) {
            m0 onCreateDynamicControllerDialog = onCreateDynamicControllerDialog(getContext());
            this.f7673w0 = onCreateDynamicControllerDialog;
            onCreateDynamicControllerDialog.setRouteSelector(this.f7674x0);
        } else {
            this.f7673w0 = onCreateControllerDialog(getContext(), bundle);
        }
        return this.f7673w0;
    }

    public m0 onCreateDynamicControllerDialog(Context context) {
        return new m0(context);
    }

    @Override // androidx.fragment.app.DialogInterfaceOnCancelListenerC0486y, androidx.fragment.app.C
    public void onStop() {
        super.onStop();
        e.c0 c0Var = this.f7673w0;
        if (c0Var == null || this.f7672v0) {
            return;
        }
        ((D) c0Var).f(false);
    }

    public void setRouteSelector(f1.L l7) {
        if (l7 == null) {
            throw new IllegalArgumentException("selector must not be null");
        }
        if (this.f7674x0 == null) {
            Bundle arguments = getArguments();
            if (arguments != null) {
                this.f7674x0 = f1.L.fromBundle(arguments.getBundle("selector"));
            }
            if (this.f7674x0 == null) {
                this.f7674x0 = f1.L.f14160c;
            }
        }
        if (this.f7674x0.equals(l7)) {
            return;
        }
        this.f7674x0 = l7;
        Bundle arguments2 = getArguments();
        if (arguments2 == null) {
            arguments2 = new Bundle();
        }
        arguments2.putBundle("selector", l7.asBundle());
        setArguments(arguments2);
        e.c0 c0Var = this.f7673w0;
        if (c0Var == null || !this.f7672v0) {
            return;
        }
        ((m0) c0Var).setRouteSelector(l7);
    }
}
