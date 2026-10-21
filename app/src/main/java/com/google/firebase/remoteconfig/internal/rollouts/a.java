package com.google.firebase.remoteconfig.internal.rollouts;

import com.google.firebase.remoteconfig.interop.rollouts.RolloutsState;
import com.google.firebase.remoteconfig.interop.rollouts.RolloutsStateSubscriber;

/* loaded from: classes2.dex */
public final /* synthetic */ class a implements Runnable {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f13310b;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ RolloutsStateSubscriber f13311e;

    /* renamed from: f, reason: collision with root package name */
    public final /* synthetic */ RolloutsState f13312f;

    public /* synthetic */ a(RolloutsStateSubscriber rolloutsStateSubscriber, RolloutsState rolloutsState, int i2) {
        this.f13310b = i2;
        this.f13311e = rolloutsStateSubscriber;
        this.f13312f = rolloutsState;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f13310b) {
            case 0:
                this.f13311e.onRolloutsStateChanged(this.f13312f);
                break;
            default:
                this.f13311e.onRolloutsStateChanged(this.f13312f);
                break;
        }
    }
}
