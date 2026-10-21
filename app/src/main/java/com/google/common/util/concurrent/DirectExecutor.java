package com.google.common.util.concurrent;

import java.util.concurrent.Executor;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* loaded from: classes2.dex */
final class DirectExecutor implements Executor {

    /* renamed from: b, reason: collision with root package name */
    public static final DirectExecutor f13193b;

    /* renamed from: e, reason: collision with root package name */
    public static final /* synthetic */ DirectExecutor[] f13194e;

    static {
        DirectExecutor directExecutor = new DirectExecutor("INSTANCE", 0);
        f13193b = directExecutor;
        f13194e = new DirectExecutor[]{directExecutor};
    }

    public static DirectExecutor valueOf(String str) {
        return (DirectExecutor) Enum.valueOf(DirectExecutor.class, str);
    }

    public static DirectExecutor[] values() {
        return (DirectExecutor[]) f13194e.clone();
    }

    @Override // java.util.concurrent.Executor
    public void execute(Runnable runnable) {
        runnable.run();
    }

    @Override // java.lang.Enum
    public String toString() {
        return "MoreExecutors.directExecutor()";
    }
}
