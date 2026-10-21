package Y;

/* loaded from: classes.dex */
public final class h extends p {

    /* renamed from: a, reason: collision with root package name */
    public final Throwable f4256a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public h(Throwable readException) {
        super(null);
        kotlin.jvm.internal.j.checkNotNullParameter(readException, "readException");
        this.f4256a = readException;
    }

    public final Throwable getReadException() {
        return this.f4256a;
    }
}
