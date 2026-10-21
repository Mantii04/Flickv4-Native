package org.apache.commons.lang3;

import java.io.Serializable;
import java.util.Comparator;

/* loaded from: classes2.dex */
public final class Range<T> implements Serializable {
    private static final long serialVersionUID = 1;
    private final Comparator<T> comparator;
    private transient int hashCode;
    private final T maximum;
    private final T minimum;
    private transient String toString;

    public enum ComparableComparator implements Comparator {
        INSTANCE;

        @Override // java.util.Comparator
        public int compare(Object obj, Object obj2) {
            return ((Comparable) obj).compareTo(obj2);
        }
    }

    private Range(T t6, T t7, Comparator<T> comparator) {
        if (t6 == null || t7 == null) {
            throw new IllegalArgumentException("Elements in a range must not be null: element1=" + t6 + ", element2=" + t7);
        }
        if (comparator == null) {
            this.comparator = ComparableComparator.INSTANCE;
        } else {
            this.comparator = comparator;
        }
        if (this.comparator.compare(t6, t7) < 1) {
            this.minimum = t6;
            this.maximum = t7;
        } else {
            this.minimum = t7;
            this.maximum = t6;
        }
    }

    /* JADX WARN: Incorrect types in method signature: <T::Ljava/lang/Comparable<TT;>;>(TT;TT;)Lorg/apache/commons/lang3/Range<TT;>; */
    public static Range between(Comparable comparable, Comparable comparable2) {
        return between(comparable, comparable2, null);
    }

    /* JADX WARN: Incorrect types in method signature: <T::Ljava/lang/Comparable<TT;>;>(TT;)Lorg/apache/commons/lang3/Range<TT;>; */
    public static Range is(Comparable comparable) {
        return between(comparable, comparable, null);
    }

    public boolean contains(T t6) {
        return t6 != null && this.comparator.compare(t6, this.minimum) > -1 && this.comparator.compare(t6, this.maximum) < 1;
    }

    public boolean containsRange(Range<T> range) {
        return range != null && contains(range.minimum) && contains(range.maximum);
    }

    public int elementCompareTo(T t6) {
        Validate.notNull(t6, "Element is null", new Object[0]);
        if (isAfter(t6)) {
            return -1;
        }
        return isBefore(t6) ? 1 : 0;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj != null && obj.getClass() == Range.class) {
            Range range = (Range) obj;
            if (this.minimum.equals(range.minimum) && this.maximum.equals(range.maximum)) {
                return true;
            }
        }
        return false;
    }

    public Comparator<T> getComparator() {
        return this.comparator;
    }

    public T getMaximum() {
        return this.maximum;
    }

    public T getMinimum() {
        return this.minimum;
    }

    public int hashCode() {
        int i2 = this.hashCode;
        if (i2 != 0) {
            return i2;
        }
        int hashCode = this.maximum.hashCode() + ((this.minimum.hashCode() + ((Range.class.hashCode() + 629) * 37)) * 37);
        this.hashCode = hashCode;
        return hashCode;
    }

    public Range<T> intersectionWith(Range<T> range) {
        if (isOverlappedBy(range)) {
            if (equals(range)) {
                return this;
            }
            return between(getComparator().compare(this.minimum, range.minimum) < 0 ? range.minimum : this.minimum, getComparator().compare(this.maximum, range.maximum) < 0 ? this.maximum : range.maximum, getComparator());
        }
        throw new IllegalArgumentException("Cannot calculate intersection with non-overlapping range " + range);
    }

    public boolean isAfter(T t6) {
        return t6 != null && this.comparator.compare(t6, this.minimum) < 0;
    }

    public boolean isAfterRange(Range<T> range) {
        if (range == null) {
            return false;
        }
        return isAfter(range.maximum);
    }

    public boolean isBefore(T t6) {
        return t6 != null && this.comparator.compare(t6, this.maximum) > 0;
    }

    public boolean isBeforeRange(Range<T> range) {
        if (range == null) {
            return false;
        }
        return isBefore(range.minimum);
    }

    public boolean isEndedBy(T t6) {
        return t6 != null && this.comparator.compare(t6, this.maximum) == 0;
    }

    public boolean isNaturalOrdering() {
        return this.comparator == ComparableComparator.INSTANCE;
    }

    public boolean isOverlappedBy(Range<T> range) {
        if (range == null) {
            return false;
        }
        return range.contains(this.minimum) || range.contains(this.maximum) || contains(range.minimum);
    }

    public boolean isStartedBy(T t6) {
        return t6 != null && this.comparator.compare(t6, this.minimum) == 0;
    }

    public String toString() {
        if (this.toString == null) {
            this.toString = "[" + this.minimum + ".." + this.maximum + "]";
        }
        return this.toString;
    }

    public static <T> Range<T> between(T t6, T t7, Comparator<T> comparator) {
        return new Range<>(t6, t7, comparator);
    }

    public static <T> Range<T> is(T t6, Comparator<T> comparator) {
        return between(t6, t6, comparator);
    }

    public String toString(String str) {
        return String.format(str, this.minimum, this.maximum, this.comparator);
    }
}
