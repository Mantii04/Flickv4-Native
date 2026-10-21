package io.reactivex.internal.util;

import A.i;
import io.reactivex.plugins.RxJavaPlugins;
import java.util.concurrent.atomic.AtomicLong;

/* loaded from: classes2.dex */
public final class BackpressureHelper {
    private BackpressureHelper() {
        throw new IllegalStateException("No instances!");
    }

    public static long add(AtomicLong atomicLong, long j7) {
        long j8;
        do {
            j8 = atomicLong.get();
            if (j8 == Long.MAX_VALUE) {
                return Long.MAX_VALUE;
            }
        } while (!atomicLong.compareAndSet(j8, addCap(j8, j7)));
        return j8;
    }

    public static long addCancel(AtomicLong atomicLong, long j7) {
        long j8;
        do {
            j8 = atomicLong.get();
            if (j8 == Long.MIN_VALUE) {
                return Long.MIN_VALUE;
            }
            if (j8 == Long.MAX_VALUE) {
                return Long.MAX_VALUE;
            }
        } while (!atomicLong.compareAndSet(j8, addCap(j8, j7)));
        return j8;
    }

    public static long addCap(long j7, long j8) {
        long j9 = j7 + j8;
        if (j9 < 0) {
            return Long.MAX_VALUE;
        }
        return j9;
    }

    public static long multiplyCap(long j7, long j8) {
        long j9 = j7 * j8;
        if (((j7 | j8) >>> 31) == 0 || j9 / j7 == j8) {
            return j9;
        }
        return Long.MAX_VALUE;
    }

    public static long produced(AtomicLong atomicLong, long j7) {
        long j8;
        long j9;
        do {
            j8 = atomicLong.get();
            if (j8 == Long.MAX_VALUE) {
                return Long.MAX_VALUE;
            }
            j9 = j8 - j7;
            if (j9 < 0) {
                RxJavaPlugins.onError(new IllegalStateException(i.i("More produced than requested: ", j9)));
                j9 = 0;
            }
        } while (!atomicLong.compareAndSet(j8, j9));
        return j9;
    }

    public static long producedCancel(AtomicLong atomicLong, long j7) {
        long j8;
        long j9;
        do {
            j8 = atomicLong.get();
            if (j8 == Long.MIN_VALUE) {
                return Long.MIN_VALUE;
            }
            if (j8 == Long.MAX_VALUE) {
                return Long.MAX_VALUE;
            }
            j9 = j8 - j7;
            if (j9 < 0) {
                RxJavaPlugins.onError(new IllegalStateException(i.i("More produced than requested: ", j9)));
                j9 = 0;
            }
        } while (!atomicLong.compareAndSet(j8, j9));
        return j9;
    }
}
