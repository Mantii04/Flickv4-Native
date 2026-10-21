package org.apache.commons.lang3.mutable;

import org.apache.commons.lang3.math.NumberUtils;

/* loaded from: classes2.dex */
public class MutableShort extends Number implements Comparable<MutableShort>, Mutable<Number> {
    private static final long serialVersionUID = -2135791679;
    private short value;

    public MutableShort() {
    }

    public void add(short s6) {
        this.value = (short) (this.value + s6);
    }

    public short addAndGet(short s6) {
        short s7 = (short) (this.value + s6);
        this.value = s7;
        return s7;
    }

    public void decrement() {
        this.value = (short) (this.value - 1);
    }

    public short decrementAndGet() {
        short s6 = (short) (this.value - 1);
        this.value = s6;
        return s6;
    }

    @Override // java.lang.Number
    public double doubleValue() {
        return this.value;
    }

    public boolean equals(Object obj) {
        return (obj instanceof MutableShort) && this.value == ((MutableShort) obj).shortValue();
    }

    @Override // java.lang.Number
    public float floatValue() {
        return this.value;
    }

    public short getAndAdd(short s6) {
        short s7 = this.value;
        this.value = (short) (s6 + s7);
        return s7;
    }

    public short getAndDecrement() {
        short s6 = this.value;
        this.value = (short) (s6 - 1);
        return s6;
    }

    public short getAndIncrement() {
        short s6 = this.value;
        this.value = (short) (s6 + 1);
        return s6;
    }

    public int hashCode() {
        return this.value;
    }

    public void increment() {
        this.value = (short) (this.value + 1);
    }

    public short incrementAndGet() {
        short s6 = (short) (this.value + 1);
        this.value = s6;
        return s6;
    }

    @Override // java.lang.Number
    public int intValue() {
        return this.value;
    }

    @Override // java.lang.Number
    public long longValue() {
        return this.value;
    }

    @Override // java.lang.Number
    public short shortValue() {
        return this.value;
    }

    public void subtract(short s6) {
        this.value = (short) (this.value - s6);
    }

    public Short toShort() {
        return Short.valueOf(shortValue());
    }

    public String toString() {
        return String.valueOf((int) this.value);
    }

    public MutableShort(short s6) {
        this.value = s6;
    }

    public void add(Number number) {
        this.value = (short) (number.shortValue() + this.value);
    }

    public short addAndGet(Number number) {
        short shortValue = (short) (number.shortValue() + this.value);
        this.value = shortValue;
        return shortValue;
    }

    @Override // java.lang.Comparable
    public int compareTo(MutableShort mutableShort) {
        return NumberUtils.compare(this.value, mutableShort.value);
    }

    @Override // org.apache.commons.lang3.mutable.Mutable
    /* renamed from: getValue, reason: avoid collision after fix types in other method */
    public Number getValue2() {
        return Short.valueOf(this.value);
    }

    public void setValue(short s6) {
        this.value = s6;
    }

    public void subtract(Number number) {
        this.value = (short) (this.value - number.shortValue());
    }

    public short getAndAdd(Number number) {
        short s6 = this.value;
        this.value = (short) (number.shortValue() + s6);
        return s6;
    }

    @Override // org.apache.commons.lang3.mutable.Mutable
    public void setValue(Number number) {
        this.value = number.shortValue();
    }

    public MutableShort(Number number) {
        this.value = number.shortValue();
    }

    public MutableShort(String str) {
        this.value = Short.parseShort(str);
    }
}
