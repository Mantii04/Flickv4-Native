package androidx.fragment.app.strictmode;

import androidx.fragment.app.C;
import kotlin.jvm.internal.j;

/* loaded from: classes.dex */
public abstract class Violation extends RuntimeException {

    /* renamed from: b, reason: collision with root package name */
    public final C f6316b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public Violation(C fragment, String str) {
        super(str);
        j.checkNotNullParameter(fragment, "fragment");
        this.f6316b = fragment;
    }

    public final C getFragment() {
        return this.f6316b;
    }
}
