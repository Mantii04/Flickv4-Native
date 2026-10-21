package W5;

/* loaded from: classes2.dex */
public final class s {
    public s(kotlin.jvm.internal.g gVar) {
    }

    public final int addFailReason(long j7) {
        return (j7 & 2305843009213693952L) != 0 ? 2 : 1;
    }

    public final long updateHead(long j7, int i2) {
        return wo(j7, 1073741823L) | i2;
    }

    public final long updateTail(long j7, int i2) {
        return wo(j7, 1152921503533105152L) | (i2 << 30);
    }

    public final long wo(long j7, long j8) {
        return j7 & (~j8);
    }
}
