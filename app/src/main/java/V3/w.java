package V3;

import java.util.concurrent.Executor;

/* loaded from: classes2.dex */
public abstract class w extends u implements F {
    @Override // V3.F
    public void addListener(Runnable runnable, Executor executor) {
        delegate().addListener(runnable, executor);
    }

    @Override // V3.u, Q3.AbstractC0246p
    public abstract F delegate();
}
