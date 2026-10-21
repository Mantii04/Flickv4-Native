package com.google.firebase.crashlytics.internal.common;

import com.google.android.gms.tasks.Continuation;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.TaskCompletionSource;

/* loaded from: classes2.dex */
public final /* synthetic */ class e implements Continuation {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f13270b;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ TaskCompletionSource f13271e;

    public /* synthetic */ e(int i2, TaskCompletionSource taskCompletionSource) {
        this.f13270b = i2;
        this.f13271e = taskCompletionSource;
    }

    @Override // com.google.android.gms.tasks.Continuation
    public final Object then(Task task) {
        Void lambda$race$0;
        Object lambda$callTask$2;
        Void lambda$race$1;
        switch (this.f13270b) {
            case 0:
                lambda$race$0 = Utils.lambda$race$0(this.f13271e, task);
                return lambda$race$0;
            case 1:
                lambda$callTask$2 = Utils.lambda$callTask$2(this.f13271e, task);
                return lambda$callTask$2;
            default:
                lambda$race$1 = Utils.lambda$race$1(this.f13271e, task);
                return lambda$race$1;
        }
    }
}
