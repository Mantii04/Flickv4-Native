package androidx.media3.exoplayer;

import androidx.media3.common.util.BackgroundThreadStateHandler;
import androidx.media3.common.util.HandlerWrapper;
import java.util.concurrent.Executor;

/* renamed from: androidx.media3.exoplayer.g, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final /* synthetic */ class ExecutorC0577g implements Executor {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f7384b;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Object f7385e;

    public /* synthetic */ ExecutorC0577g(Object obj, int i2) {
        this.f7384b = i2;
        this.f7385e = obj;
    }

    @Override // java.util.concurrent.Executor
    public final void execute(Runnable runnable) {
        switch (this.f7384b) {
            case 0:
                ((BackgroundThreadStateHandler) this.f7385e).runInBackground(runnable);
                break;
            default:
                ((HandlerWrapper) this.f7385e).post(runnable);
                break;
        }
    }
}
