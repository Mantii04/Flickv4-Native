package io.reactivex.internal.util;

/* loaded from: classes2.dex */
public final class OpenHashSet<T> {
    private static final int INT_PHI = -1640531527;
    T[] keys;
    final float loadFactor;
    int mask;
    int maxSize;
    int size;

    public OpenHashSet() {
        this(16, 0.75f);
    }

    public static int mix(int i2) {
        int i7 = i2 * INT_PHI;
        return i7 ^ (i7 >>> 16);
    }

    public boolean add(T t6) {
        T t7;
        T[] tArr = this.keys;
        int i2 = this.mask;
        int mix = mix(t6.hashCode()) & i2;
        T t8 = tArr[mix];
        if (t8 != null) {
            if (t8.equals(t6)) {
                return false;
            }
            do {
                mix = (mix + 1) & i2;
                t7 = tArr[mix];
                if (t7 == null) {
                }
            } while (!t7.equals(t6));
            return false;
        }
        tArr[mix] = t6;
        int i7 = this.size + 1;
        this.size = i7;
        if (i7 >= this.maxSize) {
            rehash();
        }
        return true;
    }

    public Object[] keys() {
        return this.keys;
    }

    public void rehash() {
        T t6;
        T[] tArr = this.keys;
        int length = tArr.length;
        int i2 = length << 1;
        int i7 = i2 - 1;
        T[] tArr2 = (T[]) new Object[i2];
        int i8 = this.size;
        while (true) {
            int i9 = i8 - 1;
            if (i8 == 0) {
                this.mask = i7;
                this.maxSize = (int) (i2 * this.loadFactor);
                this.keys = tArr2;
                return;
            }
            do {
                length--;
                t6 = tArr[length];
            } while (t6 == null);
            int mix = mix(t6.hashCode()) & i7;
            if (tArr2[mix] != null) {
                do {
                    mix = (mix + 1) & i7;
                } while (tArr2[mix] != null);
            }
            tArr2[mix] = tArr[length];
            i8 = i9;
        }
    }

    public boolean remove(T t6) {
        T t7;
        T[] tArr = this.keys;
        int i2 = this.mask;
        int mix = mix(t6.hashCode()) & i2;
        T t8 = tArr[mix];
        if (t8 == null) {
            return false;
        }
        if (t8.equals(t6)) {
            return removeEntry(mix, tArr, i2);
        }
        do {
            mix = (mix + 1) & i2;
            t7 = tArr[mix];
            if (t7 == null) {
                return false;
            }
        } while (!t7.equals(t6));
        return removeEntry(mix, tArr, i2);
    }

    public boolean removeEntry(int i2, T[] tArr, int i7) {
        int i8;
        T t6;
        this.size--;
        while (true) {
            int i9 = i2 + 1;
            while (true) {
                i8 = i9 & i7;
                t6 = tArr[i8];
                if (t6 == null) {
                    tArr[i2] = null;
                    return true;
                }
                int mix = mix(t6.hashCode()) & i7;
                if (i2 > i8) {
                    if (i2 >= mix && mix > i8) {
                        break;
                    }
                    i9 = i8 + 1;
                } else if (i2 < mix && mix <= i8) {
                    i9 = i8 + 1;
                }
            }
            tArr[i2] = t6;
            i2 = i8;
        }
    }

    public int size() {
        return this.size;
    }

    public OpenHashSet(int i2) {
        this(i2, 0.75f);
    }

    public OpenHashSet(int i2, float f3) {
        this.loadFactor = f3;
        int roundToPowerOfTwo = Pow2.roundToPowerOfTwo(i2);
        this.mask = roundToPowerOfTwo - 1;
        this.maxSize = (int) (f3 * roundToPowerOfTwo);
        this.keys = (T[]) new Object[roundToPowerOfTwo];
    }
}
