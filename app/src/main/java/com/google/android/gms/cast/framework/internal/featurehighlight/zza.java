package com.google.android.gms.cast.framework.internal.featurehighlight;

import android.view.GestureDetector;
import android.view.MotionEvent;

/* loaded from: classes.dex */
final class zza extends GestureDetector.SimpleOnGestureListener {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ zzh f9902b;

    public zza(zzh zzhVar) {
        this.f9902b = zzhVar;
    }

    @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
    public final boolean onSingleTapUp(MotionEvent motionEvent) {
        float x6 = motionEvent.getX();
        float y6 = motionEvent.getY();
        zzh zzhVar = this.f9902b;
        if (zzhVar.f9922t == null) {
            return true;
        }
        if (zzhVar.f9914f.contains(Math.round(x6), Math.round(y6)) && zzhVar.f9915j.zzg(x6, y6)) {
            return true;
        }
        zzhVar.f9922t.zza();
        return true;
    }
}
