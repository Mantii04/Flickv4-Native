package com.google.common.util.concurrent;

import A4.n;
import P3.v;
import Q3.x0;
import V3.F;
import V3.z;
import com.google.common.collect.ImmutableCollection;
import com.google.common.collect.ImmutableList;
import java.util.Objects;
import java.util.concurrent.Callable;
import java.util.concurrent.Executor;
import java.util.concurrent.RejectedExecutionException;

/* loaded from: classes2.dex */
public final class f {

    /* renamed from: a, reason: collision with root package name */
    public final ImmutableList f13216a;

    public f(ImmutableList immutableList) {
        this.f13216a = immutableList;
    }

    public <C> F call(Callable<C> callable, Executor executor) {
        ImmutableList immutableList = this.f13216a;
        int size = immutableList.size();
        e eVar = new e();
        Object obj = null;
        eVar.f13213q = null;
        eVar.f13214r = size;
        eVar.f13210u = (ImmutableCollection) v.checkNotNull(immutableList);
        eVar.f13215w = new CombinedFuture$CallableInterruptibleTask(eVar, callable, executor);
        Objects.requireNonNull(eVar.f13210u);
        if (eVar.f13210u.isEmpty()) {
            CombinedFuture$CallableInterruptibleTask combinedFuture$CallableInterruptibleTask = eVar.f13215w;
            if (combinedFuture$CallableInterruptibleTask != null) {
                try {
                    combinedFuture$CallableInterruptibleTask.f13191f.execute(combinedFuture$CallableInterruptibleTask);
                    return eVar;
                } catch (RejectedExecutionException e3) {
                    combinedFuture$CallableInterruptibleTask.f13192j.setException(e3);
                }
            }
        } else {
            n nVar = new n(13, eVar, obj);
            x0 it = eVar.f13210u.iterator();
            while (it.hasNext()) {
                F f3 = (F) it.next();
                if (f3.isDone()) {
                    eVar.i(null);
                } else {
                    f3.addListener(nVar, g.directExecutor());
                }
            }
        }
        return eVar;
    }

    public F run(Runnable runnable, Executor executor) {
        return call(new z(runnable), executor);
    }
}
