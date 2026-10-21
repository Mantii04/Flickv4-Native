package com.google.android.gms.cast.framework;

import android.view.MenuItem;
import com.google.android.gms.internal.cast.zzml;
import com.google.android.gms.tasks.OnSuccessListener;
import java.lang.ref.WeakReference;

/* loaded from: classes.dex */
public final /* synthetic */ class zzc implements OnSuccessListener {
    @Override // com.google.android.gms.tasks.OnSuccessListener
    public final void onSuccess(Object obj) {
        MenuItem menuItem = (MenuItem) obj;
        synchronized (CastButtonFactory.f9812b) {
            CastButtonFactory.f9811a.add(new WeakReference(menuItem));
        }
        com.google.android.gms.internal.cast.zzo.zzd(zzml.CAST_DEFAULT_MEDIA_ROUTER_DIALOG);
    }
}
