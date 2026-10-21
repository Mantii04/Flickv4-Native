package io.reactivex.internal.queue;

import io.reactivex.annotations.Nullable;
import io.reactivex.internal.fuseable.SimplePlainQueue;
import io.reactivex.internal.util.Pow2;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReferenceArray;

/* loaded from: classes2.dex */
public final class SpscLinkedArrayQueue<T> implements SimplePlainQueue<T> {
    AtomicReferenceArray<Object> consumerBuffer;
    final int consumerMask;
    AtomicReferenceArray<Object> producerBuffer;
    long producerLookAhead;
    int producerLookAheadStep;
    final int producerMask;
    static final int MAX_LOOK_AHEAD_STEP = Integer.getInteger("jctools.spsc.max.lookahead.step", 4096).intValue();
    private static final Object HAS_NEXT = new Object();
    final AtomicLong producerIndex = new AtomicLong();
    final AtomicLong consumerIndex = new AtomicLong();

    public SpscLinkedArrayQueue(int i2) {
        int roundToPowerOfTwo = Pow2.roundToPowerOfTwo(Math.max(8, i2));
        int i7 = roundToPowerOfTwo - 1;
        AtomicReferenceArray<Object> atomicReferenceArray = new AtomicReferenceArray<>(roundToPowerOfTwo + 1);
        this.producerBuffer = atomicReferenceArray;
        this.producerMask = i7;
        adjustLookAheadStep(roundToPowerOfTwo);
        this.consumerBuffer = atomicReferenceArray;
        this.consumerMask = i7;
        this.producerLookAhead = roundToPowerOfTwo - 2;
        soProducerIndex(0L);
    }

    private void adjustLookAheadStep(int i2) {
        this.producerLookAheadStep = Math.min(i2 / 4, MAX_LOOK_AHEAD_STEP);
    }

    private static int calcDirectOffset(int i2) {
        return i2;
    }

    private static int calcWrappedOffset(long j7, int i2) {
        return calcDirectOffset(((int) j7) & i2);
    }

    private long lpConsumerIndex() {
        return this.consumerIndex.get();
    }

    private long lpProducerIndex() {
        return this.producerIndex.get();
    }

    private long lvConsumerIndex() {
        return this.consumerIndex.get();
    }

    private static <E> Object lvElement(AtomicReferenceArray<Object> atomicReferenceArray, int i2) {
        return atomicReferenceArray.get(i2);
    }

    private AtomicReferenceArray<Object> lvNextBufferAndUnlink(AtomicReferenceArray<Object> atomicReferenceArray, int i2) {
        int calcDirectOffset = calcDirectOffset(i2);
        AtomicReferenceArray<Object> atomicReferenceArray2 = (AtomicReferenceArray) lvElement(atomicReferenceArray, calcDirectOffset);
        soElement(atomicReferenceArray, calcDirectOffset, null);
        return atomicReferenceArray2;
    }

    private long lvProducerIndex() {
        return this.producerIndex.get();
    }

    private T newBufferPeek(AtomicReferenceArray<Object> atomicReferenceArray, long j7, int i2) {
        this.consumerBuffer = atomicReferenceArray;
        return (T) lvElement(atomicReferenceArray, calcWrappedOffset(j7, i2));
    }

    private T newBufferPoll(AtomicReferenceArray<Object> atomicReferenceArray, long j7, int i2) {
        this.consumerBuffer = atomicReferenceArray;
        int calcWrappedOffset = calcWrappedOffset(j7, i2);
        T t6 = (T) lvElement(atomicReferenceArray, calcWrappedOffset);
        if (t6 != null) {
            soElement(atomicReferenceArray, calcWrappedOffset, null);
            soConsumerIndex(j7 + 1);
        }
        return t6;
    }

    private void resize(AtomicReferenceArray<Object> atomicReferenceArray, long j7, int i2, T t6, long j8) {
        AtomicReferenceArray<Object> atomicReferenceArray2 = new AtomicReferenceArray<>(atomicReferenceArray.length());
        this.producerBuffer = atomicReferenceArray2;
        this.producerLookAhead = (j8 + j7) - 1;
        soElement(atomicReferenceArray2, i2, t6);
        soNext(atomicReferenceArray, atomicReferenceArray2);
        soElement(atomicReferenceArray, i2, HAS_NEXT);
        soProducerIndex(j7 + 1);
    }

    private void soConsumerIndex(long j7) {
        this.consumerIndex.lazySet(j7);
    }

    private static void soElement(AtomicReferenceArray<Object> atomicReferenceArray, int i2, Object obj) {
        atomicReferenceArray.lazySet(i2, obj);
    }

    private void soNext(AtomicReferenceArray<Object> atomicReferenceArray, AtomicReferenceArray<Object> atomicReferenceArray2) {
        soElement(atomicReferenceArray, calcDirectOffset(atomicReferenceArray.length() - 1), atomicReferenceArray2);
    }

    private void soProducerIndex(long j7) {
        this.producerIndex.lazySet(j7);
    }

    private boolean writeToQueue(AtomicReferenceArray<Object> atomicReferenceArray, T t6, long j7, int i2) {
        soElement(atomicReferenceArray, i2, t6);
        soProducerIndex(j7 + 1);
        return true;
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
        return lvProducerIndex() == lvConsumerIndex();
    }

    @Override // io.reactivex.internal.fuseable.SimpleQueue
    public boolean offer(T t6) {
        if (t6 == null) {
            throw new NullPointerException("Null is not a valid element");
        }
        AtomicReferenceArray<Object> atomicReferenceArray = this.producerBuffer;
        long lpProducerIndex = lpProducerIndex();
        int i2 = this.producerMask;
        int calcWrappedOffset = calcWrappedOffset(lpProducerIndex, i2);
        if (lpProducerIndex < this.producerLookAhead) {
            return writeToQueue(atomicReferenceArray, t6, lpProducerIndex, calcWrappedOffset);
        }
        long j7 = this.producerLookAheadStep + lpProducerIndex;
        if (lvElement(atomicReferenceArray, calcWrappedOffset(j7, i2)) == null) {
            this.producerLookAhead = j7 - 1;
            return writeToQueue(atomicReferenceArray, t6, lpProducerIndex, calcWrappedOffset);
        }
        if (lvElement(atomicReferenceArray, calcWrappedOffset(lpProducerIndex + 1, i2)) == null) {
            return writeToQueue(atomicReferenceArray, t6, lpProducerIndex, calcWrappedOffset);
        }
        resize(atomicReferenceArray, lpProducerIndex, calcWrappedOffset, t6, i2);
        return true;
    }

    public T peek() {
        AtomicReferenceArray<Object> atomicReferenceArray = this.consumerBuffer;
        long lpConsumerIndex = lpConsumerIndex();
        int i2 = this.consumerMask;
        T t6 = (T) lvElement(atomicReferenceArray, calcWrappedOffset(lpConsumerIndex, i2));
        return t6 == HAS_NEXT ? newBufferPeek(lvNextBufferAndUnlink(atomicReferenceArray, i2 + 1), lpConsumerIndex, i2) : t6;
    }

    @Override // io.reactivex.internal.fuseable.SimplePlainQueue, io.reactivex.internal.fuseable.SimpleQueue
    @Nullable
    public T poll() {
        AtomicReferenceArray<Object> atomicReferenceArray = this.consumerBuffer;
        long lpConsumerIndex = lpConsumerIndex();
        int i2 = this.consumerMask;
        int calcWrappedOffset = calcWrappedOffset(lpConsumerIndex, i2);
        T t6 = (T) lvElement(atomicReferenceArray, calcWrappedOffset);
        boolean z6 = t6 == HAS_NEXT;
        if (t6 == null || z6) {
            if (z6) {
                return newBufferPoll(lvNextBufferAndUnlink(atomicReferenceArray, i2 + 1), lpConsumerIndex, i2);
            }
            return null;
        }
        soElement(atomicReferenceArray, calcWrappedOffset, null);
        soConsumerIndex(lpConsumerIndex + 1);
        return t6;
    }

    public int size() {
        long lvConsumerIndex = lvConsumerIndex();
        while (true) {
            long lvProducerIndex = lvProducerIndex();
            long lvConsumerIndex2 = lvConsumerIndex();
            if (lvConsumerIndex == lvConsumerIndex2) {
                return (int) (lvProducerIndex - lvConsumerIndex2);
            }
            lvConsumerIndex = lvConsumerIndex2;
        }
    }

    @Override // io.reactivex.internal.fuseable.SimpleQueue
    public boolean offer(T t6, T t7) {
        AtomicReferenceArray<Object> atomicReferenceArray = this.producerBuffer;
        long lvProducerIndex = lvProducerIndex();
        int i2 = this.producerMask;
        long j7 = 2 + lvProducerIndex;
        if (lvElement(atomicReferenceArray, calcWrappedOffset(j7, i2)) == null) {
            int calcWrappedOffset = calcWrappedOffset(lvProducerIndex, i2);
            soElement(atomicReferenceArray, calcWrappedOffset + 1, t7);
            soElement(atomicReferenceArray, calcWrappedOffset, t6);
            soProducerIndex(j7);
            return true;
        }
        AtomicReferenceArray<Object> atomicReferenceArray2 = new AtomicReferenceArray<>(atomicReferenceArray.length());
        this.producerBuffer = atomicReferenceArray2;
        int calcWrappedOffset2 = calcWrappedOffset(lvProducerIndex, i2);
        soElement(atomicReferenceArray2, calcWrappedOffset2 + 1, t7);
        soElement(atomicReferenceArray2, calcWrappedOffset2, t6);
        soNext(atomicReferenceArray, atomicReferenceArray2);
        soElement(atomicReferenceArray, calcWrappedOffset2, HAS_NEXT);
        soProducerIndex(j7);
        return true;
    }
}
