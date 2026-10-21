package com.google.firebase.remoteconfig;

import java.util.concurrent.Callable;

/* loaded from: classes2.dex */
public final /* synthetic */ class b implements Callable {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f13291b;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ FirebaseRemoteConfig f13292e;

    public /* synthetic */ b(FirebaseRemoteConfig firebaseRemoteConfig, int i2) {
        this.f13291b = i2;
        this.f13292e = firebaseRemoteConfig;
    }

    @Override // java.util.concurrent.Callable
    public final Object call() {
        Void lambda$reset$6;
        switch (this.f13291b) {
            case 0:
                lambda$reset$6 = this.f13292e.lambda$reset$6();
                return lambda$reset$6;
            default:
                return this.f13292e.getInfo();
        }
    }
}
