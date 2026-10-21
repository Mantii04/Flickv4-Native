package com.google.android.gms.common.api.internal;

import com.google.android.gms.tasks.OnCompleteListener;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.TaskCompletionSource;

/* loaded from: classes.dex */
final class zaac implements OnCompleteListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ TaskCompletionSource f10677a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ zaad f10678b;

    public zaac(zaad zaadVar, TaskCompletionSource taskCompletionSource) {
        this.f10678b = zaadVar;
        this.f10677a = taskCompletionSource;
    }

    @Override // com.google.android.gms.tasks.OnCompleteListener
    public final void onComplete(Task task) {
        this.f10678b.f10680b.remove(this.f10677a);
    }
}
