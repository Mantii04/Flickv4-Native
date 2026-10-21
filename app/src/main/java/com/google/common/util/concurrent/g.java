package com.google.common.util.concurrent;

import V3.H;
import V3.I;
import V3.L;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.ScheduledExecutorService;

/* loaded from: classes2.dex */
public abstract class g {
    public static Executor directExecutor() {
        return DirectExecutor.f13193b;
    }

    public static H listeningDecorator(ExecutorService executorService) {
        return executorService instanceof H ? (H) executorService : executorService instanceof ScheduledExecutorService ? new L((ScheduledExecutorService) executorService) : new I(executorService);
    }
}
