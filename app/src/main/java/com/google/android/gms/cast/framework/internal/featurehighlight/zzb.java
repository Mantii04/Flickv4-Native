package com.google.android.gms.cast.framework.internal.featurehighlight;

import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.View;

/* loaded from: classes.dex */
final class zzb extends GestureDetector.SimpleOnGestureListener {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ View f9903b;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ zzg f9904e;

    public zzb(View view, zzg zzgVar) {
        this.f9903b = view;
        this.f9904e = zzgVar;
    }

    @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
    public final boolean onSingleTapUp(MotionEvent motionEvent) {
        View view = this.f9903b;
        if (view.getParent() != null) {
            view.performClick();
        }
        this.f9904e.zzb();
        return true;
    }
}
