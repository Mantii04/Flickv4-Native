package androidx.concurrent.futures;

/* loaded from: classes.dex */
public final class c {

    /* renamed from: b, reason: collision with root package name */
    public static final c f5202b = new c(new AbstractResolvableFuture$Failure$1("Failure occurred while trying to finish a future."));

    /* renamed from: a, reason: collision with root package name */
    public final Throwable f5203a;

    public c(Throwable th) {
        this.f5203a = (Throwable) i.checkNotNull(th);
    }
}
