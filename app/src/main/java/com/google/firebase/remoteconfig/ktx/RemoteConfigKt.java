package com.google.firebase.remoteconfig.ktx;

import H5.l;
import U5.b;
import U5.d;
import com.google.firebase.FirebaseApp;
import com.google.firebase.ktx.Firebase;
import com.google.firebase.remoteconfig.FirebaseRemoteConfig;
import com.google.firebase.remoteconfig.FirebaseRemoteConfigSettings;
import com.google.firebase.remoteconfig.FirebaseRemoteConfigValue;
import kotlin.jvm.internal.j;

/* loaded from: classes2.dex */
public final class RemoteConfigKt {
    public static final FirebaseRemoteConfigValue get(FirebaseRemoteConfig firebaseRemoteConfig, String key) {
        j.checkNotNullParameter(firebaseRemoteConfig, "<this>");
        j.checkNotNullParameter(key, "key");
        FirebaseRemoteConfigValue value = firebaseRemoteConfig.getValue(key);
        j.checkNotNullExpressionValue(value, "this.getValue(key)");
        return value;
    }

    public static final b getConfigUpdates(FirebaseRemoteConfig firebaseRemoteConfig) {
        j.checkNotNullParameter(firebaseRemoteConfig, "<this>");
        return d.callbackFlow(new RemoteConfigKt$configUpdates$1(firebaseRemoteConfig, null));
    }

    public static /* synthetic */ void getConfigUpdates$annotations(FirebaseRemoteConfig firebaseRemoteConfig) {
    }

    public static final FirebaseRemoteConfig getRemoteConfig(Firebase firebase) {
        j.checkNotNullParameter(firebase, "<this>");
        FirebaseRemoteConfig firebaseRemoteConfig = FirebaseRemoteConfig.getInstance();
        j.checkNotNullExpressionValue(firebaseRemoteConfig, "getInstance()");
        return firebaseRemoteConfig;
    }

    public static final FirebaseRemoteConfig remoteConfig(Firebase firebase, FirebaseApp app) {
        j.checkNotNullParameter(firebase, "<this>");
        j.checkNotNullParameter(app, "app");
        FirebaseRemoteConfig firebaseRemoteConfig = FirebaseRemoteConfig.getInstance(app);
        j.checkNotNullExpressionValue(firebaseRemoteConfig, "getInstance(app)");
        return firebaseRemoteConfig;
    }

    public static final FirebaseRemoteConfigSettings remoteConfigSettings(l init) {
        j.checkNotNullParameter(init, "init");
        FirebaseRemoteConfigSettings.Builder builder = new FirebaseRemoteConfigSettings.Builder();
        init.invoke(builder);
        FirebaseRemoteConfigSettings build = builder.build();
        j.checkNotNullExpressionValue(build, "builder.build()");
        return build;
    }
}
