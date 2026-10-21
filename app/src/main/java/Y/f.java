package Y;

/* loaded from: classes.dex */
public final class f extends p {

    /* renamed from: a, reason: collision with root package name */
    public final Throwable f4255a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public f(Throwable finalException) {
        super(null);
        kotlin.jvm.internal.j.checkNotNullParameter(finalException, "finalException");
        this.f4255a = finalException;
    }

    public final Throwable getFinalException() {
        return this.f4255a;
    }
}
