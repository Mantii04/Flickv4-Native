package com.google.android.gms.cast.framework.media.uicontroller;

import android.view.View;

/* loaded from: classes.dex */
final class zzd implements View.OnClickListener {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ UIMediaController f10131b;

    public zzd(UIMediaController uIMediaController) {
        this.f10131b = uIMediaController;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        this.f10131b.onSkipNextClicked(view);
    }
}
