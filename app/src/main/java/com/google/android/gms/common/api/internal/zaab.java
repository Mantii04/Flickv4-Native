package com.google.android.gms.common.api.internal;

import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.api.Status;

/* loaded from: classes.dex */
final class zaab implements PendingResult.StatusListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ BasePendingResult f10675a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ zaad f10676b;

    public zaab(zaad zaadVar, BasePendingResult basePendingResult) {
        this.f10676b = zaadVar;
        this.f10675a = basePendingResult;
    }

    @Override // com.google.android.gms.common.api.PendingResult.StatusListener
    public final void onComplete(Status status) {
        this.f10676b.f10679a.remove(this.f10675a);
    }
}
