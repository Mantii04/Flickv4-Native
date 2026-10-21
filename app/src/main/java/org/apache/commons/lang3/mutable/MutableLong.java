package org.apache.commons.lang3.mutable;

import org.apache.commons.lang3.math.NumberUtils;

/* loaded from: classes2.dex */
public class MutableLong extends Number implements Comparable<MutableLong>, Mutable<Number> {
    private static final long serialVersionUID = 62986528375L;
    private long value;

    public MutableLong() {
    }

    public void add(long j7) {
        this.value += j7;
    }

    public long addAndGet(long j7) {
        long j8 = this.value + j7;
        this.value = j8;
        return j8;
    }

    public void decrement() {
        this.value--;
    }

    public long decrementAndGet() {
        long j7 = this.value - 1;
        this.value = j7;
        return j7;
    }

    @Override // java.lang.Number
    public double doubleValue() {
        return this.value;
    }

    public boolean equals(Object obj) {
        return (obj instanceof MutableLong) && this.value == ((MutableLong) obj).longValue();
    }

    @Override // java.lang.Number
    public float floatValue() {
        return this.value;
    }

    public long getAndAdd(long j7) {
        long j8 = this.value;
        this.value = j7 + j8;
        return j8;
    }

    public long getAndDecrement() {
        long j7 = this.value;
        this.value = j7 - 1;
        return j7;
    }

    public long getAndIncrement() {
        long j7 = this.value;
        this.value = 1 + j7;
        return j7;
    }

    public int hashCode() {
        long j7 = this.value;
        return (int) (j7 ^ (j7 >>> 32));
    }

    public void increment() {
        this.value++;
    }

    public long incrementAndGet() {
        long j7 = this.value + 1;
        this.value = j7;
        return j7;
    }

    @Override // java.lang.Number
    public int intValue() {
        return (int) this.value;
    }

    @Override // java.lang.Number
    public long longValue() {
        return this.value;
    }

    public void subtract(long j7) {
        this.value -= j7;
    }

    public Long toLong() {
        return Long.valueOf(longValue());
    }

    public String toString() {
        return String.valueOf(this.value);
    }

    public MutableLong(long j7) {
        this.value = j7;
    }

    public void add(Number number) {
        this.value = number.longValue() + this.value;
    }

    public long addAndGet(Number number) {
        long longValue = number.longValue() + this.value;
        this.value = longValue;
        return longValue;
    }

    @Override // java.lang.Comparable
    public int compareTo(MutableLong mutableLong) {
        return NumberUtils.compare(this.value, mutableLong.value);
    }

    @Override // org.apache.commons.lang3.mutable.Mutable
    /* renamed from: getValue */
    public Number getValue2() {
        return Long.valueOf(this.value);
    }

    public void setValue(long j7) {
        this.value = j7;
    }

    public void subtract(Number number) {
        this.value -= number.longValue();
    }

    public long getAndAdd(Number number) {
        long j7 = this.value;
        this.value = number.longValue() + j7;
        return j7;
    }

    @Override // org.apache.commons.lang3.mutable.Mutable
    public void setValue(Number number) {
        this.value = number.longValue();
    }

    public MutableLong(Number number) {
        this.value = number.longValue();
    }

    public MutableLong(String str) {
        this.value = Long.parseLong(str);
    }
}
