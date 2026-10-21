package com.google.firebase;

import android.content.Context;
import com.google.firebase.heartbeatinfo.DefaultHeartBeatController;
import com.google.firebase.heartbeatinfo.HeartBeatInfoStorage;
import com.google.firebase.inject.Provider;
import com.google.firebase.internal.DataCollectionConfigStorage;

/* loaded from: classes2.dex */
public final /* synthetic */ class a implements Provider {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f13218a = 1;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Context f13219b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f13220c;

    public /* synthetic */ a(Context context, String str) {
        this.f13219b = context;
        this.f13220c = str;
    }

    @Override // com.google.firebase.inject.Provider
    public final Object get() {
        DataCollectionConfigStorage lambda$new$0;
        HeartBeatInfoStorage lambda$new$2;
        switch (this.f13218a) {
            case 0:
                lambda$new$0 = ((FirebaseApp) this.f13220c).lambda$new$0(this.f13219b);
                return lambda$new$0;
            default:
                lambda$new$2 = DefaultHeartBeatController.lambda$new$2(this.f13219b, (String) this.f13220c);
                return lambda$new$2;
        }
    }

    public /* synthetic */ a(FirebaseApp firebaseApp, Context context) {
        this.f13220c = firebaseApp;
        this.f13219b = context;
    }
}
