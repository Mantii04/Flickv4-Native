package com.google.android.gms.cast.framework.media.uicontroller;

import android.view.View;
import android.widget.ImageView;

/* loaded from: classes.dex */
final class zzb implements View.OnClickListener {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ UIMediaController f10129b;

    public zzb(UIMediaController uIMediaController) {
        this.f10129b = uIMediaController;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        this.f10129b.onMuteToggleClicked((ImageView) view);
    }
}
