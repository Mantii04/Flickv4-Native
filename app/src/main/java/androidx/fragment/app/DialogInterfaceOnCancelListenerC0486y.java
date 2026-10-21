package androidx.fragment.app;

import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;

/* renamed from: androidx.fragment.app.y, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public class DialogInterfaceOnCancelListenerC0486y extends C implements DialogInterface.OnCancelListener, DialogInterface.OnDismissListener {

    /* renamed from: f0, reason: collision with root package name */
    public Handler f6354f0;

    /* renamed from: o0, reason: collision with root package name */
    public boolean f6363o0;

    /* renamed from: q0, reason: collision with root package name */
    public Dialog f6365q0;

    /* renamed from: r0, reason: collision with root package name */
    public boolean f6366r0;

    /* renamed from: s0, reason: collision with root package name */
    public boolean f6367s0;

    /* renamed from: t0, reason: collision with root package name */
    public boolean f6368t0;

    /* renamed from: g0, reason: collision with root package name */
    public final RunnableC0481t f6355g0 = new RunnableC0481t(this);

    /* renamed from: h0, reason: collision with root package name */
    public final DialogInterfaceOnCancelListenerC0482u f6356h0 = new DialogInterfaceOnCancelListenerC0482u(this);

    /* renamed from: i0, reason: collision with root package name */
    public final DialogInterfaceOnDismissListenerC0483v f6357i0 = new DialogInterfaceOnDismissListenerC0483v(this);

    /* renamed from: j0, reason: collision with root package name */
    public int f6358j0 = 0;

    /* renamed from: k0, reason: collision with root package name */
    public int f6359k0 = 0;

    /* renamed from: l0, reason: collision with root package name */
    public boolean f6360l0 = true;

    /* renamed from: m0, reason: collision with root package name */
    public boolean f6361m0 = true;

    /* renamed from: n0, reason: collision with root package name */
    public int f6362n0 = -1;

    /* renamed from: p0, reason: collision with root package name */
    public final C0484w f6364p0 = new C0484w(this);

    /* renamed from: u0, reason: collision with root package name */
    public boolean f6369u0 = false;

    @Override // androidx.fragment.app.C
    public final L a() {
        return new C0485x(this, new A(this));
    }

    public void dismiss() {
        i(false, false);
    }

    @Override // androidx.fragment.app.C
    public final void g(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        Bundle bundle2;
        super.g(layoutInflater, viewGroup, bundle);
        if (this.f6068Q != null || this.f6365q0 == null || bundle == null || (bundle2 = bundle.getBundle("android:savedDialogState")) == null) {
            return;
        }
        this.f6365q0.onRestoreInstanceState(bundle2);
    }

    public Dialog getDialog() {
        return this.f6365q0;
    }

    public int getTheme() {
        return this.f6359k0;
    }

    public final void i(boolean z6, boolean z7) {
        if (this.f6367s0) {
            return;
        }
        this.f6367s0 = true;
        this.f6368t0 = false;
        Dialog dialog = this.f6365q0;
        if (dialog != null) {
            dialog.setOnDismissListener(null);
            this.f6365q0.dismiss();
            if (!z7) {
                if (Looper.myLooper() == this.f6354f0.getLooper()) {
                    onDismiss(this.f6365q0);
                } else {
                    this.f6354f0.post(this.f6355g0);
                }
            }
        }
        this.f6366r0 = true;
        if (this.f6362n0 >= 0) {
            AbstractC0467i0 parentFragmentManager = getParentFragmentManager();
            int i2 = this.f6362n0;
            parentFragmentManager.getClass();
            if (i2 < 0) {
                throw new IllegalArgumentException(A.i.f(i2, "Bad id: "));
            }
            parentFragmentManager.u(new C0465h0(parentFragmentManager, i2), z6);
            this.f6362n0 = -1;
            return;
        }
        v0 beginTransaction = getParentFragmentManager().beginTransaction();
        beginTransaction.setReorderingAllowed(true);
        beginTransaction.remove(this);
        if (z6) {
            beginTransaction.commitAllowingStateLoss();
        } else {
            beginTransaction.commit();
        }
    }

    @Override // androidx.fragment.app.C
    @Deprecated
    public void onActivityCreated(Bundle bundle) {
        super.onActivityCreated(bundle);
    }

    @Override // androidx.fragment.app.C
    public void onAttach(Context context) {
        super.onAttach(context);
        getViewLifecycleOwnerLiveData().observeForever(this.f6364p0);
        if (this.f6368t0) {
            return;
        }
        this.f6367s0 = false;
    }

    @Override // android.content.DialogInterface.OnCancelListener
    public void onCancel(DialogInterface dialogInterface) {
    }

    @Override // androidx.fragment.app.C
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.f6354f0 = new Handler();
        this.f6361m0 = this.f6058G == 0;
        if (bundle != null) {
            this.f6358j0 = bundle.getInt("android:style", 0);
            this.f6359k0 = bundle.getInt("android:theme", 0);
            this.f6360l0 = bundle.getBoolean("android:cancelable", true);
            this.f6361m0 = bundle.getBoolean("android:showsDialog", this.f6361m0);
            this.f6362n0 = bundle.getInt("android:backStackId", -1);
        }
    }

    public Dialog onCreateDialog(Bundle bundle) {
        if (AbstractC0467i0.isLoggingEnabled(3)) {
            Log.d("FragmentManager", "onCreateDialog called for DialogFragment " + this);
        }
        return new androidx.activity.p(requireContext(), getTheme());
    }

    @Override // androidx.fragment.app.C
    public void onDestroyView() {
        super.onDestroyView();
        Dialog dialog = this.f6365q0;
        if (dialog != null) {
            this.f6366r0 = true;
            dialog.setOnDismissListener(null);
            this.f6365q0.dismiss();
            if (!this.f6367s0) {
                onDismiss(this.f6365q0);
            }
            this.f6365q0 = null;
            this.f6369u0 = false;
        }
    }

    @Override // androidx.fragment.app.C
    public void onDetach() {
        super.onDetach();
        if (!this.f6368t0 && !this.f6367s0) {
            this.f6367s0 = true;
        }
        getViewLifecycleOwnerLiveData().removeObserver(this.f6364p0);
    }

    @Override // android.content.DialogInterface.OnDismissListener
    public void onDismiss(DialogInterface dialogInterface) {
        if (this.f6366r0) {
            return;
        }
        if (AbstractC0467i0.isLoggingEnabled(3)) {
            Log.d("FragmentManager", "onDismiss called for DialogFragment " + this);
        }
        i(true, true);
    }

    @Override // androidx.fragment.app.C
    public LayoutInflater onGetLayoutInflater(Bundle bundle) {
        LayoutInflater onGetLayoutInflater = super.onGetLayoutInflater(bundle);
        boolean z6 = this.f6361m0;
        if (z6 && !this.f6363o0) {
            if (z6 && !this.f6369u0) {
                try {
                    this.f6363o0 = true;
                    Dialog onCreateDialog = onCreateDialog(bundle);
                    this.f6365q0 = onCreateDialog;
                    if (this.f6361m0) {
                        setupDialog(onCreateDialog, this.f6358j0);
                        Context context = getContext();
                        if (context instanceof Activity) {
                            this.f6365q0.setOwnerActivity((Activity) context);
                        }
                        this.f6365q0.setCancelable(this.f6360l0);
                        this.f6365q0.setOnCancelListener(this.f6356h0);
                        this.f6365q0.setOnDismissListener(this.f6357i0);
                        this.f6369u0 = true;
                    } else {
                        this.f6365q0 = null;
                    }
                    this.f6363o0 = false;
                } catch (Throwable th) {
                    this.f6363o0 = false;
                    throw th;
                }
            }
            if (AbstractC0467i0.isLoggingEnabled(2)) {
                Log.d("FragmentManager", "get layout inflater for DialogFragment " + this + " from dialog context");
            }
            Dialog dialog = this.f6365q0;
            if (dialog != null) {
                return onGetLayoutInflater.cloneInContext(dialog.getContext());
            }
        } else if (AbstractC0467i0.isLoggingEnabled(2)) {
            String str = "getting layout inflater for DialogFragment " + this;
            if (!this.f6361m0) {
                Log.d("FragmentManager", "mShowsDialog = false: " + str);
                return onGetLayoutInflater;
            }
            Log.d("FragmentManager", "mCreatingDialog = true: " + str);
        }
        return onGetLayoutInflater;
    }

    @Override // androidx.fragment.app.C
    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        Dialog dialog = this.f6365q0;
        if (dialog != null) {
            Bundle onSaveInstanceState = dialog.onSaveInstanceState();
            onSaveInstanceState.putBoolean("android:dialogShowing", false);
            bundle.putBundle("android:savedDialogState", onSaveInstanceState);
        }
        int i2 = this.f6358j0;
        if (i2 != 0) {
            bundle.putInt("android:style", i2);
        }
        int i7 = this.f6359k0;
        if (i7 != 0) {
            bundle.putInt("android:theme", i7);
        }
        boolean z6 = this.f6360l0;
        if (!z6) {
            bundle.putBoolean("android:cancelable", z6);
        }
        boolean z7 = this.f6361m0;
        if (!z7) {
            bundle.putBoolean("android:showsDialog", z7);
        }
        int i8 = this.f6362n0;
        if (i8 != -1) {
            bundle.putInt("android:backStackId", i8);
        }
    }

    @Override // androidx.fragment.app.C
    public void onStart() {
        super.onStart();
        Dialog dialog = this.f6365q0;
        if (dialog != null) {
            this.f6366r0 = false;
            dialog.show();
            View decorView = this.f6365q0.getWindow().getDecorView();
            androidx.lifecycle.k0.set(decorView, this);
            androidx.lifecycle.l0.set(decorView, this);
            androidx.savedstate.a.set(decorView, this);
        }
    }

    @Override // androidx.fragment.app.C
    public void onStop() {
        super.onStop();
        Dialog dialog = this.f6365q0;
        if (dialog != null) {
            dialog.hide();
        }
    }

    @Override // androidx.fragment.app.C
    public void onViewStateRestored(Bundle bundle) {
        Bundle bundle2;
        super.onViewStateRestored(bundle);
        if (this.f6365q0 == null || bundle == null || (bundle2 = bundle.getBundle("android:savedDialogState")) == null) {
            return;
        }
        this.f6365q0.onRestoreInstanceState(bundle2);
    }

    public final Dialog requireDialog() {
        Dialog dialog = getDialog();
        if (dialog != null) {
            return dialog;
        }
        throw new IllegalStateException("DialogFragment " + this + " does not have a Dialog.");
    }

    public void setCancelable(boolean z6) {
        this.f6360l0 = z6;
        Dialog dialog = this.f6365q0;
        if (dialog != null) {
            dialog.setCancelable(z6);
        }
    }

    public void setShowsDialog(boolean z6) {
        this.f6361m0 = z6;
    }

    public void setupDialog(Dialog dialog, int i2) {
        if (i2 != 1 && i2 != 2) {
            if (i2 != 3) {
                return;
            }
            Window window = dialog.getWindow();
            if (window != null) {
                window.addFlags(24);
            }
        }
        dialog.requestWindowFeature(1);
    }

    public void show(AbstractC0467i0 abstractC0467i0, String str) {
        this.f6367s0 = false;
        this.f6368t0 = true;
        v0 beginTransaction = abstractC0467i0.beginTransaction();
        beginTransaction.setReorderingAllowed(true);
        beginTransaction.add(this, str);
        beginTransaction.commit();
    }

    public int show(v0 v0Var, String str) {
        this.f6367s0 = false;
        this.f6368t0 = true;
        v0Var.add(this, str);
        this.f6366r0 = false;
        int commit = v0Var.commit();
        this.f6362n0 = commit;
        return commit;
    }
}
