package com.google.android.gms.common.api.internal;

import android.os.RemoteException;
import com.google.android.gms.common.Feature;
import com.google.android.gms.common.api.internal.ListenerHolder;
import com.google.android.gms.tasks.TaskCompletionSource;

/* loaded from: classes.dex */
public final class zaf extends zad<Void> {

    /* renamed from: c, reason: collision with root package name */
    public final zaci f10798c;

    public zaf(zaci zaciVar, TaskCompletionSource<Void> taskCompletionSource) {
        super(3, taskCompletionSource);
        this.f10798c = zaciVar;
    }

    @Override // com.google.android.gms.common.api.internal.zac
    public final boolean zaa(zabq<?> zabqVar) {
        return this.f10798c.f10765a.zab();
    }

    @Override // com.google.android.gms.common.api.internal.zac
    public final Feature[] zab(zabq<?> zabqVar) {
        return this.f10798c.f10765a.getRequiredFeatures();
    }

    @Override // com.google.android.gms.common.api.internal.zad
    public final void zac(zabq<?> zabqVar) throws RemoteException {
        zaci zaciVar = this.f10798c;
        zaciVar.f10765a.registerListener(zabqVar.zaf(), this.f10787b);
        ListenerHolder.ListenerKey<?> listenerKey = zaciVar.f10765a.getListenerKey();
        if (listenerKey != null) {
            zabqVar.zah().put(listenerKey, zaciVar);
        }
    }

    @Override // com.google.android.gms.common.api.internal.zad, com.google.android.gms.common.api.internal.zai
    public final /* bridge */ /* synthetic */ void zag(zaad zaadVar, boolean z6) {
    }
}
