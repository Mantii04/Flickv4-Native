package androidx.media3.common.util;

import java.util.concurrent.ThreadFactory;

/* loaded from: classes.dex */
public final /* synthetic */ class i implements ThreadFactory {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f7134b;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ String f7135e;

    public /* synthetic */ i(String str, int i2) {
        this.f7134b = i2;
        this.f7135e = str;
    }

    @Override // java.util.concurrent.ThreadFactory
    public final Thread newThread(Runnable runnable) {
        Thread lambda$newSingleThreadScheduledExecutor$4;
        Thread lambda$newSingleThreadExecutor$3;
        switch (this.f7134b) {
            case 0:
                lambda$newSingleThreadScheduledExecutor$4 = Util.lambda$newSingleThreadScheduledExecutor$4(this.f7135e, runnable);
                return lambda$newSingleThreadScheduledExecutor$4;
            default:
                lambda$newSingleThreadExecutor$3 = Util.lambda$newSingleThreadExecutor$3(this.f7135e, runnable);
                return lambda$newSingleThreadExecutor$3;
        }
    }
}
