package com.google.android.gms.cast.framework.media;

import com.google.android.gms.cast.framework.media.RemoteMediaClient;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.internal.BasePendingResult;
import java.util.Iterator;

/* loaded from: classes.dex */
abstract class zzbk extends BasePendingResult {

    /* renamed from: a, reason: collision with root package name */
    public com.google.android.gms.cast.internal.zzas f10277a;

    /* renamed from: b, reason: collision with root package name */
    public final boolean f10278b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ RemoteMediaClient f10279c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzbk(RemoteMediaClient remoteMediaClient, boolean z6) {
        super(null);
        this.f10279c = remoteMediaClient;
        this.f10278b = z6;
    }

    public final com.google.android.gms.cast.internal.zzas c() {
        if (this.f10277a == null) {
            this.f10277a = new zzbi(this);
        }
        return this.f10277a;
    }

    @Override // com.google.android.gms.common.api.internal.BasePendingResult
    public final /* synthetic */ Result createFailedResult(Status status) {
        return new zzbj(status);
    }

    public abstract void zza();

    public final void zzc() {
        if (!this.f10278b) {
            Iterator it = this.f10279c.f10037h.iterator();
            while (it.hasNext()) {
                ((RemoteMediaClient.Listener) it.next()).onSendingRemoteMediaRequest();
            }
            Iterator it2 = this.f10279c.f10038i.iterator();
            while (it2.hasNext()) {
                ((RemoteMediaClient.Callback) it2.next()).onSendingRemoteMediaRequest();
            }
        }
        try {
            synchronized (this.f10279c.f10030a) {
                zza();
            }
        } catch (com.google.android.gms.cast.internal.zzao unused) {
            setResult(new zzbj(new Status(2100)));
        }
    }
}
