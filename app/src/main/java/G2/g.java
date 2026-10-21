package G2;

import java.util.concurrent.Executor;

/* loaded from: classes.dex */
public final class g implements Executor {
    @Override // java.util.concurrent.Executor
    public void execute(Runnable runnable) {
        t.postOnUiThread(runnable);
    }
}
