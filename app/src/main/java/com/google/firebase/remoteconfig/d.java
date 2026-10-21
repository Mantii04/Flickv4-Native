package com.google.firebase.remoteconfig;

import T5.p;

/* loaded from: classes2.dex */
public final /* synthetic */ class d implements Runnable {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f13294b;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ p f13295e;

    /* renamed from: f, reason: collision with root package name */
    public final /* synthetic */ ConfigUpdate f13296f;

    public /* synthetic */ d(p pVar, ConfigUpdate configUpdate, int i2) {
        this.f13294b = i2;
        this.f13295e = pVar;
        this.f13296f = configUpdate;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f13294b) {
            case 0:
                RemoteConfigKt$configUpdates$1$registration$1.onUpdate$lambda$0(this.f13295e, this.f13296f);
                break;
            default:
                com.google.firebase.remoteconfig.ktx.RemoteConfigKt$configUpdates$1$registration$1.onUpdate$lambda$0(this.f13295e, this.f13296f);
                break;
        }
    }
}
