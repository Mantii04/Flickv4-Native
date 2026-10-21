package androidx.core.os;

import android.os.OutcomeReceiver;
import java.lang.Throwable;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.Result;
import kotlin.b;
import y5.InterfaceC1944c;

/* loaded from: classes.dex */
final class ContinuationOutcomeReceiver<R, E extends Throwable> extends AtomicBoolean implements OutcomeReceiver {

    /* renamed from: b, reason: collision with root package name */
    public final InterfaceC1944c f5560b;

    public ContinuationOutcomeReceiver(InterfaceC1944c interfaceC1944c) {
        super(false);
        this.f5560b = interfaceC1944c;
    }

    public void onError(E e3) {
        if (compareAndSet(false, true)) {
            InterfaceC1944c interfaceC1944c = this.f5560b;
            int i2 = Result.f17390b;
            interfaceC1944c.resumeWith(Result.m103constructorimpl(b.createFailure(e3)));
        }
    }

    public void onResult(R r6) {
        if (compareAndSet(false, true)) {
            this.f5560b.resumeWith(Result.m103constructorimpl(r6));
        }
    }

    @Override // java.util.concurrent.atomic.AtomicBoolean
    public String toString() {
        return "ContinuationOutcomeReceiver(outcomeReceived = " + get() + ')';
    }
}
