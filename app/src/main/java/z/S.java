package z;

import android.content.res.Configuration;

/* loaded from: classes.dex */
public final class S {

    /* renamed from: a, reason: collision with root package name */
    public final boolean f21353a;

    public S(boolean z6) {
        this.f21353a = z6;
    }

    public final boolean isInPictureInPictureMode() {
        return this.f21353a;
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public S(boolean z6, Configuration newConfig) {
        this(z6);
        kotlin.jvm.internal.j.checkNotNullParameter(newConfig, "newConfig");
    }
}
