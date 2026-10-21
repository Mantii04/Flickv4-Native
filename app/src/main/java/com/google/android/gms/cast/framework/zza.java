package com.google.android.gms.cast.framework;

import com.google.android.gms.tasks.OnSuccessListener;
import java.util.ArrayList;

/* loaded from: classes.dex */
public final /* synthetic */ class zza implements OnSuccessListener {
    @Override // com.google.android.gms.tasks.OnSuccessListener
    public final void onSuccess(Object obj) {
        CastContext castContext = (CastContext) obj;
        ArrayList arrayList = CastButtonFactory.f9811a;
        if (castContext == null) {
            throw null;
        }
        if (castContext.getMergedSelector() == null) {
            throw null;
        }
        throw null;
    }
}
