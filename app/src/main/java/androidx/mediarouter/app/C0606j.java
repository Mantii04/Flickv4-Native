package androidx.mediarouter.app;

import android.app.Dialog;
import android.content.Context;
import android.content.res.Configuration;
import android.os.Bundle;
import androidx.fragment.app.DialogInterfaceOnCancelListenerC0486y;

/* renamed from: androidx.mediarouter.app.j, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public class C0606j extends DialogInterfaceOnCancelListenerC0486y {

    /* renamed from: v0, reason: collision with root package name */
    public boolean f7823v0 = false;

    /* renamed from: w0, reason: collision with root package name */
    public e.c0 f7824w0;

    /* renamed from: x0, reason: collision with root package name */
    public f1.L f7825x0;

    public C0606j() {
        setCancelable(true);
    }

    public f1.L getRouteSelector() {
        if (this.f7825x0 == null) {
            Bundle arguments = getArguments();
            if (arguments != null) {
                this.f7825x0 = f1.L.fromBundle(arguments.getBundle("selector"));
            }
            if (this.f7825x0 == null) {
                this.f7825x0 = f1.L.f14160c;
            }
        }
        return this.f7825x0;
    }

    @Override // androidx.fragment.app.C, android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        e.c0 c0Var = this.f7824w0;
        if (c0Var == null) {
            return;
        }
        if (!this.f7823v0) {
            DialogC0605i dialogC0605i = (DialogC0605i) c0Var;
            dialogC0605i.getWindow().setLayout(G.getDialogWidth(dialogC0605i.getContext()), -2);
            return;
        }
        Q q6 = (Q) c0Var;
        Context context = q6.f7732q;
        q6.getWindow().setLayout(G.getDialogWidthForDynamicGroup(context), G.getDialogHeight(context));
    }

    public DialogC0605i onCreateChooserDialog(Context context, Bundle bundle) {
        return new DialogC0605i(context);
    }

    @Override // androidx.fragment.app.DialogInterfaceOnCancelListenerC0486y
    public Dialog onCreateDialog(Bundle bundle) {
        if (this.f7823v0) {
            Q onCreateDynamicChooserDialog = onCreateDynamicChooserDialog(getContext());
            this.f7824w0 = onCreateDynamicChooserDialog;
            onCreateDynamicChooserDialog.setRouteSelector(getRouteSelector());
        } else {
            DialogC0605i onCreateChooserDialog = onCreateChooserDialog(getContext(), bundle);
            this.f7824w0 = onCreateChooserDialog;
            onCreateChooserDialog.setRouteSelector(getRouteSelector());
        }
        return this.f7824w0;
    }

    public Q onCreateDynamicChooserDialog(Context context) {
        return new Q(context);
    }

    public void setRouteSelector(f1.L l7) {
        if (l7 == null) {
            throw new IllegalArgumentException("selector must not be null");
        }
        if (this.f7825x0 == null) {
            Bundle arguments = getArguments();
            if (arguments != null) {
                this.f7825x0 = f1.L.fromBundle(arguments.getBundle("selector"));
            }
            if (this.f7825x0 == null) {
                this.f7825x0 = f1.L.f14160c;
            }
        }
        if (this.f7825x0.equals(l7)) {
            return;
        }
        this.f7825x0 = l7;
        Bundle arguments2 = getArguments();
        if (arguments2 == null) {
            arguments2 = new Bundle();
        }
        arguments2.putBundle("selector", l7.asBundle());
        setArguments(arguments2);
        e.c0 c0Var = this.f7824w0;
        if (c0Var != null) {
            if (this.f7823v0) {
                ((Q) c0Var).setRouteSelector(l7);
            } else {
                ((DialogC0605i) c0Var).setRouteSelector(l7);
            }
        }
    }
}
