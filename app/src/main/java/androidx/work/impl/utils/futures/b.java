package androidx.work.impl.utils.futures;

import A.i;
import M1.c;
import M1.d;
import M1.f;
import V3.F;
import androidx.media3.exoplayer.upstream.CmcdData;
import com.bumptech.glide.e;
import java.util.Locale;
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

/* loaded from: classes.dex */
public abstract class b implements F {

    /* renamed from: j, reason: collision with root package name */
    public static final boolean f8316j = Boolean.parseBoolean(System.getProperty("guava.concurrent.generate_cancellation_cause", "false"));

    /* renamed from: m, reason: collision with root package name */
    public static final Logger f8317m = Logger.getLogger(b.class.getName());

    /* renamed from: n, reason: collision with root package name */
    public static final e f8318n;

    /* renamed from: p, reason: collision with root package name */
    public static final Object f8319p;

    /* renamed from: b, reason: collision with root package name */
    public volatile Object f8320b;

    /* renamed from: e, reason: collision with root package name */
    public volatile M1.b f8321e;

    /* renamed from: f, reason: collision with root package name */
    public volatile f f8322f;

    static {
        e eVar;
        try {
            eVar = new c(AtomicReferenceFieldUpdater.newUpdater(f.class, Thread.class, CmcdData.OBJECT_TYPE_AUDIO_ONLY), AtomicReferenceFieldUpdater.newUpdater(f.class, f.class, "b"), AtomicReferenceFieldUpdater.newUpdater(b.class, f.class, "f"), AtomicReferenceFieldUpdater.newUpdater(b.class, M1.b.class, "e"), AtomicReferenceFieldUpdater.newUpdater(b.class, Object.class, "b"));
            th = null;
        } catch (Throwable th) {
            th = th;
            eVar = new M1.e();
        }
        f8318n = eVar;
        if (th != null) {
            f8317m.log(Level.SEVERE, "SafeAtomicHelper is broken!", th);
        }
        f8319p = new Object();
    }

    public static void b(b bVar) {
        M1.b bVar2;
        M1.b bVar3;
        M1.b bVar4 = null;
        while (true) {
            f fVar = bVar.f8322f;
            if (f8318n.c(bVar, fVar, f.f2100c)) {
                while (fVar != null) {
                    Thread thread = fVar.f2101a;
                    if (thread != null) {
                        fVar.f2101a = null;
                        LockSupport.unpark(thread);
                    }
                    fVar = fVar.f2102b;
                }
                bVar.afterDone();
                do {
                    bVar2 = bVar.f8321e;
                } while (!f8318n.a(bVar, bVar2, M1.b.f2089d));
                while (true) {
                    bVar3 = bVar4;
                    bVar4 = bVar2;
                    if (bVar4 == null) {
                        break;
                    }
                    bVar2 = bVar4.f2092c;
                    bVar4.f2092c = bVar3;
                }
                while (bVar3 != null) {
                    bVar4 = bVar3.f2092c;
                    Runnable runnable = bVar3.f2090a;
                    if (runnable instanceof d) {
                        d dVar = (d) runnable;
                        bVar = dVar.f2098b;
                        if (bVar.f8320b == dVar) {
                            if (f8318n.b(bVar, dVar, e(dVar.f2099e))) {
                                break;
                            }
                        } else {
                            continue;
                        }
                    } else {
                        c(runnable, bVar3.f2091b);
                    }
                    bVar3 = bVar4;
                }
                return;
            }
        }
    }

    public static void c(Runnable runnable, Executor executor) {
        try {
            executor.execute(runnable);
        } catch (RuntimeException e3) {
            f8317m.log(Level.SEVERE, "RuntimeException while executing runnable " + runnable + " with executor " + executor, (Throwable) e3);
        }
    }

    public static Object d(Object obj) {
        if (obj instanceof M1.a) {
            CancellationException cancellationException = ((M1.a) obj).f2088b;
            CancellationException cancellationException2 = new CancellationException("Task was cancelled.");
            cancellationException2.initCause(cancellationException);
            throw cancellationException2;
        }
        if (obj instanceof a) {
            throw new ExecutionException(((a) obj).f8315a);
        }
        if (obj == f8319p) {
            return null;
        }
        return obj;
    }

    public static Object e(F f3) {
        if (f3 instanceof b) {
            Object obj = ((b) f3).f8320b;
            if (!(obj instanceof M1.a)) {
                return obj;
            }
            M1.a aVar = (M1.a) obj;
            return aVar.f2087a ? aVar.f2088b != null ? new M1.a(false, aVar.f2088b) : M1.a.f2086d : obj;
        }
        boolean isCancelled = f3.isCancelled();
        if ((!f8316j) && isCancelled) {
            return M1.a.f2086d;
        }
        try {
            Object f7 = f(f3);
            return f7 == null ? f8319p : f7;
        } catch (CancellationException e3) {
            if (isCancelled) {
                return new M1.a(false, e3);
            }
            return new a(new IllegalArgumentException("get() threw CancellationException, despite reporting isCancelled() == false: " + f3, e3));
        } catch (ExecutionException e7) {
            return new a(e7.getCause());
        } catch (Throwable th) {
            return new a(th);
        }
    }

    public static Object f(F f3) {
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
            Object f3 = f(this);
            sb.append("SUCCESS, result=[");
            sb.append(f3 == this ? "this future" : String.valueOf(f3));
            sb.append("]");
        } catch (CancellationException unused) {
            sb.append("CANCELLED");
        } catch (RuntimeException e3) {
            sb.append("UNKNOWN, cause=[");
            sb.append(e3.getClass());
            sb.append(" thrown from get()]");
        } catch (ExecutionException e7) {
            sb.append("FAILURE, cause=[");
            sb.append(e7.getCause());
            sb.append("]");
        }
    }

    @Override // V3.F
    public final void addListener(Runnable runnable, Executor executor) {
        runnable.getClass();
        executor.getClass();
        M1.b bVar = this.f8321e;
        M1.b bVar2 = M1.b.f2089d;
        if (bVar != bVar2) {
            M1.b bVar3 = new M1.b(runnable, executor);
            do {
                bVar3.f2092c = bVar;
                if (f8318n.a(this, bVar, bVar3)) {
                    return;
                } else {
                    bVar = this.f8321e;
                }
            } while (bVar != bVar2);
        }
        c(runnable, executor);
    }

    public void afterDone() {
    }

    /* JADX WARN: Code restructure failed: missing block: B:35:0x0058, code lost:
    
        return true;
     */
    @Override // java.util.concurrent.Future
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean cancel(boolean r8) {
        /*
            r7 = this;
            java.lang.Object r0 = r7.f8320b
            r1 = 1
            r2 = 0
            if (r0 != 0) goto L8
            r3 = r1
            goto L9
        L8:
            r3 = r2
        L9:
            boolean r4 = r0 instanceof M1.d
            r3 = r3 | r4
            if (r3 == 0) goto L60
            boolean r3 = androidx.work.impl.utils.futures.b.f8316j
            if (r3 == 0) goto L1f
            M1.a r3 = new M1.a
            java.util.concurrent.CancellationException r4 = new java.util.concurrent.CancellationException
            java.lang.String r5 = "Future.cancel() was called."
            r4.<init>(r5)
            r3.<init>(r8, r4)
            goto L26
        L1f:
            if (r8 == 0) goto L24
            M1.a r3 = M1.a.f2085c
            goto L26
        L24:
            M1.a r3 = M1.a.f2086d
        L26:
            r4 = r7
            r5 = r2
        L28:
            com.bumptech.glide.e r6 = androidx.work.impl.utils.futures.b.f8318n
            boolean r6 = r6.b(r4, r0, r3)
            if (r6 == 0) goto L59
            if (r8 == 0) goto L35
            r4.interruptTask()
        L35:
            b(r4)
            boolean r4 = r0 instanceof M1.d
            if (r4 == 0) goto L58
            M1.d r0 = (M1.d) r0
            V3.F r0 = r0.f2099e
            boolean r4 = r0 instanceof androidx.work.impl.utils.futures.b
            if (r4 == 0) goto L55
            r4 = r0
            androidx.work.impl.utils.futures.b r4 = (androidx.work.impl.utils.futures.b) r4
            java.lang.Object r0 = r4.f8320b
            if (r0 != 0) goto L4d
            r5 = r1
            goto L4e
        L4d:
            r5 = r2
        L4e:
            boolean r6 = r0 instanceof M1.d
            r5 = r5 | r6
            if (r5 == 0) goto L58
            r5 = r1
            goto L28
        L55:
            r0.cancel(r8)
        L58:
            return r1
        L59:
            java.lang.Object r0 = r4.f8320b
            boolean r6 = r0 instanceof M1.d
            if (r6 != 0) goto L28
            return r5
        L60:
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.work.impl.utils.futures.b.cancel(boolean):boolean");
    }

    public final void g(f fVar) {
        fVar.f2101a = null;
        while (true) {
            f fVar2 = this.f8322f;
            if (fVar2 == f.f2100c) {
                return;
            }
            f fVar3 = null;
            while (fVar2 != null) {
                f fVar4 = fVar2.f2102b;
                if (fVar2.f2101a != null) {
                    fVar3 = fVar2;
                } else if (fVar3 != null) {
                    fVar3.f2102b = fVar4;
                    if (fVar3.f2101a == null) {
                        break;
                    }
                } else if (!f8318n.c(this, fVar2, fVar4)) {
                    break;
                }
                fVar2 = fVar4;
            }
            return;
        }
    }

    @Override // java.util.concurrent.Future
    public final Object get(long j7, TimeUnit timeUnit) throws InterruptedException, TimeoutException, ExecutionException {
        boolean z6;
        long nanos = timeUnit.toNanos(j7);
        if (Thread.interrupted()) {
            throw new InterruptedException();
        }
        Object obj = this.f8320b;
        if ((obj != null) && (!(obj instanceof d))) {
            return d(obj);
        }
        long nanoTime = nanos > 0 ? System.nanoTime() + nanos : 0L;
        if (nanos >= 1000) {
            f fVar = this.f8322f;
            f fVar2 = f.f2100c;
            if (fVar != fVar2) {
                f fVar3 = new f();
                z6 = true;
                do {
                    e eVar = f8318n;
                    eVar.j(fVar3, fVar);
                    if (eVar.c(this, fVar, fVar3)) {
                        do {
                            LockSupport.parkNanos(this, nanos);
                            if (Thread.interrupted()) {
                                g(fVar3);
                                throw new InterruptedException();
                            }
                            Object obj2 = this.f8320b;
                            if ((obj2 != null) && (!(obj2 instanceof d))) {
                                return d(obj2);
                            }
                            nanos = nanoTime - System.nanoTime();
                        } while (nanos >= 1000);
                        g(fVar3);
                    } else {
                        fVar = this.f8322f;
                    }
                } while (fVar != fVar2);
            }
            return d(this.f8320b);
        }
        z6 = true;
        while (nanos > 0) {
            Object obj3 = this.f8320b;
            if ((obj3 != null ? z6 : false) && (!(obj3 instanceof d))) {
                return d(obj3);
            }
            if (Thread.interrupted()) {
                throw new InterruptedException();
            }
            nanos = nanoTime - System.nanoTime();
        }
        String bVar = toString();
        String obj4 = timeUnit.toString();
        Locale locale = Locale.ROOT;
        String lowerCase = obj4.toLowerCase(locale);
        StringBuilder r6 = i.r(j7, "Waited ", StringUtils.SPACE);
        r6.append(timeUnit.toString().toLowerCase(locale));
        String sb = r6.toString();
        if (nanos + 1000 < 0) {
            String B6 = i.B(sb, " (plus ");
            long j8 = -nanos;
            long convert = timeUnit.convert(j8, TimeUnit.NANOSECONDS);
            long nanos2 = j8 - timeUnit.toNanos(convert);
            boolean z7 = (convert == 0 || nanos2 > 1000) ? z6 : false;
            if (convert > 0) {
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

    public void interruptTask() {
    }

    @Override // java.util.concurrent.Future
    public final boolean isCancelled() {
        return this.f8320b instanceof M1.a;
    }

    @Override // java.util.concurrent.Future
    public final boolean isDone() {
        return (!(r0 instanceof d)) & (this.f8320b != null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public String pendingToString() {
        Object obj = this.f8320b;
        if (obj instanceof d) {
            StringBuilder sb = new StringBuilder("setFuture=[");
            F f3 = ((d) obj).f2099e;
            return i.o(sb, f3 == this ? "this future" : String.valueOf(f3), "]");
        }
        if (!(this instanceof ScheduledFuture)) {
            return null;
        }
        return "remaining delay=[" + ((ScheduledFuture) this).getDelay(TimeUnit.MILLISECONDS) + " ms]";
    }

    public boolean set(Object obj) {
        if (obj == null) {
            obj = f8319p;
        }
        if (!f8318n.b(this, null, obj)) {
            return false;
        }
        b(this);
        return true;
    }

    public boolean setException(Throwable th) {
        th.getClass();
        if (!f8318n.b(this, null, new a(th))) {
            return false;
        }
        b(this);
        return true;
    }

    public boolean setFuture(F f3) {
        a aVar;
        f3.getClass();
        Object obj = this.f8320b;
        if (obj == null) {
            if (f3.isDone()) {
                if (f8318n.b(this, null, e(f3))) {
                    b(this);
                    return true;
                }
                return false;
            }
            d dVar = new d(this, f3);
            if (f8318n.b(this, null, dVar)) {
                try {
                    f3.addListener(dVar, DirectExecutor.f8312b);
                    return true;
                } catch (Throwable th) {
                    try {
                        aVar = new a(th);
                    } catch (Throwable unused) {
                        aVar = a.f8314b;
                    }
                    f8318n.b(this, dVar, aVar);
                    return true;
                }
            }
            obj = this.f8320b;
        }
        if (obj instanceof M1.a) {
            f3.cancel(((M1.a) obj).f2087a);
        }
        return false;
    }

    public String toString() {
        String str;
        StringBuilder sb = new StringBuilder();
        sb.append(super.toString());
        sb.append("[status=");
        if (isCancelled()) {
            sb.append("CANCELLED");
        } else if (isDone()) {
            a(sb);
        } else {
            try {
                str = pendingToString();
            } catch (RuntimeException e3) {
                str = "Exception thrown from implementation: " + e3.getClass();
            }
            if (str != null && !str.isEmpty()) {
                sb.append("PENDING, info=[");
                sb.append(str);
                sb.append("]");
            } else if (isDone()) {
                a(sb);
            } else {
                sb.append("PENDING");
            }
        }
        sb.append("]");
        return sb.toString();
    }

    @Override // java.util.concurrent.Future
    public final Object get() throws InterruptedException, ExecutionException {
        Object obj;
        if (!Thread.interrupted()) {
            Object obj2 = this.f8320b;
            if ((obj2 != null) & (!(obj2 instanceof d))) {
                return d(obj2);
            }
            f fVar = this.f8322f;
            f fVar2 = f.f2100c;
            if (fVar != fVar2) {
                f fVar3 = new f();
                do {
                    e eVar = f8318n;
                    eVar.j(fVar3, fVar);
                    if (eVar.c(this, fVar, fVar3)) {
                        do {
                            LockSupport.park(this);
                            if (!Thread.interrupted()) {
                                obj = this.f8320b;
                            } else {
                                g(fVar3);
                                throw new InterruptedException();
                            }
                        } while (!((obj != null) & (!(obj instanceof d))));
                        return d(obj);
                    }
                    fVar = this.f8322f;
                } while (fVar != fVar2);
            }
            return d(this.f8320b);
        }
        throw new InterruptedException();
    }
}
