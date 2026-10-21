package n1;

/* renamed from: n1.b, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C1363b {

    /* renamed from: a, reason: collision with root package name */
    public Runnable f18814a;

    /* renamed from: b, reason: collision with root package name */
    public int f18815b;

    /* renamed from: c, reason: collision with root package name */
    public r1.f f18816c;

    static {
        new C1362a(null);
    }

    public final void decrementCountAndScheduleClose() {
        throw null;
    }

    public final <V> V executeRefCountingFunction(H5.l block) {
        kotlin.jvm.internal.j.checkNotNullParameter(block, "block");
        try {
            return (V) block.invoke(incrementCountAndEnsureDbIsOpen());
        } finally {
            decrementCountAndScheduleClose();
        }
    }

    public final r1.m getDelegateOpenHelper() {
        kotlin.jvm.internal.j.throwUninitializedPropertyAccessException("delegateOpenHelper");
        return null;
    }

    public final r1.f incrementCountAndEnsureDbIsOpen() {
        throw null;
    }

    public final boolean isActive() {
        return !false;
    }

    public final void setAutoCloseCallback(Runnable onAutoClose) {
        kotlin.jvm.internal.j.checkNotNullParameter(onAutoClose, "onAutoClose");
        this.f18814a = onAutoClose;
    }
}
