package androidx.media3.common;

import f1.HandlerC0889d;
import java.util.concurrent.Executor;

/* loaded from: classes.dex */
public final /* synthetic */ class p implements Executor {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f7100b;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Object f7101e;

    public /* synthetic */ p(Object obj, int i2) {
        this.f7100b = i2;
        this.f7101e = obj;
    }

    @Override // java.util.concurrent.Executor
    public final void execute(Runnable runnable) {
        switch (this.f7100b) {
            case 0:
                ((SimpleBasePlayer) this.f7101e).postOrRunOnApplicationHandler(runnable);
                break;
            default:
                ((HandlerC0889d) this.f7101e).post(runnable);
                break;
        }
    }
}
