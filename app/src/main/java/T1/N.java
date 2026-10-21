package T1;

import java.util.concurrent.Callable;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.FutureTask;

/* loaded from: classes.dex */
public final class N extends FutureTask {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ O f3586b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public N(O o6, Callable callable) {
        super(callable);
        this.f3586b = o6;
    }

    @Override // java.util.concurrent.FutureTask
    public void done() {
        O o6 = this.f3586b;
        if (isCancelled()) {
            return;
        }
        try {
            o6.b((L) get());
        } catch (InterruptedException | ExecutionException e3) {
            o6.b(new L(e3));
        }
    }
}
