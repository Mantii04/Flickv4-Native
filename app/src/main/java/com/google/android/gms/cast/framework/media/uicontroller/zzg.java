package com.google.android.gms.cast.framework.media.uicontroller;

import android.view.View;

/* loaded from: classes.dex */
final class zzg implements View.OnClickListener {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ long f10135b;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ UIMediaController f10136e;

    public zzg(UIMediaController uIMediaController, long j7) {
        this.f10136e = uIMediaController;
        this.f10135b = j7;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        this.f10136e.onRewindClicked(view, this.f10135b);
    }
}
