package androidx.activity;

import android.window.OnBackInvokedCallback;

/* loaded from: classes.dex */
public final class w {

    /* renamed from: a, reason: collision with root package name */
    public static final w f4931a = new w();

    public final OnBackInvokedCallback createOnBackAnimationCallback(H5.l onBackStarted, H5.l onBackProgressed, H5.a onBackInvoked, H5.a onBackCancelled) {
        kotlin.jvm.internal.j.checkNotNullParameter(onBackStarted, "onBackStarted");
        kotlin.jvm.internal.j.checkNotNullParameter(onBackProgressed, "onBackProgressed");
        kotlin.jvm.internal.j.checkNotNullParameter(onBackInvoked, "onBackInvoked");
        kotlin.jvm.internal.j.checkNotNullParameter(onBackCancelled, "onBackCancelled");
        return new v(onBackStarted, onBackProgressed, onBackInvoked, onBackCancelled);
    }
}
