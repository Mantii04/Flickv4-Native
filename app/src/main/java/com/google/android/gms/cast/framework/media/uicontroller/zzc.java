package com.google.android.gms.cast.framework.media.uicontroller;

import android.view.View;
import android.widget.ImageView;

/* loaded from: classes.dex */
final class zzc implements View.OnClickListener {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ UIMediaController f10130b;

    public zzc(UIMediaController uIMediaController) {
        this.f10130b = uIMediaController;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        this.f10130b.onPlayPauseToggleClicked((ImageView) view);
    }
}
