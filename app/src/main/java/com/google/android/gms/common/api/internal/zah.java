package com.google.android.gms.common.api.internal;

import android.os.RemoteException;
import com.google.android.gms.common.Feature;
import com.google.android.gms.common.api.internal.ListenerHolder;
import com.google.android.gms.tasks.TaskCompletionSource;

/* loaded from: classes.dex */
public final class zah extends zad<Boolean> {

    /* renamed from: c, reason: collision with root package name */
    public final ListenerHolder.ListenerKey f10802c;

    public zah(ListenerHolder.ListenerKey<?> listenerKey, TaskCompletionSource<Boolean> taskCompletionSource) {
        super(4, taskCompletionSource);
        this.f10802c = listenerKey;
    }

    @Override // com.google.android.gms.common.api.internal.zac
    public final boolean zaa(zabq<?> zabqVar) {
        zaci zaciVar = zabqVar.zah().get(this.f10802c);
        return zaciVar != null && zaciVar.f10765a.zab();
    }

    @Override // com.google.android.gms.common.api.internal.zac
    public final Feature[] zab(zabq<?> zabqVar) {
        zaci zaciVar = zabqVar.zah().get(this.f10802c);
        if (zaciVar == null) {
            return null;
        }
        return zaciVar.f10765a.getRequiredFeatures();
    }

    @Override // com.google.android.gms.common.api.internal.zad
    public final void zac(zabq<?> zabqVar) throws RemoteException {
        zaci remove = zabqVar.zah().remove(this.f10802c);
        TaskCompletionSource<Boolean> taskCompletionSource = this.f10787b;
        if (remove == null) {
            taskCompletionSource.trySetResult(Boolean.FALSE);
        } else {
            remove.f10766b.unregisterListener(zabqVar.zaf(), taskCompletionSource);
            remove.f10765a.clearListener();
        }
    }

    @Override // com.google.android.gms.common.api.internal.zad, com.google.android.gms.common.api.internal.zai
    public final /* bridge */ /* synthetic */ void zag(zaad zaadVar, boolean z6) {
    }
}
