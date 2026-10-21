package com.google.android.gms.cast.framework;

import androidx.media3.common.PlaybackException;
import com.google.android.gms.cast.LaunchOptions;
import com.google.android.gms.cast.framework.media.RemoteMediaClient;
import com.google.android.gms.cast.zzbt;
import com.google.android.gms.cast.zzbu;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.internal.RemoteCall;
import com.google.android.gms.common.api.internal.TaskApiCall;
import com.google.android.gms.common.internal.ApiExceptionUtil;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.tasks.OnCompleteListener;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.TaskCompletionSource;

/* loaded from: classes.dex */
final class zzw extends zzaf {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ CastSession f10330a;

    public /* synthetic */ zzw(CastSession castSession) {
        this.f10330a = castSession;
    }

    @Override // com.google.android.gms.cast.framework.zzag
    public final void zzb(int i2) {
        CastSession castSession = this.f10330a;
        castSession.f9865h.zzi(i2);
        com.google.android.gms.cast.zzr zzrVar = castSession.f9866i;
        if (zzrVar != null) {
            zzrVar.zzf();
            castSession.f9866i = null;
        }
        castSession.f9868k = null;
        RemoteMediaClient remoteMediaClient = castSession.f9867j;
        if (remoteMediaClient != null) {
            remoteMediaClient.zzs(null);
            castSession.f9867j = null;
        }
    }

    @Override // com.google.android.gms.cast.framework.zzag
    public final void zzc(final String str, final String str2) {
        CastSession castSession = this.f10330a;
        com.google.android.gms.cast.zzr zzrVar = castSession.f9866i;
        if (zzrVar == null || !zzrVar.zzl()) {
            return;
        }
        final zzbt zzbtVar = (zzbt) castSession.f9866i;
        final zzbu zzbuVar = null;
        zzbtVar.doWrite(TaskApiCall.builder().run(new RemoteCall(str, str2, zzbuVar) { // from class: com.google.android.gms.cast.zzbd

            /* renamed from: b, reason: collision with root package name */
            public final /* synthetic */ String f10480b;

            /* renamed from: c, reason: collision with root package name */
            public final /* synthetic */ String f10481c;

            /* JADX WARN: Multi-variable type inference failed */
            @Override // com.google.android.gms.common.api.internal.RemoteCall
            public final void accept(Object obj, Object obj2) {
                TaskCompletionSource taskCompletionSource = (TaskCompletionSource) obj2;
                zzbt zzbtVar2 = zzbt.this;
                Preconditions.checkState(zzbtVar2.zzl(), "Not connected to device");
                ((com.google.android.gms.cast.internal.zzag) ((com.google.android.gms.cast.internal.zzx) obj).getService()).zzg(this.f10480b, this.f10481c, null);
                synchronized (zzbtVar2.f10522q) {
                    try {
                        if (zzbtVar2.f10519n != null) {
                            zzbtVar2.d(2477);
                        }
                        zzbtVar2.f10519n = taskCompletionSource;
                    } catch (Throwable th) {
                        throw th;
                    }
                }
            }
        }).setMethodKey(8407).build()).addOnCompleteListener(new OnCompleteListener() { // from class: com.google.android.gms.cast.framework.zzu
            @Override // com.google.android.gms.tasks.OnCompleteListener
            public final void onComplete(Task task) {
                CastSession.a(zzw.this.f10330a, "joinApplication", task);
            }
        });
    }

    @Override // com.google.android.gms.cast.framework.zzag
    public final void zzd(final String str, final LaunchOptions launchOptions) {
        CastSession castSession = this.f10330a;
        com.google.android.gms.cast.zzr zzrVar = castSession.f9866i;
        if (zzrVar == null || !zzrVar.zzl()) {
            return;
        }
        final zzbt zzbtVar = (zzbt) castSession.f9866i;
        zzbtVar.doWrite(TaskApiCall.builder().run(new RemoteCall() { // from class: com.google.android.gms.cast.zzay
            /* JADX WARN: Multi-variable type inference failed */
            @Override // com.google.android.gms.common.api.internal.RemoteCall
            public final void accept(Object obj, Object obj2) {
                TaskCompletionSource taskCompletionSource = (TaskCompletionSource) obj2;
                zzbt zzbtVar2 = zzbt.this;
                Preconditions.checkState(zzbtVar2.zzl(), "Not connected to device");
                ((com.google.android.gms.cast.internal.zzag) ((com.google.android.gms.cast.internal.zzx) obj).getService()).zzh(str, launchOptions);
                synchronized (zzbtVar2.f10522q) {
                    try {
                        if (zzbtVar2.f10519n != null) {
                            zzbtVar2.d(2477);
                        }
                        zzbtVar2.f10519n = taskCompletionSource;
                    } catch (Throwable th) {
                        throw th;
                    }
                }
            }
        }).setMethodKey(8406).build()).addOnCompleteListener(new OnCompleteListener() { // from class: com.google.android.gms.cast.framework.zzt
            @Override // com.google.android.gms.tasks.OnCompleteListener
            public final void onComplete(Task task) {
                CastSession.a(zzw.this.f10330a, "launchApplication", task);
            }
        });
    }

    @Override // com.google.android.gms.cast.framework.zzag
    public final void zze(final String str) {
        CastSession castSession = this.f10330a;
        com.google.android.gms.cast.zzr zzrVar = castSession.f9866i;
        if (zzrVar == null || !zzrVar.zzl()) {
            return;
        }
        final zzbt zzbtVar = (zzbt) castSession.f9866i;
        zzbtVar.doWrite(TaskApiCall.builder().run(new RemoteCall() { // from class: com.google.android.gms.cast.zzbj
            /* JADX WARN: Multi-variable type inference failed */
            @Override // com.google.android.gms.common.api.internal.RemoteCall
            public final void accept(Object obj, Object obj2) {
                zzbt zzbtVar2 = zzbt.this;
                String str2 = str;
                TaskCompletionSource taskCompletionSource = (TaskCompletionSource) obj2;
                Preconditions.checkState(zzbtVar2.zzl(), "Not connected to device");
                ((com.google.android.gms.cast.internal.zzag) ((com.google.android.gms.cast.internal.zzx) obj).getService()).zzp(str2);
                synchronized (zzbtVar2.f10523r) {
                    try {
                        if (zzbtVar2.f10520o != null) {
                            taskCompletionSource.setException(ApiExceptionUtil.fromStatus(new Status(PlaybackException.ERROR_CODE_IO_NETWORK_CONNECTION_FAILED)));
                        } else {
                            zzbtVar2.f10520o = taskCompletionSource;
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                }
            }
        }).setMethodKey(8409).build());
    }
}
