package org.apache.commons.lang3.mutable;

/* loaded from: classes2.dex */
public class MutableDouble extends Number implements Comparable<MutableDouble>, Mutable<Number> {
    private static final long serialVersionUID = 1587163916;
    private double value;

    public MutableDouble() {
    }

    public void add(double d7) {
        this.value += d7;
    }

    public double addAndGet(double d7) {
        double d8 = this.value + d7;
        this.value = d8;
        return d8;
    }

    public void decrement() {
        this.value -= 1.0d;
    }

    public double decrementAndGet() {
        double d7 = this.value - 1.0d;
        this.value = d7;
        return d7;
    }

    @Override // java.lang.Number
    public double doubleValue() {
        return this.value;
    }

    public boolean equals(Object obj) {
        return (obj instanceof MutableDouble) && Double.doubleToLongBits(((MutableDouble) obj).value) == Double.doubleToLongBits(this.value);
    }

    @Override // java.lang.Number
    public float floatValue() {
        return (float) this.value;
    }

    public double getAndAdd(double d7) {
        double d8 = this.value;
        this.value = d7 + d8;
        return d8;
    }

    public double getAndDecrement() {
        double d7 = this.value;
        this.value = d7 - 1.0d;
        return d7;
    }

    public double getAndIncrement() {
        double d7 = this.value;
        this.value = 1.0d + d7;
        return d7;
    }

    public int hashCode() {
        long doubleToLongBits = Double.doubleToLongBits(this.value);
        return (int) (doubleToLongBits ^ (doubleToLongBits >>> 32));
    }

    public void increment() {
        this.value += 1.0d;
    }

    public double incrementAndGet() {
        double d7 = this.value + 1.0d;
        this.value = d7;
        return d7;
    }

    @Override // java.lang.Number
    public int intValue() {
        return (int) this.value;
    }

    public boolean isInfinite() {
        return Double.isInfinite(this.value);
    }

    public boolean isNaN() {
        return Double.isNaN(this.value);
    }

    @Override // java.lang.Number
    public long longValue() {
        return (long) this.value;
    }

    public void subtract(double d7) {
        this.value -= d7;
    }

    public Double toDouble() {
        return Double.valueOf(doubleValue());
    }

    public String toString() {
        return String.valueOf(this.value);
    }

    public MutableDouble(double d7) {
        this.value = d7;
    }

    public void add(Number number) {
        this.value = number.doubleValue() + this.value;
    }

    public double addAndGet(Number number) {
        double doubleValue = number.doubleValue() + this.value;
        this.value = doubleValue;
        return doubleValue;
    }

    @Override // java.lang.Comparable
    public int compareTo(MutableDouble mutableDouble) {
        return Double.compare(this.value, mutableDouble.value);
    }

    @Override // org.apache.commons.lang3.mutable.Mutable
    /* renamed from: getValue */
    public Number getValue2() {
        return Double.valueOf(this.value);
    }

    public void setValue(double d7) {
        this.value = d7;
    }

    public void subtract(Number number) {
        this.value -= number.doubleValue();
    }

    public double getAndAdd(Number number) {
        double d7 = this.value;
        this.value = number.doubleValue() + d7;
        return d7;
    }

    @Override // org.apache.commons.lang3.mutable.Mutable
    public void setValue(Number number) {
        this.value = number.doubleValue();
    }

    public MutableDouble(Number number) {
        this.value = number.doubleValue();
    }

    public MutableDouble(String str) {
        this.value = Double.parseDouble(str);
    }
}
