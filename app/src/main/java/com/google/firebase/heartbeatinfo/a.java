package com.google.firebase.heartbeatinfo;

import java.util.concurrent.Callable;

/* loaded from: classes2.dex */
public final /* synthetic */ class a implements Callable {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f13283b;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ DefaultHeartBeatController f13284e;

    public /* synthetic */ a(DefaultHeartBeatController defaultHeartBeatController, int i2) {
        this.f13283b = i2;
        this.f13284e = defaultHeartBeatController;
    }

    @Override // java.util.concurrent.Callable
    public final Object call() {
        String lambda$getHeartBeatsHeader$1;
        Void lambda$registerHeartBeat$0;
        switch (this.f13283b) {
            case 0:
                lambda$getHeartBeatsHeader$1 = this.f13284e.lambda$getHeartBeatsHeader$1();
                return lambda$getHeartBeatsHeader$1;
            default:
                lambda$registerHeartBeat$0 = this.f13284e.lambda$registerHeartBeat$0();
                return lambda$registerHeartBeat$0;
        }
    }
}
