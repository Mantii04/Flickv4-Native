package z;

import android.content.res.Configuration;

/* renamed from: z.u, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C1974u {

    /* renamed from: a, reason: collision with root package name */
    public final boolean f21376a;

    public C1974u(boolean z6) {
        this.f21376a = z6;
    }

    public final boolean isInMultiWindowMode() {
        return this.f21376a;
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public C1974u(boolean z6, Configuration newConfig) {
        this(z6);
        kotlin.jvm.internal.j.checkNotNullParameter(newConfig, "newConfig");
    }
}
