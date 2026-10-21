package com.google.firebase.installations;

import com.google.firebase.Firebase;
import com.google.firebase.FirebaseApp;
import kotlin.jvm.internal.j;

/* loaded from: classes2.dex */
public final class InstallationsKt {
    public static final FirebaseInstallations getInstallations(Firebase firebase) {
        j.checkNotNullParameter(firebase, "<this>");
        FirebaseInstallations firebaseInstallations = FirebaseInstallations.getInstance();
        j.checkNotNullExpressionValue(firebaseInstallations, "getInstance()");
        return firebaseInstallations;
    }

    public static final FirebaseInstallations installations(Firebase firebase, FirebaseApp app) {
        j.checkNotNullParameter(firebase, "<this>");
        j.checkNotNullParameter(app, "app");
        FirebaseInstallations firebaseInstallations = FirebaseInstallations.getInstance(app);
        j.checkNotNullExpressionValue(firebaseInstallations, "getInstance(app)");
        return firebaseInstallations;
    }
}
