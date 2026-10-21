package com.google.android.gms.cast.framework.media.widget;

import android.view.View;
import com.google.android.gms.cast.framework.media.RemoteMediaClient;

/* loaded from: classes.dex */
final class zzi implements View.OnClickListener {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ ExpandedControllerActivity f10241b;

    public zzi(ExpandedControllerActivity expandedControllerActivity) {
        this.f10241b = expandedControllerActivity;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        RemoteMediaClient e3;
        ExpandedControllerActivity expandedControllerActivity = this.f10241b;
        if (!expandedControllerActivity.f10175O.isClickable() || (e3 = expandedControllerActivity.e()) == null) {
            return;
        }
        e3.skipAd();
    }
}
