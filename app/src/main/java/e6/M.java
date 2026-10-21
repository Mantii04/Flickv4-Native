package e6;

import java.util.concurrent.TimeUnit;

/* loaded from: classes2.dex */
public final class M extends O {
    @Override // e6.O
    public O timeout(long j7, TimeUnit unit) {
        kotlin.jvm.internal.j.checkNotNullParameter(unit, "unit");
        return this;
    }

    @Override // e6.O
    public void throwIfReached() {
    }

    @Override // e6.O
    public O deadlineNanoTime(long j7) {
        return this;
    }
}
