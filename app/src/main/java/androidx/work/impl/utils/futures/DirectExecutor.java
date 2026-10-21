package androidx.work.impl.utils.futures;

import java.util.concurrent.Executor;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* loaded from: classes.dex */
final class DirectExecutor implements Executor {

    /* renamed from: b, reason: collision with root package name */
    public static final DirectExecutor f8312b;

    /* renamed from: e, reason: collision with root package name */
    public static final /* synthetic */ DirectExecutor[] f8313e;

    static {
        DirectExecutor directExecutor = new DirectExecutor("INSTANCE", 0);
        f8312b = directExecutor;
        f8313e = new DirectExecutor[]{directExecutor};
    }

    public static DirectExecutor valueOf(String str) {
        return (DirectExecutor) Enum.valueOf(DirectExecutor.class, str);
    }

    public static DirectExecutor[] values() {
        return (DirectExecutor[]) f8313e.clone();
    }

    @Override // java.util.concurrent.Executor
    public void execute(Runnable runnable) {
        runnable.run();
    }

    @Override // java.lang.Enum
    public String toString() {
        return "DirectExecutor";
    }
}
