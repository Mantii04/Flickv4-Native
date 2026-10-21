package G2;

import java.util.concurrent.Executor;

/* loaded from: classes.dex */
public final class h implements Executor {
    @Override // java.util.concurrent.Executor
    public void execute(Runnable runnable) {
        runnable.run();
    }
}
