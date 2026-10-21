package com.google.common.util.concurrent;

import A.i;
import P3.v;
import V3.C0340a;
import V3.C0341b;
import V3.C0342c;
import V3.C0344e;
import V3.C0351l;
import V3.C0352m;
import V3.E;
import V3.F;
import V3.InterfaceC0345f;
import V3.RunnableC0343d;
import androidx.media3.exoplayer.upstream.CmcdData;
import java.util.Locale;
import java.util.Objects;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import java.util.concurrent.locks.LockSupport;
import java.util.logging.Level;
import java.util.logging.Logger;
import org.apache.commons.lang3.StringUtils;

/* loaded from: classes2.dex */
public abstract class b extends W3.a implements F {

    /* renamed from: j, reason: collision with root package name */
    public static final boolean f13202j;

    /* renamed from: m, reason: collision with root package name */
    public static final E f13203m;

    /* renamed from: n, reason: collision with root package name */
    public static final com.bumptech.glide.f f13204n;

    /* renamed from: p, reason: collision with root package name */
    public static final Object f13205p;

    /* renamed from: b, reason: collision with root package name */
    public volatile Object f13206b;

    /* renamed from: e, reason: collision with root package name */
    public volatile C0341b f13207e;

    /* renamed from: f, reason: collision with root package name */
    public volatile C0352m f13208f;

    static {
        boolean z6;
        Throwable th;
        com.bumptech.glide.f c0344e;
        try {
            z6 = Boolean.parseBoolean(System.getProperty("guava.concurrent.generate_cancellation_cause", "false"));
        } catch (SecurityException unused) {
            z6 = false;
        }
        f13202j = z6;
        f13203m = new E(b.class);
        Throwable th2 = null;
        try {
            c0344e = new C0351l();
            th = null;
        } catch (Error | Exception e3) {
            th = e3;
            try {
                c0344e = new C0342c(AtomicReferenceFieldUpdater.newUpdater(C0352m.class, Thread.class, CmcdData.OBJECT_TYPE_AUDIO_ONLY), AtomicReferenceFieldUpdater.newUpdater(C0352m.class, C0352m.class, "b"), AtomicReferenceFieldUpdater.newUpdater(b.class, C0352m.class, "f"), AtomicReferenceFieldUpdater.newUpdater(b.class, C0341b.class, "e"), AtomicReferenceFieldUpdater.newUpdater(b.class, Object.class, "b"));
            } catch (Error | Exception e7) {
                th2 = e7;
                c0344e = new C0344e();
            }
        }
        f13204n = c0344e;
        if (th2 != null) {
            E e8 = f13203m;
            Logger a7 = e8.a();
            Level level = Level.SEVERE;
            a7.log(level, "UnsafeAtomicHelper is broken!", th);
            e8.a().log(level, "SafeAtomicHelper is broken!", th2);
        }
        f13205p = new Object();
    }

    public static void c(b bVar, boolean z6) {
        C0341b c0341b = null;
        while (true) {
            bVar.getClass();
            for (C0352m e3 = f13204n.e(bVar); e3 != null; e3 = e3.f4009b) {
                Thread thread = e3.f4008a;
                if (thread != null) {
                    e3.f4008a = null;
                    LockSupport.unpark(thread);
                }
            }
            if (z6) {
                bVar.interruptTask();
                z6 = false;
            }
            bVar.afterDone();
            C0341b c0341b2 = c0341b;
            C0341b d7 = f13204n.d(bVar);
            C0341b c0341b3 = c0341b2;
            while (d7 != null) {
                C0341b c0341b4 = d7.f3993c;
                d7.f3993c = c0341b3;
                c0341b3 = d7;
                d7 = c0341b4;
            }
            while (c0341b3 != null) {
                c0341b = c0341b3.f3993c;
                Runnable runnable = c0341b3.f3991a;
                Objects.requireNonNull(runnable);
                if (runnable instanceof RunnableC0343d) {
                    RunnableC0343d runnableC0343d = (RunnableC0343d) runnable;
                    bVar = runnableC0343d.f3999b;
                    if (bVar.f13206b == runnableC0343d) {
                        if (f13204n.b(bVar, runnableC0343d, f(runnableC0343d.f4000e))) {
                            break;
                        }
                    } else {
                        continue;
                    }
                } else {
                    Executor executor = c0341b3.f3992b;
                    Objects.requireNonNull(executor);
                    d(runnable, executor);
                }
                c0341b3 = c0341b;
            }
            return;
        }
    }

    public static void d(Runnable runnable, Executor executor) {
        try {
            executor.execute(runnable);
        } catch (Exception e3) {
            f13203m.a().log(Level.SEVERE, "RuntimeException while executing runnable " + runnable + " with executor " + executor, (Throwable) e3);
        }
    }

    public static Object e(Object obj) {
        if (obj instanceof C0340a) {
            RuntimeException runtimeException = ((C0340a) obj).f3989b;
            CancellationException cancellationException = new CancellationException("Task was cancelled.");
            cancellationException.initCause(runtimeException);
            throw cancellationException;
        }
        if (obj instanceof a) {
            throw new ExecutionException(((a) obj).f13201a);
        }
        if (obj == f13205p) {
            return null;
        }
        return obj;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static Object f(F f3) {
        Throwable tryInternalFastPathGetFailure;
        if (f3 instanceof InterfaceC0345f) {
            Object obj = ((b) f3).f13206b;
            if (obj instanceof C0340a) {
                C0340a c0340a = (C0340a) obj;
                if (c0340a.f3988a) {
                    obj = c0340a.f3989b != null ? new C0340a(false, c0340a.f3989b) : C0340a.f3987d;
                }
            }
            Objects.requireNonNull(obj);
            return obj;
        }
        if ((f3 instanceof W3.a) && (tryInternalFastPathGetFailure = W3.b.tryInternalFastPathGetFailure((W3.a) f3)) != null) {
            return new a(tryInternalFastPathGetFailure);
        }
        boolean isCancelled = f3.isCancelled();
        if ((!f13202j) && isCancelled) {
            C0340a c0340a2 = C0340a.f3987d;
            Objects.requireNonNull(c0340a2);
            return c0340a2;
        }
        try {
            try {
                try {
                    Object g7 = g(f3);
                    if (!isCancelled) {
                        return g7 == null ? f13205p : g7;
                    }
                    return new C0340a(false, new IllegalArgumentException("get() did not throw CancellationException, despite reporting isCancelled() == true: " + f3));
                } catch (Error | Exception e3) {
                    e = e3;
                    return new a(e);
                }
            } catch (Error e7) {
                e = e7;
                return new a(e);
            }
        } catch (CancellationException e8) {
            if (isCancelled) {
                return new C0340a(false, e8);
            }
            return new a(new IllegalArgumentException("get() threw CancellationException, despite reporting isCancelled() == false: " + f3, e8));
        } catch (ExecutionException e9) {
            if (!isCancelled) {
                return new a(e9.getCause());
            }
            return new C0340a(false, new IllegalArgumentException("get() did not throw CancellationException, despite reporting isCancelled() == true: " + f3, e9));
        }
    }

    public static Object g(F f3) {
        Object obj;
        boolean z6 = false;
        while (true) {
            try {
                obj = f3.get();
                break;
            } catch (InterruptedException unused) {
                z6 = true;
            } catch (Throwable th) {
                if (z6) {
                    Thread.currentThread().interrupt();
                }
                throw th;
            }
        }
        if (z6) {
            Thread.currentThread().interrupt();
        }
        return obj;
    }

    public final void a(StringBuilder sb) {
        try {
            Object g7 = g(this);
            sb.append("SUCCESS, result=[");
            b(sb, g7);
            sb.append("]");
        } catch (CancellationException unused) {
            sb.append("CANCELLED");
        } catch (ExecutionException e3) {
            sb.append("FAILURE, cause=[");
            sb.append(e3.getCause());
            sb.append("]");
        } catch (Exception e7) {
            sb.append("UNKNOWN, cause=[");
            sb.append(e7.getClass());
            sb.append(" thrown from get()]");
        }
    }

    public void addListener(Runnable runnable, Executor executor) {
        C0341b c0341b;
        C0341b c0341b2;
        v.checkNotNull(runnable, "Runnable was null.");
        v.checkNotNull(executor, "Executor was null.");
        if (!isDone() && (c0341b = this.f13207e) != (c0341b2 = C0341b.f3990d)) {
            C0341b c0341b3 = new C0341b(runnable, executor);
            do {
                c0341b3.f3993c = c0341b;
                if (f13204n.a(this, c0341b, c0341b3)) {
                    return;
                } else {
                    c0341b = this.f13207e;
                }
            } while (c0341b != c0341b2);
        }
        d(runnable, executor);
    }

    public void afterDone() {
    }

    public final void b(StringBuilder sb, Object obj) {
        if (obj == null) {
            sb.append("null");
        } else {
            if (obj == this) {
                sb.append("this future");
                return;
            }
            sb.append(obj.getClass().getName());
            sb.append("@");
            sb.append(Integer.toHexString(System.identityHashCode(obj)));
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:33:0x0056, code lost:
    
        return true;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean cancel(boolean r8) {
        /*
            r7 = this;
            java.lang.Object r0 = r7.f13206b
            r1 = 1
            r2 = 0
            if (r0 != 0) goto L8
            r3 = r1
            goto L9
        L8:
            r3 = r2
        L9:
            boolean r4 = r0 instanceof V3.RunnableC0343d
            r3 = r3 | r4
            if (r3 == 0) goto L5e
            boolean r3 = com.google.common.util.concurrent.b.f13202j
            if (r3 == 0) goto L1f
            V3.a r3 = new V3.a
            java.util.concurrent.CancellationException r4 = new java.util.concurrent.CancellationException
            java.lang.String r5 = "Future.cancel() was called."
            r4.<init>(r5)
            r3.<init>(r8, r4)
            goto L29
        L1f:
            if (r8 == 0) goto L24
            V3.a r3 = V3.C0340a.f3986c
            goto L26
        L24:
            V3.a r3 = V3.C0340a.f3987d
        L26:
            java.util.Objects.requireNonNull(r3)
        L29:
            r4 = r7
            r5 = r2
        L2b:
            com.bumptech.glide.f r6 = com.google.common.util.concurrent.b.f13204n
            boolean r6 = r6.b(r4, r0, r3)
            if (r6 == 0) goto L57
            c(r4, r8)
            boolean r4 = r0 instanceof V3.RunnableC0343d
            if (r4 == 0) goto L56
            V3.d r0 = (V3.RunnableC0343d) r0
            V3.F r0 = r0.f4000e
            boolean r4 = r0 instanceof V3.InterfaceC0345f
            if (r4 == 0) goto L53
            r4 = r0
            com.google.common.util.concurrent.b r4 = (com.google.common.util.concurrent.b) r4
            java.lang.Object r0 = r4.f13206b
            if (r0 != 0) goto L4b
            r5 = r1
            goto L4c
        L4b:
            r5 = r2
        L4c:
            boolean r6 = r0 instanceof V3.RunnableC0343d
            r5 = r5 | r6
            if (r5 == 0) goto L56
            r5 = r1
            goto L2b
        L53:
            r0.cancel(r8)
        L56:
            return r1
        L57:
            java.lang.Object r0 = r4.f13206b
            boolean r6 = r0 instanceof V3.RunnableC0343d
            if (r6 != 0) goto L2b
            return r5
        L5e:
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.common.util.concurrent.b.cancel(boolean):boolean");
    }

    public Object get(long j7, TimeUnit timeUnit) throws InterruptedException, TimeoutException, ExecutionException {
        boolean z6;
        long j8;
        long nanos = timeUnit.toNanos(j7);
        if (Thread.interrupted()) {
            throw new InterruptedException();
        }
        Object obj = this.f13206b;
        if ((obj != null) && (!(obj instanceof RunnableC0343d))) {
            return e(obj);
        }
        long j9 = 0;
        long nanoTime = nanos > 0 ? System.nanoTime() + nanos : 0L;
        if (nanos >= 1000) {
            C0352m c0352m = this.f13208f;
            C0352m c0352m2 = C0352m.f4007c;
            if (c0352m != c0352m2) {
                C0352m c0352m3 = new C0352m();
                z6 = true;
                while (true) {
                    com.bumptech.glide.f fVar = f13204n;
                    fVar.h(c0352m3, c0352m);
                    if (fVar.c(this, c0352m, c0352m3)) {
                        j8 = j9;
                        do {
                            LockSupport.parkNanos(this, Math.min(nanos, 2147483647999999999L));
                            if (Thread.interrupted()) {
                                h(c0352m3);
                                throw new InterruptedException();
                            }
                            Object obj2 = this.f13206b;
                            if ((obj2 != null) && (!(obj2 instanceof RunnableC0343d))) {
                                return e(obj2);
                            }
                            nanos = nanoTime - System.nanoTime();
                        } while (nanos >= 1000);
                        h(c0352m3);
                    } else {
                        long j10 = j9;
                        c0352m = this.f13208f;
                        if (c0352m == c0352m2) {
                            break;
                        }
                        j9 = j10;
                    }
                }
            }
            Object obj3 = this.f13206b;
            Objects.requireNonNull(obj3);
            return e(obj3);
        }
        z6 = true;
        j8 = 0;
        while (nanos > j8) {
            Object obj4 = this.f13206b;
            if ((obj4 != null ? z6 : false) && (!(obj4 instanceof RunnableC0343d))) {
                return e(obj4);
            }
            if (Thread.interrupted()) {
                throw new InterruptedException();
            }
            nanos = nanoTime - System.nanoTime();
        }
        String bVar = toString();
        String obj5 = timeUnit.toString();
        Locale locale = Locale.ROOT;
        String lowerCase = obj5.toLowerCase(locale);
        StringBuilder r6 = i.r(j7, "Waited ", StringUtils.SPACE);
        r6.append(timeUnit.toString().toLowerCase(locale));
        String sb = r6.toString();
        if (nanos + 1000 < j8) {
            String B6 = i.B(sb, " (plus ");
            long j11 = -nanos;
            long convert = timeUnit.convert(j11, TimeUnit.NANOSECONDS);
            long nanos2 = j11 - timeUnit.toNanos(convert);
            boolean z7 = (convert == j8 || nanos2 > 1000) ? z6 : false;
            if (convert > j8) {
                String str = B6 + convert + StringUtils.SPACE + lowerCase;
                if (z7) {
                    str = i.B(str, ",");
                }
                B6 = i.B(str, StringUtils.SPACE);
            }
            if (z7) {
                B6 = B6 + nanos2 + " nanoseconds ";
            }
            sb = i.B(B6, "delay)");
        }
        if (isDone()) {
            throw new TimeoutException(i.B(sb, " but future completed as timeout expired"));
        }
        throw new TimeoutException(i.C(sb, " for ", bVar));
    }

    public final void h(C0352m c0352m) {
        c0352m.f4008a = null;
        while (true) {
            C0352m c0352m2 = this.f13208f;
            if (c0352m2 == C0352m.f4007c) {
                return;
            }
            C0352m c0352m3 = null;
            while (c0352m2 != null) {
                C0352m c0352m4 = c0352m2.f4009b;
                if (c0352m2.f4008a != null) {
                    c0352m3 = c0352m2;
                } else if (c0352m3 != null) {
                    c0352m3.f4009b = c0352m4;
                    if (c0352m3.f4008a == null) {
                        break;
                    }
                } else if (!f13204n.c(this, c0352m2, c0352m4)) {
                    break;
                }
                c0352m2 = c0352m4;
            }
            return;
        }
    }

    public void interruptTask() {
    }

    public boolean isCancelled() {
        return this.f13206b instanceof C0340a;
    }

    public boolean isDone() {
        return (!(r0 instanceof RunnableC0343d)) & (this.f13206b != null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public String pendingToString() {
        if (!(this instanceof ScheduledFuture)) {
            return null;
        }
        return "remaining delay=[" + ((ScheduledFuture) this).getDelay(TimeUnit.MILLISECONDS) + " ms]";
    }

    public boolean set(Object obj) {
        if (obj == null) {
            obj = f13205p;
        }
        if (!f13204n.b(this, null, obj)) {
            return false;
        }
        c(this, false);
        return true;
    }

    public boolean setException(Throwable th) {
        if (!f13204n.b(this, null, new a((Throwable) v.checkNotNull(th)))) {
            return false;
        }
        c(this, false);
        return true;
    }

    public boolean setFuture(F f3) {
        a aVar;
        v.checkNotNull(f3);
        Object obj = this.f13206b;
        if (obj == null) {
            if (f3.isDone()) {
                if (f13204n.b(this, null, f(f3))) {
                    c(this, false);
                    return true;
                }
                return false;
            }
            RunnableC0343d runnableC0343d = new RunnableC0343d(this, f3);
            if (f13204n.b(this, null, runnableC0343d)) {
                try {
                    f3.addListener(runnableC0343d, DirectExecutor.f13193b);
                    return true;
                } catch (Throwable th) {
                    try {
                        aVar = new a(th);
                    } catch (Error | Exception unused) {
                        aVar = a.f13200b;
                    }
                    f13204n.b(this, runnableC0343d, aVar);
                    return true;
                }
            }
            obj = this.f13206b;
        }
        if (obj instanceof C0340a) {
            f3.cancel(((C0340a) obj).f3988a);
        }
        return false;
    }

    /* JADX WARN: Removed duplicated region for block: B:23:0x00c2  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.String toString() {
        /*
            r6 = this;
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r0.<init>()
            java.lang.Class r1 = r6.getClass()
            java.lang.String r1 = r1.getName()
            java.lang.String r2 = "com.google.common.util.concurrent."
            boolean r1 = r1.startsWith(r2)
            if (r1 == 0) goto L21
            java.lang.Class r1 = r6.getClass()
            java.lang.String r1 = r1.getSimpleName()
            r0.append(r1)
            goto L2c
        L21:
            java.lang.Class r1 = r6.getClass()
            java.lang.String r1 = r1.getName()
            r0.append(r1)
        L2c:
            r1 = 64
            r0.append(r1)
            int r1 = java.lang.System.identityHashCode(r6)
            java.lang.String r1 = java.lang.Integer.toHexString(r1)
            r0.append(r1)
            java.lang.String r1 = "[status="
            r0.append(r1)
            boolean r1 = r6.isCancelled()
            java.lang.String r2 = "]"
            if (r1 == 0) goto L50
            java.lang.String r1 = "CANCELLED"
            r0.append(r1)
            goto Lcc
        L50:
            boolean r1 = r6.isDone()
            if (r1 == 0) goto L5b
            r6.a(r0)
            goto Lcc
        L5b:
            int r1 = r0.length()
            java.lang.String r3 = "PENDING"
            r0.append(r3)
            java.lang.Object r3 = r6.f13206b
            boolean r4 = r3 instanceof V3.RunnableC0343d
            java.lang.String r5 = "Exception thrown from implementation: "
            if (r4 == 0) goto L93
            java.lang.String r4 = ", setFuture=["
            r0.append(r4)
            V3.d r3 = (V3.RunnableC0343d) r3
            V3.F r3 = r3.f4000e
            if (r3 != r6) goto L81
            java.lang.String r3 = "this future"
            r0.append(r3)     // Catch: java.lang.StackOverflowError -> L7d java.lang.Exception -> L7f
            goto L8f
        L7d:
            r3 = move-exception
            goto L85
        L7f:
            r3 = move-exception
            goto L85
        L81:
            r0.append(r3)     // Catch: java.lang.StackOverflowError -> L7d java.lang.Exception -> L7f
            goto L8f
        L85:
            r0.append(r5)
            java.lang.Class r3 = r3.getClass()
            r0.append(r3)
        L8f:
            r0.append(r2)
            goto Lbc
        L93:
            java.lang.String r3 = r6.pendingToString()     // Catch: java.lang.StackOverflowError -> L9c java.lang.Exception -> L9e
            java.lang.String r3 = P3.B.emptyToNull(r3)     // Catch: java.lang.StackOverflowError -> L9c java.lang.Exception -> L9e
            goto Laf
        L9c:
            r3 = move-exception
            goto L9f
        L9e:
            r3 = move-exception
        L9f:
            java.lang.StringBuilder r4 = new java.lang.StringBuilder
            r4.<init>(r5)
            java.lang.Class r3 = r3.getClass()
            r4.append(r3)
            java.lang.String r3 = r4.toString()
        Laf:
            if (r3 == 0) goto Lbc
            java.lang.String r4 = ", info=["
            r0.append(r4)
            r0.append(r3)
            r0.append(r2)
        Lbc:
            boolean r3 = r6.isDone()
            if (r3 == 0) goto Lcc
            int r3 = r0.length()
            r0.delete(r1, r3)
            r6.a(r0)
        Lcc:
            r0.append(r2)
            java.lang.String r0 = r0.toString()
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.common.util.concurrent.b.toString():java.lang.String");
    }

    @Override // W3.a
    public final Throwable tryInternalFastPathGetFailure() {
        if (!(this instanceof InterfaceC0345f)) {
            return null;
        }
        Object obj = this.f13206b;
        if (obj instanceof a) {
            return ((a) obj).f13201a;
        }
        return null;
    }

    public final boolean wasInterrupted() {
        Object obj = this.f13206b;
        return (obj instanceof C0340a) && ((C0340a) obj).f3988a;
    }

    public Object get() throws InterruptedException, ExecutionException {
        Object obj;
        if (!Thread.interrupted()) {
            Object obj2 = this.f13206b;
            if ((obj2 != null) & (!(obj2 instanceof RunnableC0343d))) {
                return e(obj2);
            }
            C0352m c0352m = this.f13208f;
            C0352m c0352m2 = C0352m.f4007c;
            if (c0352m != c0352m2) {
                C0352m c0352m3 = new C0352m();
                do {
                    com.bumptech.glide.f fVar = f13204n;
                    fVar.h(c0352m3, c0352m);
                    if (fVar.c(this, c0352m, c0352m3)) {
                        do {
                            LockSupport.park(this);
                            if (!Thread.interrupted()) {
                                obj = this.f13206b;
                            } else {
                                h(c0352m3);
                                throw new InterruptedException();
                            }
                        } while (!((obj != null) & (!(obj instanceof RunnableC0343d))));
                        return e(obj);
                    }
                    c0352m = this.f13208f;
                } while (c0352m != c0352m2);
            }
            Object obj3 = this.f13206b;
            Objects.requireNonNull(obj3);
            return e(obj3);
        }
        throw new InterruptedException();
    }
}
