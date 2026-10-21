package com.skydoves.powerspinner;

import android.widget.PopupWindow;
import kotlin.jvm.internal.Lambda;
import u5.C1711j;

/* loaded from: classes2.dex */
public final class PowerSpinnerView$show$1 extends Lambda implements H5.a {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ PowerSpinnerView f13381b;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ int f13382e;

    /* renamed from: f, reason: collision with root package name */
    public final /* synthetic */ int f13383f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PowerSpinnerView$show$1(PowerSpinnerView powerSpinnerView, int i2, int i7) {
        super(0);
        this.f13381b = powerSpinnerView;
        this.f13382e = i2;
        this.f13383f = i7;
    }

    @Override // H5.a
    public /* bridge */ /* synthetic */ Object invoke() {
        m82invoke();
        return C1711j.f20329a;
    }

    /* renamed from: invoke, reason: collision with other method in class */
    public final void m82invoke() {
        PopupWindow popupWindow;
        PowerSpinnerView powerSpinnerView = this.f13381b;
        if (powerSpinnerView.isShowing()) {
            return;
        }
        powerSpinnerView.f13372s = true;
        PowerSpinnerView.access$animateArrow(powerSpinnerView, true);
        PowerSpinnerView.access$applyWindowAnimation(powerSpinnerView);
        popupWindow = powerSpinnerView.f13371r;
        popupWindow.showAsDropDown(powerSpinnerView, this.f13382e, this.f13383f);
        powerSpinnerView.post(new a(this));
    }
}
