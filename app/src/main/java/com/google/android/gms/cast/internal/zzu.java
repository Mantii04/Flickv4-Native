package com.google.android.gms.cast.internal;

import com.google.android.gms.cast.Cast;

/* loaded from: classes.dex */
final class zzu implements Runnable {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ zzw f10409b;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ String f10410e;

    /* renamed from: f, reason: collision with root package name */
    public final /* synthetic */ String f10411f;

    public zzu(zzw zzwVar, String str, String str2) {
        this.f10409b = zzwVar;
        this.f10410e = str;
        this.f10411f = str2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        Cast.MessageReceivedCallback messageReceivedCallback;
        synchronized (this.f10409b.f10420d) {
            messageReceivedCallback = (Cast.MessageReceivedCallback) this.f10409b.f10420d.get(this.f10410e);
        }
        if (messageReceivedCallback != null) {
            messageReceivedCallback.onMessageReceived(this.f10409b.f10418b, this.f10410e, this.f10411f);
        } else {
            zzw.f10414x.d("Discarded message for unknown namespace '%s'", this.f10410e);
        }
    }
}
