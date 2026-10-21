package com.google.android.gms.internal.cast;

import com.google.android.gms.cast.framework.CastSession;
import com.google.android.gms.cast.internal.Logger;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.internal.BasePendingResult;

/* loaded from: classes2.dex */
final class zzbq extends BasePendingResult {
    private final zzbr zza;

    public zzbq(zzbr zzbrVar) {
        super(null);
        this.zza = zzbrVar;
    }

    @Override // com.google.android.gms.common.api.internal.BasePendingResult
    public final Result createFailedResult(Status status) {
        Logger logger = CastSession.f9859n;
        return status;
    }
}
