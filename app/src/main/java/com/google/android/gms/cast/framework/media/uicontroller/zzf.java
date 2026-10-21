package com.google.android.gms.cast.framework.media.uicontroller;

import android.view.View;

/* loaded from: classes.dex */
final class zzf implements View.OnClickListener {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ long f10133b;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ UIMediaController f10134e;

    public zzf(UIMediaController uIMediaController, long j7) {
        this.f10134e = uIMediaController;
        this.f10133b = j7;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        this.f10134e.onForwardClicked(view, this.f10133b);
    }
}
