package com.google.firebase.crashlytics.internal.metadata;

import com.google.firebase.crashlytics.internal.metadata.UserMetadata;
import java.util.concurrent.Callable;

/* loaded from: classes2.dex */
public final /* synthetic */ class a implements Callable {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f13272b;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Object f13273e;

    public /* synthetic */ a(Object obj, int i2) {
        this.f13272b = i2;
        this.f13273e = obj;
    }

    @Override // java.util.concurrent.Callable
    public final Object call() {
        Void lambda$scheduleSerializationTaskIfNeeded$0;
        Object lambda$setUserId$0;
        switch (this.f13272b) {
            case 0:
                lambda$scheduleSerializationTaskIfNeeded$0 = ((UserMetadata.SerializeableKeysMap) this.f13273e).lambda$scheduleSerializationTaskIfNeeded$0();
                return lambda$scheduleSerializationTaskIfNeeded$0;
            default:
                lambda$setUserId$0 = ((UserMetadata) this.f13273e).lambda$setUserId$0();
                return lambda$setUserId$0;
        }
    }
}
