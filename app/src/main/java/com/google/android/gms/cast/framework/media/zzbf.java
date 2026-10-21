package com.google.android.gms.cast.framework.media;

import androidx.media3.exoplayer.Renderer;
import com.google.android.gms.cast.internal.CastUtils;
import com.google.android.gms.common.api.ApiException;
import com.google.android.gms.tasks.OnFailureListener;
import java.util.concurrent.atomic.AtomicLong;
import okhttp3.internal.ws.WebSocketProtocol;

/* loaded from: classes.dex */
final class zzbf implements com.google.android.gms.cast.internal.zzar {

    /* renamed from: a, reason: collision with root package name */
    public com.google.android.gms.cast.zzr f10271a;

    /* renamed from: b, reason: collision with root package name */
    public final AtomicLong f10272b = new AtomicLong((CastUtils.zza() & WebSocketProtocol.PAYLOAD_SHORT_MAX) * Renderer.DEFAULT_DURATION_TO_PROGRESS_US);

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ RemoteMediaClient f10273c;

    public zzbf(RemoteMediaClient remoteMediaClient) {
        this.f10273c = remoteMediaClient;
    }

    @Override // com.google.android.gms.cast.internal.zzar
    public final long zza() {
        return this.f10272b.getAndIncrement();
    }

    @Override // com.google.android.gms.cast.internal.zzar
    public final void zzb(String str, String str2, final long j7, String str3) {
        com.google.android.gms.cast.zzr zzrVar = this.f10271a;
        if (zzrVar == null) {
            throw new IllegalStateException("Device is not connected");
        }
        zzrVar.zzh(str, str2).addOnFailureListener(new OnFailureListener() { // from class: com.google.android.gms.cast.framework.media.zzbe
            @Override // com.google.android.gms.tasks.OnFailureListener
            public final void onFailure(Exception exc) {
                zzbf.this.f10273c.f10032c.zzP(j7, exc instanceof ApiException ? ((ApiException) exc).getStatusCode() : 13);
            }
        });
    }

    public final void zzc(com.google.android.gms.cast.zzr zzrVar) {
        this.f10271a = zzrVar;
    }
}
