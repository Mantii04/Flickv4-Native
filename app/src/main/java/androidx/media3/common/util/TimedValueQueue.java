package androidx.media3.common.util;

import P3.v;
import java.util.Arrays;

@UnstableApi
/* loaded from: classes.dex */
public final class TimedValueQueue<V> {
    private static final int INITIAL_BUFFER_SIZE = 10;
    private int first;
    private int size;
    private long[] timestamps;
    private V[] values;

    public TimedValueQueue() {
        this(10);
    }

    private void addUnchecked(long j7, V v6) {
        int i2 = this.first;
        int i7 = this.size;
        V[] vArr = this.values;
        int length = (i2 + i7) % vArr.length;
        this.timestamps[length] = j7;
        vArr[length] = v6;
        this.size = i7 + 1;
    }

    private void clearBufferOnTimeDiscontinuity(long j7) {
        if (this.size > 0) {
            if (j7 <= this.timestamps[((this.first + r0) - 1) % this.values.length]) {
                clear();
            }
        }
    }

    private void doubleCapacityIfFull() {
        int length = this.values.length;
        if (this.size < length) {
            return;
        }
        int i2 = length * 2;
        long[] jArr = new long[i2];
        V[] vArr = (V[]) newArray(i2);
        int i7 = this.first;
        int i8 = length - i7;
        System.arraycopy(this.timestamps, i7, jArr, 0, i8);
        System.arraycopy(this.values, this.first, vArr, 0, i8);
        int i9 = this.first;
        if (i9 > 0) {
            System.arraycopy(this.timestamps, 0, jArr, i8, i9);
            System.arraycopy(this.values, 0, vArr, i8, this.first);
        }
        this.timestamps = jArr;
        this.values = vArr;
        this.first = 0;
    }

    private static <V> V[] newArray(int i2) {
        return (V[]) new Object[i2];
    }

    private V popFirst() {
        v.checkState(this.size > 0);
        V[] vArr = this.values;
        int i2 = this.first;
        V v6 = vArr[i2];
        vArr[i2] = null;
        this.first = (i2 + 1) % vArr.length;
        this.size--;
        return v6;
    }

    public synchronized void add(long j7, V v6) {
        clearBufferOnTimeDiscontinuity(j7);
        doubleCapacityIfFull();
        addUnchecked(j7, v6);
    }

    public synchronized void clear() {
        this.first = 0;
        this.size = 0;
        Arrays.fill(this.values, (Object) null);
    }

    public synchronized V poll(long j7) {
        return poll(j7, false);
    }

    public synchronized V pollFirst() {
        return this.size == 0 ? null : popFirst();
    }

    public synchronized V pollFloor(long j7) {
        return poll(j7, true);
    }

    public synchronized int size() {
        return this.size;
    }

    public TimedValueQueue(int i2) {
        this.timestamps = new long[i2];
        this.values = (V[]) newArray(i2);
    }

    private V poll(long j7, boolean z6) {
        V v6 = null;
        long j8 = Long.MAX_VALUE;
        while (this.size > 0) {
            long j9 = j7 - this.timestamps[this.first];
            if (j9 < 0 && (z6 || (-j9) >= j8)) {
                break;
            }
            v6 = popFirst();
            j8 = j9;
        }
        return v6;
    }
}
