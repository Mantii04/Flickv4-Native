package com.google.android.gms.tasks;

import java.util.concurrent.Executor;

/* loaded from: classes2.dex */
final class zzd implements zzq {

    /* renamed from: b, reason: collision with root package name */
    public final Executor f12311b;

    /* renamed from: e, reason: collision with root package name */
    public final Continuation f12312e;

    /* renamed from: f, reason: collision with root package name */
    public final zzw f12313f;

    public zzd(Executor executor, Continuation continuation, zzw zzwVar) {
        this.f12311b = executor;
        this.f12312e = continuation;
        this.f12313f = zzwVar;
    }

    @Override // com.google.android.gms.tasks.zzq
    public final void zzd(Task task) {
        this.f12311b.execute(new zzc(this, task));
    }
}
