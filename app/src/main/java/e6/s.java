package e6;

import java.io.IOException;
import java.util.concurrent.TimeUnit;

/* loaded from: classes2.dex */
public final class s extends O {

    /* renamed from: a, reason: collision with root package name */
    public O f14024a;

    public s(O delegate) {
        kotlin.jvm.internal.j.checkNotNullParameter(delegate, "delegate");
        this.f14024a = delegate;
    }

    @Override // e6.O
    public O clearDeadline() {
        return this.f14024a.clearDeadline();
    }

    @Override // e6.O
    public O clearTimeout() {
        return this.f14024a.clearTimeout();
    }

    @Override // e6.O
    public long deadlineNanoTime() {
        return this.f14024a.deadlineNanoTime();
    }

    public final O delegate() {
        return this.f14024a;
    }

    @Override // e6.O
    public boolean hasDeadline() {
        return this.f14024a.hasDeadline();
    }

    public final s setDelegate(O delegate) {
        kotlin.jvm.internal.j.checkNotNullParameter(delegate, "delegate");
        this.f14024a = delegate;
        return this;
    }

    @Override // e6.O
    public void throwIfReached() throws IOException {
        this.f14024a.throwIfReached();
    }

    @Override // e6.O
    public O timeout(long j7, TimeUnit unit) {
        kotlin.jvm.internal.j.checkNotNullParameter(unit, "unit");
        return this.f14024a.timeout(j7, unit);
    }

    @Override // e6.O
    public long timeoutNanos() {
        return this.f14024a.timeoutNanos();
    }

    @Override // e6.O
    public O deadlineNanoTime(long j7) {
        return this.f14024a.deadlineNanoTime(j7);
    }
}
