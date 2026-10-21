package com.google.android.gms.cast.framework;

import com.google.android.gms.internal.cast.zzml;
import com.google.android.gms.tasks.OnSuccessListener;
import java.lang.ref.WeakReference;

/* loaded from: classes.dex */
public final /* synthetic */ class zzd implements OnSuccessListener {
    @Override // com.google.android.gms.tasks.OnSuccessListener
    public final void onSuccess(Object obj) {
        synchronized (CastButtonFactory.f9814d) {
            CastButtonFactory.f9813c.add(new WeakReference(null));
        }
        com.google.android.gms.internal.cast.zzo.zzd(zzml.CAST_DEFAULT_MEDIA_ROUTER_DIALOG);
    }
}
