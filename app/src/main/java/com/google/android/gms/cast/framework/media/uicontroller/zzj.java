package com.google.android.gms.cast.framework.media.uicontroller;

import android.view.View;

/* loaded from: classes.dex */
final class zzj implements View.OnClickListener {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ UIMediaController f10138b;

    public zzj(UIMediaController uIMediaController) {
        this.f10138b = uIMediaController;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        this.f10138b.onLaunchExpandedControllerClicked(view);
    }
}
