package com.google.android.gms.cast;

import android.util.Log;
import com.google.android.gms.common.api.Status;

/* loaded from: classes.dex */
final class zzdn implements com.google.android.gms.cast.internal.zzas {
    @Override // com.google.android.gms.cast.internal.zzas
    public final void zza(String str, long j7, int i2, Object obj, long j8, long j9) {
        try {
            Status status = new Status(i2);
            if (true != (obj instanceof com.google.android.gms.cast.internal.zzap)) {
                obj = null;
            }
            if (obj != null) {
            }
            new zzdq(status);
            throw null;
        } catch (IllegalStateException e3) {
            Log.e("RemoteMediaPlayer", "Result already set when calling onRequestCompleted", e3);
        }
    }

    @Override // com.google.android.gms.cast.internal.zzas
    public final void zzb(String str, long j7, long j8, long j9) {
        try {
            new zzdo(new Status(2103));
            throw null;
        } catch (IllegalStateException e3) {
            Log.e("RemoteMediaPlayer", "Result already set when calling onRequestReplaced", e3);
        }
    }
}
