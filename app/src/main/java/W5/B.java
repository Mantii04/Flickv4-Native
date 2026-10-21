package W5;

import java.util.concurrent.atomic.AtomicReferenceArray;

/* loaded from: classes2.dex */
public final class B {
    private volatile AtomicReferenceArray<Object> array;

    public B(int i2) {
        this.array = new AtomicReferenceArray<>(i2);
    }

    public final int currentLength() {
        return this.array.length();
    }

    public final Object get(int i2) {
        AtomicReferenceArray<Object> atomicReferenceArray = this.array;
        if (i2 < atomicReferenceArray.length()) {
            return atomicReferenceArray.get(i2);
        }
        return null;
    }

    public final void setSynchronized(int i2, Object obj) {
        AtomicReferenceArray<Object> atomicReferenceArray = this.array;
        int length = atomicReferenceArray.length();
        if (i2 < length) {
            atomicReferenceArray.set(i2, obj);
            return;
        }
        AtomicReferenceArray<Object> atomicReferenceArray2 = new AtomicReferenceArray<>(M5.g.coerceAtLeast(i2 + 1, length * 2));
        for (int i7 = 0; i7 < length; i7++) {
            atomicReferenceArray2.set(i7, atomicReferenceArray.get(i7));
        }
        atomicReferenceArray2.set(i2, obj);
        this.array = atomicReferenceArray2;
    }
}
