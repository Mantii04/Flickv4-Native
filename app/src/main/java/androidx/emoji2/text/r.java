package androidx.emoji2.text;

import java.util.concurrent.ThreadPoolExecutor;

/* loaded from: classes.dex */
public final class r extends o {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ o f6009a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ ThreadPoolExecutor f6010b;

    public r(o oVar, ThreadPoolExecutor threadPoolExecutor) {
        this.f6009a = oVar;
        this.f6010b = threadPoolExecutor;
    }

    @Override // androidx.emoji2.text.o
    public void onFailed(Throwable th) {
        ThreadPoolExecutor threadPoolExecutor = this.f6010b;
        try {
            this.f6009a.onFailed(th);
        } finally {
            threadPoolExecutor.shutdown();
        }
    }

    @Override // androidx.emoji2.text.o
    public void onLoaded(C c7) {
        ThreadPoolExecutor threadPoolExecutor = this.f6010b;
        try {
            this.f6009a.onLoaded(c7);
        } finally {
            threadPoolExecutor.shutdown();
        }
    }
}
