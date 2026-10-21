package com.google.android.material.datepicker;

import android.util.DisplayMetrics;

/* loaded from: classes2.dex */
public final class J extends m1.I {
    @Override // m1.I
    public float calculateSpeedPerPixel(DisplayMetrics displayMetrics) {
        return 100.0f / displayMetrics.densityDpi;
    }
}
