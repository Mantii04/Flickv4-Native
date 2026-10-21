package com.google.android.gms.cast.framework.media.widget;

import com.google.android.gms.cast.Cast;

/* loaded from: classes.dex */
final class zzl extends Cast.Listener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ ExpandedControllerActivity f10245a;

    public zzl(ExpandedControllerActivity expandedControllerActivity) {
        this.f10245a = expandedControllerActivity;
    }

    @Override // com.google.android.gms.cast.Cast.Listener
    public final void onDeviceNameChanged() {
        int i2 = ExpandedControllerActivity.f10160Y;
        this.f10245a.h();
    }
}
