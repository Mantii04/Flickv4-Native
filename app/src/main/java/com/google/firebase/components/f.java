package com.google.firebase.components;

import com.google.firebase.events.Event;
import com.google.firebase.inject.Provider;
import java.util.Map;

/* loaded from: classes2.dex */
public final /* synthetic */ class f implements Runnable {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f13230b;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Object f13231e;

    /* renamed from: f, reason: collision with root package name */
    public final /* synthetic */ Object f13232f;

    public /* synthetic */ f(int i2, Object obj, Object obj2) {
        this.f13230b = i2;
        this.f13232f = obj;
        this.f13231e = obj2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f13230b) {
            case 0:
                ((OptionalProvider) this.f13232f).set((Provider) this.f13231e);
                break;
            case 1:
                ((LazySet) this.f13232f).add((Provider) this.f13231e);
                break;
            default:
                EventBus.lambda$publish$0((Map.Entry) this.f13232f, (Event) this.f13231e);
                break;
        }
    }
}
