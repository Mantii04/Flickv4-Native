package com.google.firebase.crashlytics;

import H5.l;
import com.google.firebase.Firebase;
import kotlin.jvm.internal.j;

/* loaded from: classes2.dex */
public final class FirebaseCrashlyticsKt {
    public static final FirebaseCrashlytics getCrashlytics(Firebase firebase) {
        j.checkNotNullParameter(firebase, "<this>");
        FirebaseCrashlytics firebaseCrashlytics = FirebaseCrashlytics.getInstance();
        j.checkNotNullExpressionValue(firebaseCrashlytics, "getInstance()");
        return firebaseCrashlytics;
    }

    public static final void setCustomKeys(FirebaseCrashlytics firebaseCrashlytics, l init) {
        j.checkNotNullParameter(firebaseCrashlytics, "<this>");
        j.checkNotNullParameter(init, "init");
        init.invoke(new KeyValueBuilder(firebaseCrashlytics));
    }
}
