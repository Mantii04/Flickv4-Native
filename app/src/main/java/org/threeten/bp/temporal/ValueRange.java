package org.threeten.bp.temporal;

import com.fasterxml.jackson.core.JsonPointer;
import java.io.Serializable;
import org.threeten.bp.DateTimeException;

/* loaded from: classes2.dex */
public final class ValueRange implements Serializable {
    private static final long serialVersionUID = -7317881728594519368L;
    private final long maxLargest;
    private final long maxSmallest;
    private final long minLargest;
    private final long minSmallest;

    private ValueRange(long j7, long j8, long j9, long j10) {
        this.minSmallest = j7;
        this.minLargest = j8;
        this.maxSmallest = j9;
        this.maxLargest = j10;
    }

    public static ValueRange of(long j7, long j8) {
        if (j7 <= j8) {
            return new ValueRange(j7, j7, j8, j8);
        }
        throw new IllegalArgumentException("Minimum value must be less than maximum value");
    }

    public int checkValidIntValue(long j7, TemporalField temporalField) {
        if (isValidIntValue(j7)) {
            return (int) j7;
        }
        throw new DateTimeException("Invalid int value for " + temporalField + ": " + j7);
    }

    public long checkValidValue(long j7, TemporalField temporalField) {
        if (isValidValue(j7)) {
            return j7;
        }
        if (temporalField == null) {
            throw new DateTimeException("Invalid value (valid values " + this + "): " + j7);
        }
        throw new DateTimeException("Invalid value for " + temporalField + " (valid values " + this + "): " + j7);
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof ValueRange) {
            ValueRange valueRange = (ValueRange) obj;
            if (this.minSmallest == valueRange.minSmallest && this.minLargest == valueRange.minLargest && this.maxSmallest == valueRange.maxSmallest && this.maxLargest == valueRange.maxLargest) {
                return true;
            }
        }
        return false;
    }

    public long getLargestMinimum() {
        return this.minLargest;
    }

    public long getMaximum() {
        return this.maxLargest;
    }

    public long getMinimum() {
        return this.minSmallest;
    }

    public long getSmallestMaximum() {
        return this.maxSmallest;
    }

    public int hashCode() {
        long j7 = this.minSmallest;
        long j8 = this.minLargest;
        long j9 = (j7 + j8) << ((int) (j8 + 16));
        long j10 = this.maxSmallest;
        long j11 = (j9 >> ((int) (j10 + 48))) << ((int) (j10 + 32));
        long j12 = this.maxLargest;
        long j13 = ((j11 >> ((int) (32 + j12))) << ((int) (j12 + 48))) >> 16;
        return (int) (j13 ^ (j13 >>> 32));
    }

    public boolean isFixed() {
        return this.minSmallest == this.minLargest && this.maxSmallest == this.maxLargest;
    }

    public boolean isIntValue() {
        return getMinimum() >= -2147483648L && getMaximum() <= 2147483647L;
    }

    public boolean isValidIntValue(long j7) {
        return isIntValue() && isValidValue(j7);
    }

    public boolean isValidValue(long j7) {
        return j7 >= getMinimum() && j7 <= getMaximum();
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(this.minSmallest);
        if (this.minSmallest != this.minLargest) {
            sb.append(JsonPointer.SEPARATOR);
            sb.append(this.minLargest);
        }
        sb.append(" - ");
        sb.append(this.maxSmallest);
        if (this.maxSmallest != this.maxLargest) {
            sb.append(JsonPointer.SEPARATOR);
            sb.append(this.maxLargest);
        }
        return sb.toString();
    }

    public static ValueRange of(long j7, long j8, long j9) {
        return of(j7, j7, j8, j9);
    }

    public static ValueRange of(long j7, long j8, long j9, long j10) {
        if (j7 > j8) {
            throw new IllegalArgumentException("Smallest minimum value must be less than largest minimum value");
        }
        if (j9 > j10) {
            throw new IllegalArgumentException("Smallest maximum value must be less than largest maximum value");
        }
        if (j8 <= j10) {
            return new ValueRange(j7, j8, j9, j10);
        }
        throw new IllegalArgumentException("Minimum value must be less than maximum value");
    }
}
