package com.google.android.gms.tasks;

import java.util.ArrayList;
import java.util.Collection;

/* loaded from: classes2.dex */
final class zzab implements Continuation {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Collection f12299b;

    public zzab(Collection collection) {
        this.f12299b = collection;
    }

    @Override // com.google.android.gms.tasks.Continuation
    public final /* bridge */ /* synthetic */ Object then(Task task) throws Exception {
        ArrayList arrayList = new ArrayList();
        arrayList.addAll(this.f12299b);
        return Tasks.forResult(arrayList);
    }
}
