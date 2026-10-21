package e;

import java.util.concurrent.Executor;

/* loaded from: classes.dex */
public final class i0 implements Executor {
    @Override // java.util.concurrent.Executor
    public void execute(Runnable runnable) {
        new Thread(runnable).start();
    }
}
