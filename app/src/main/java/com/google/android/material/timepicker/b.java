package com.google.android.material.timepicker;

import android.view.ViewTreeObserver;

/* loaded from: classes2.dex */
public final class b implements ViewTreeObserver.OnPreDrawListener {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ ClockFaceView f12975b;

    public b(ClockFaceView clockFaceView) {
        this.f12975b = clockFaceView;
    }

    @Override // android.view.ViewTreeObserver.OnPreDrawListener
    public boolean onPreDraw() {
        ClockFaceView clockFaceView = this.f12975b;
        if (!clockFaceView.isShown()) {
            return true;
        }
        clockFaceView.getViewTreeObserver().removeOnPreDrawListener(this);
        clockFaceView.setRadius(((clockFaceView.getHeight() / 2) - clockFaceView.f12941G.getSelectorRadius()) - clockFaceView.f12949O);
        return true;
    }
}
