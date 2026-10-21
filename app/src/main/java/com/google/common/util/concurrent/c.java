package com.google.common.util.concurrent;

import P3.v;
import Q3.x0;
import V3.E;
import V3.N;
import com.google.common.collect.ImmutableCollection;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Future;
import java.util.concurrent.RejectedExecutionException;
import java.util.logging.Level;

/* loaded from: classes2.dex */
public abstract class c extends d {

    /* renamed from: v, reason: collision with root package name */
    public static final E f13209v = new E(c.class);

    /* renamed from: u, reason: collision with root package name */
    public ImmutableCollection f13210u;

    @Override // com.google.common.util.concurrent.b
    public final void afterDone() {
        super.afterDone();
        ImmutableCollection immutableCollection = this.f13210u;
        e eVar = (e) this;
        v.checkNotNull(AggregateFuture$ReleaseResourcesReason.f13186b);
        eVar.f13210u = null;
        eVar.f13215w = null;
        if (isCancelled() && (immutableCollection != null)) {
            boolean wasInterrupted = wasInterrupted();
            x0 it = immutableCollection.iterator();
            while (it.hasNext()) {
                ((Future) it.next()).cancel(wasInterrupted);
            }
        }
    }

    public final void i(ImmutableCollection immutableCollection) {
        int c7 = d.f13211s.c(this);
        v.checkState(c7 >= 0, "Less than 0 remaining futures");
        if (c7 == 0) {
            if (immutableCollection != null) {
                x0 it = immutableCollection.iterator();
                while (it.hasNext()) {
                    Future future = (Future) it.next();
                    if (!future.isCancelled()) {
                        try {
                            N.getUninterruptibly(future);
                        } catch (ExecutionException e3) {
                            j(e3.getCause());
                        } catch (Throwable th) {
                            j(th);
                        }
                    }
                }
            }
            this.f13213q = null;
            e eVar = (e) this;
            CombinedFuture$CallableInterruptibleTask combinedFuture$CallableInterruptibleTask = eVar.f13215w;
            if (combinedFuture$CallableInterruptibleTask != null) {
                try {
                    combinedFuture$CallableInterruptibleTask.f13191f.execute(combinedFuture$CallableInterruptibleTask);
                } catch (RejectedExecutionException e7) {
                    combinedFuture$CallableInterruptibleTask.f13192j.setException(e7);
                }
            }
            v.checkNotNull(AggregateFuture$ReleaseResourcesReason.f13187e);
            eVar.f13210u = null;
        }
    }

    public final void j(Throwable th) {
        v.checkNotNull(th);
        if (th instanceof Error) {
            f13209v.a().log(Level.SEVERE, th instanceof Error ? "Input Future failed with Error" : "Got more than one input Future failure. Logging failures after the first", th);
        }
    }

    @Override // com.google.common.util.concurrent.b
    public final String pendingToString() {
        ImmutableCollection immutableCollection = this.f13210u;
        if (immutableCollection == null) {
            return super.pendingToString();
        }
        return "futures=" + immutableCollection;
    }
}
