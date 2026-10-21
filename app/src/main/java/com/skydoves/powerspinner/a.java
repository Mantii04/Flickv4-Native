package com.skydoves.powerspinner;

import android.widget.PopupWindow;

/* loaded from: classes2.dex */
public final class a implements Runnable {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ PowerSpinnerView$show$1 f13397b;

    public a(PowerSpinnerView$show$1 powerSpinnerView$show$1) {
        this.f13397b = powerSpinnerView$show$1;
    }

    @Override // java.lang.Runnable
    public final void run() {
        PopupWindow popupWindow;
        PowerSpinnerView$show$1 powerSpinnerView$show$1 = this.f13397b;
        int spinnerPopupWidth = powerSpinnerView$show$1.f13381b.getSpinnerPopupWidth() != Integer.MIN_VALUE ? powerSpinnerView$show$1.f13381b.getSpinnerPopupWidth() : powerSpinnerView$show$1.f13381b.getWidth();
        int spinnerPopupHeight = powerSpinnerView$show$1.f13381b.getSpinnerPopupHeight() != Integer.MIN_VALUE ? powerSpinnerView$show$1.f13381b.getSpinnerPopupHeight() : powerSpinnerView$show$1.f13381b.getSpinnerRecyclerView().getHeight();
        popupWindow = powerSpinnerView$show$1.f13381b.f13371r;
        popupWindow.update(spinnerPopupWidth, spinnerPopupHeight);
    }
}
