package androidx.concurrent.futures;

import java.util.concurrent.Executor;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* loaded from: classes.dex */
public final class DirectExecutor implements Executor {

    /* renamed from: b, reason: collision with root package name */
    public static final DirectExecutor f5196b;

    /* renamed from: e, reason: collision with root package name */
    public static final /* synthetic */ DirectExecutor[] f5197e;

    static {
        DirectExecutor directExecutor = new DirectExecutor("INSTANCE", 0);
        f5196b = directExecutor;
        f5197e = new DirectExecutor[]{directExecutor};
    }

    public static DirectExecutor valueOf(String str) {
        return (DirectExecutor) Enum.valueOf(DirectExecutor.class, str);
    }

    public static DirectExecutor[] values() {
        return (DirectExecutor[]) f5197e.clone();
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
