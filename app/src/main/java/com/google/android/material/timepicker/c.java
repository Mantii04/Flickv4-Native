package com.google.android.material.timepicker;

import M.C0152b;
import android.os.Bundle;
import android.os.SystemClock;
import android.view.MotionEvent;
import android.view.View;
import com.google.android.material.R;

/* loaded from: classes2.dex */
public final class c extends C0152b {

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ ClockFaceView f12976d;

    public c(ClockFaceView clockFaceView) {
        this.f12976d = clockFaceView;
    }

    @Override // M.C0152b
    public void onInitializeAccessibilityNodeInfo(View view, N.n nVar) {
        super.onInitializeAccessibilityNodeInfo(view, nVar);
        int intValue = ((Integer) view.getTag(R.id.material_value_index)).intValue();
        if (intValue > 0) {
            nVar.setTraversalAfter((View) this.f12976d.f12945K.get(intValue - 1));
        }
        nVar.setCollectionItemInfo(N.m.obtain(0, 1, intValue, 1, false, view.isSelected()));
        nVar.setClickable(true);
        nVar.addAction(N.h.f2123g);
    }

    @Override // M.C0152b
    public boolean performAccessibilityAction(View view, int i2, Bundle bundle) {
        if (i2 != 16) {
            return super.performAccessibilityAction(view, i2, bundle);
        }
        long uptimeMillis = SystemClock.uptimeMillis();
        ClockFaceView clockFaceView = this.f12976d;
        view.getHitRect(clockFaceView.f12942H);
        float centerX = clockFaceView.f12942H.centerX();
        float centerY = clockFaceView.f12942H.centerY();
        clockFaceView.f12941G.onTouchEvent(MotionEvent.obtain(uptimeMillis, uptimeMillis, 0, centerX, centerY, 0));
        clockFaceView.f12941G.onTouchEvent(MotionEvent.obtain(uptimeMillis, uptimeMillis, 1, centerX, centerY, 0));
        return true;
    }
}
