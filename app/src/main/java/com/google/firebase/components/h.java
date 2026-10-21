package com.google.firebase.components;

import com.google.firebase.inject.Provider;
import java.util.Collections;

/* loaded from: classes2.dex */
public final /* synthetic */ class h implements Provider {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f13233a;

    public /* synthetic */ h(int i2) {
        this.f13233a = i2;
    }

    @Override // com.google.firebase.inject.Provider
    public final Object get() {
        Object lambda$static$1;
        switch (this.f13233a) {
            case 0:
                lambda$static$1 = OptionalProvider.lambda$static$1();
                return lambda$static$1;
            default:
                return Collections.EMPTY_SET;
        }
    }
}
