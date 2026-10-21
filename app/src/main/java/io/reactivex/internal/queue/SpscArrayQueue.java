package io.reactivex.internal.queue;

import io.reactivex.annotations.Nullable;
import io.reactivex.internal.fuseable.SimplePlainQueue;
import io.reactivex.internal.util.Pow2;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReferenceArray;

/* loaded from: classes2.dex */
public final class SpscArrayQueue<E> extends AtomicReferenceArray<E> implements SimplePlainQueue<E> {
    private static final Integer MAX_LOOK_AHEAD_STEP = Integer.getInteger("jctools.spsc.max.lookahead.step", 4096);
    private static final long serialVersionUID = -1296597691183856449L;
    final AtomicLong consumerIndex;
    final int lookAheadStep;
    final int mask;
    final AtomicLong producerIndex;
    long producerLookAhead;

    public SpscArrayQueue(int i2) {
        super(Pow2.roundToPowerOfTwo(i2));
        this.mask = length() - 1;
        this.producerIndex = new AtomicLong();
        this.consumerIndex = new AtomicLong();
        this.lookAheadStep = Math.min(i2 / 4, MAX_LOOK_AHEAD_STEP.intValue());
    }

    public int calcElementOffset(long j7, int i2) {
        return ((int) j7) & i2;
    }

    @Override // io.reactivex.internal.fuseable.SimpleQueue
    public void clear() {
        while (true) {
            if (poll() == null && isEmpty()) {
                return;
            }
        }
    }

    @Override // io.reactivex.internal.fuseable.SimpleQueue
    public boolean isEmpty() {
        return this.producerIndex.get() == this.consumerIndex.get();
    }

    public E lvElement(int i2) {
        return get(i2);
    }

    @Override // io.reactivex.internal.fuseable.SimpleQueue
    public boolean offer(E e3) {
        if (e3 == null) {
            throw new NullPointerException("Null is not a valid element");
        }
        int i2 = this.mask;
        long j7 = this.producerIndex.get();
        int calcElementOffset = calcElementOffset(j7, i2);
        if (j7 >= this.producerLookAhead) {
            long j8 = this.lookAheadStep + j7;
            if (lvElement(calcElementOffset(j8, i2)) == null) {
                this.producerLookAhead = j8;
            } else if (lvElement(calcElementOffset) != null) {
                return false;
            }
        }
        soElement(calcElementOffset, e3);
        soProducerIndex(j7 + 1);
        return true;
    }

    @Override // io.reactivex.internal.fuseable.SimplePlainQueue, io.reactivex.internal.fuseable.SimpleQueue
    @Nullable
    public E poll() {
        long j7 = this.consumerIndex.get();
        int calcElementOffset = calcElementOffset(j7);
        E lvElement = lvElement(calcElementOffset);
        if (lvElement == null) {
            return null;
        }
        soConsumerIndex(j7 + 1);
        soElement(calcElementOffset, null);
        return lvElement;
    }

    public void soConsumerIndex(long j7) {
        this.consumerIndex.lazySet(j7);
    }

    public void soElement(int i2, E e3) {
        lazySet(i2, e3);
    }

    public void soProducerIndex(long j7) {
        this.producerIndex.lazySet(j7);
    }

    public int calcElementOffset(long j7) {
        return ((int) j7) & this.mask;
    }

    @Override // io.reactivex.internal.fuseable.SimpleQueue
    public boolean offer(E e3, E e7) {
        return offer(e3) && offer(e7);
    }
}
