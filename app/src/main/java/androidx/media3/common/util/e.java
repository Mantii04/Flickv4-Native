package androidx.media3.common.util;

import android.os.Handler;
import java.util.concurrent.Executor;

/* loaded from: classes.dex */
public final /* synthetic */ class e implements Executor {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Handler f7129b;

    @Override // java.util.concurrent.Executor
    public final void execute(Runnable runnable) {
        this.f7129b.post(runnable);
    }
}
