package com.google.android.gms.cast;

import android.annotation.SuppressLint;
import com.google.android.gms.cast.Cast;
import com.google.android.gms.common.api.Result;

@SuppressLint({"MissingRemoteException"})
@Deprecated
/* loaded from: classes.dex */
public class RemoteMediaPlayer implements Cast.MessageReceivedCallback {

    /* renamed from: c, reason: collision with root package name */
    public static final /* synthetic */ int f9785c = 0;

    /* renamed from: a, reason: collision with root package name */
    public final Object f9786a;

    /* renamed from: b, reason: collision with root package name */
    public final com.google.android.gms.cast.internal.zzaq f9787b;

    @Deprecated
    public interface MediaChannelResult extends Result {
    }

    @Deprecated
    public interface OnMetadataUpdatedListener {
    }

    @Deprecated
    public interface OnPreloadStatusUpdatedListener {
    }

    @Deprecated
    public interface OnQueueStatusUpdatedListener {
    }

    @Deprecated
    public interface OnStatusUpdatedListener {
    }

    static {
        String str = com.google.android.gms.cast.internal.zzaq.f10356w;
    }

    public RemoteMediaPlayer() {
        com.google.android.gms.cast.internal.zzaq zzaqVar = new com.google.android.gms.cast.internal.zzaq(null);
        this.f9786a = new Object();
        this.f9787b = zzaqVar;
        zzaqVar.zzQ(new zzcy(this));
        zzaqVar.zzh(new zzdm(this));
    }

    @Override // com.google.android.gms.cast.Cast.MessageReceivedCallback
    public void onMessageReceived(CastDevice castDevice, String str, String str2) {
        this.f9787b.zzO(str2);
    }
}
