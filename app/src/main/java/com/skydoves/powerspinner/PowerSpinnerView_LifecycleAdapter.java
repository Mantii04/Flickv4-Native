package com.skydoves.powerspinner;

import androidx.lifecycle.D;
import androidx.lifecycle.InterfaceC0551i;
import androidx.lifecycle.InterfaceC0561t;
import androidx.lifecycle.Lifecycle$Event;

/* loaded from: classes2.dex */
public class PowerSpinnerView_LifecycleAdapter implements InterfaceC0551i {

    /* renamed from: a, reason: collision with root package name */
    public final PowerSpinnerView f13384a;

    public PowerSpinnerView_LifecycleAdapter(PowerSpinnerView powerSpinnerView) {
        this.f13384a = powerSpinnerView;
    }

    @Override // androidx.lifecycle.InterfaceC0551i
    public void callMethods(InterfaceC0561t interfaceC0561t, Lifecycle$Event lifecycle$Event, boolean z6, D d7) {
        boolean z7 = d7 != null;
        if (!z6 && lifecycle$Event == Lifecycle$Event.ON_DESTROY) {
            if (!z7 || d7.approveCall("onDestroy", 1)) {
                this.f13384a.onDestroy();
            }
        }
    }
}
