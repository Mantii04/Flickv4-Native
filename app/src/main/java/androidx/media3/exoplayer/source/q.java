package androidx.media3.exoplayer.source;

/* loaded from: classes.dex */
public abstract /* synthetic */ class q {
    public static ShuffleOrder b(ShuffleOrder shuffleOrder, int i2, int i7) {
        return shuffleOrder.cloneAndClear().cloneAndInsert(0, i2);
    }

    public static ShuffleOrder a(ShuffleOrder shuffleOrder, int i2, int i7, int i8) {
        return shuffleOrder;
    }
}
