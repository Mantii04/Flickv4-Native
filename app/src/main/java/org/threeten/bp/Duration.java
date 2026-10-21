package org.threeten.bp;

import A.i;
import androidx.media3.common.C;
import androidx.media3.common.MimeTypes;
import java.io.DataInput;
import java.io.DataOutput;
import java.io.IOException;
import java.io.InvalidObjectException;
import java.io.ObjectStreamException;
import java.io.Serializable;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.math.RoundingMode;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.apache.commons.lang3.ClassUtils;
import org.threeten.bp.format.DateTimeParseException;
import org.threeten.bp.jdk8.Jdk8Methods;
import org.threeten.bp.temporal.ChronoField;
import org.threeten.bp.temporal.ChronoUnit;
import org.threeten.bp.temporal.Temporal;
import org.threeten.bp.temporal.TemporalAmount;
import org.threeten.bp.temporal.TemporalUnit;
import org.threeten.bp.temporal.UnsupportedTemporalTypeException;

/* loaded from: classes2.dex */
public final class Duration implements TemporalAmount, Comparable<Duration>, Serializable {
    private static final int NANOS_PER_MILLI = 1000000;
    private static final int NANOS_PER_SECOND = 1000000000;
    private static final long serialVersionUID = 3078945930695997490L;
    private final int nanos;
    private final long seconds;
    public static final Duration ZERO = new Duration(0, 0);
    private static final BigInteger BI_NANOS_PER_SECOND = BigInteger.valueOf(C.NANOS_PER_SECOND);
    private static final Pattern PATTERN = Pattern.compile("([-+]?)P(?:([-+]?[0-9]+)D)?(T(?:([-+]?[0-9]+)H)?(?:([-+]?[0-9]+)M)?(?:([-+]?[0-9]+)(?:[.,]([0-9]{0,9}))?S)?)?", 2);

    /* renamed from: org.threeten.bp.Duration$1, reason: invalid class name */
    public static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$org$threeten$bp$temporal$ChronoUnit;

        static {
            int[] iArr = new int[ChronoUnit.values().length];
            $SwitchMap$org$threeten$bp$temporal$ChronoUnit = iArr;
            try {
                iArr[ChronoUnit.NANOS.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$org$threeten$bp$temporal$ChronoUnit[ChronoUnit.MICROS.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$org$threeten$bp$temporal$ChronoUnit[ChronoUnit.MILLIS.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$org$threeten$bp$temporal$ChronoUnit[ChronoUnit.SECONDS.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    private Duration(long j7, int i2) {
        this.seconds = j7;
        this.nanos = i2;
    }

    public static Duration between(Temporal temporal, Temporal temporal2) {
        ChronoUnit chronoUnit = ChronoUnit.SECONDS;
        long until = temporal.until(temporal2, chronoUnit);
        ChronoField chronoField = ChronoField.NANO_OF_SECOND;
        long j7 = 0;
        if (temporal.isSupported(chronoField) && temporal2.isSupported(chronoField)) {
            try {
                long j8 = temporal.getLong(chronoField);
                long j9 = temporal2.getLong(chronoField) - j8;
                if (until > 0 && j9 < 0) {
                    j9 += C.NANOS_PER_SECOND;
                } else if (until < 0 && j9 > 0) {
                    j9 -= C.NANOS_PER_SECOND;
                } else if (until == 0 && j9 != 0) {
                    try {
                        until = temporal.until(temporal2.with(chronoField, j8), chronoUnit);
                    } catch (ArithmeticException | DateTimeException unused) {
                    }
                }
                j7 = j9;
            } catch (ArithmeticException | DateTimeException unused2) {
            }
        }
        return ofSeconds(until, j7);
    }

    private static Duration create(boolean z6, long j7, long j8, long j9, long j10, int i2) {
        long safeAdd = Jdk8Methods.safeAdd(j7, Jdk8Methods.safeAdd(j8, Jdk8Methods.safeAdd(j9, j10)));
        return z6 ? ofSeconds(safeAdd, i2).negated() : ofSeconds(safeAdd, i2);
    }

    public static Duration from(TemporalAmount temporalAmount) {
        Jdk8Methods.requireNonNull(temporalAmount, "amount");
        Duration duration = ZERO;
        for (TemporalUnit temporalUnit : temporalAmount.getUnits()) {
            duration = duration.plus(temporalAmount.get(temporalUnit), temporalUnit);
        }
        return duration;
    }

    public static Duration of(long j7, TemporalUnit temporalUnit) {
        return ZERO.plus(j7, temporalUnit);
    }

    public static Duration ofDays(long j7) {
        return create(Jdk8Methods.safeMultiply(j7, 86400), 0);
    }

    public static Duration ofHours(long j7) {
        return create(Jdk8Methods.safeMultiply(j7, 3600), 0);
    }

    public static Duration ofMillis(long j7) {
        long j8 = j7 / 1000;
        int i2 = (int) (j7 % 1000);
        if (i2 < 0) {
            i2 += 1000;
            j8--;
        }
        return create(j8, i2 * 1000000);
    }

    public static Duration ofMinutes(long j7) {
        return create(Jdk8Methods.safeMultiply(j7, 60), 0);
    }

    public static Duration ofNanos(long j7) {
        long j8 = j7 / C.NANOS_PER_SECOND;
        int i2 = (int) (j7 % C.NANOS_PER_SECOND);
        if (i2 < 0) {
            i2 += 1000000000;
            j8--;
        }
        return create(j8, i2);
    }

    public static Duration ofSeconds(long j7) {
        return create(j7, 0);
    }

    public static Duration parse(CharSequence charSequence) {
        Jdk8Methods.requireNonNull(charSequence, MimeTypes.BASE_TYPE_TEXT);
        Matcher matcher = PATTERN.matcher(charSequence);
        if (matcher.matches() && !"T".equals(matcher.group(3))) {
            int i2 = 1;
            boolean equals = "-".equals(matcher.group(1));
            String group = matcher.group(2);
            String group2 = matcher.group(4);
            String group3 = matcher.group(5);
            String group4 = matcher.group(6);
            String group5 = matcher.group(7);
            if (group != null || group2 != null || group3 != null || group4 != null) {
                long parseNumber = parseNumber(charSequence, group, 86400, "days");
                long parseNumber2 = parseNumber(charSequence, group2, 3600, "hours");
                long parseNumber3 = parseNumber(charSequence, group3, 60, "minutes");
                long parseNumber4 = parseNumber(charSequence, group4, 1, "seconds");
                if (group4 != null && group4.charAt(0) == '-') {
                    i2 = -1;
                }
                try {
                    return create(equals, parseNumber, parseNumber2, parseNumber3, parseNumber4, parseFraction(charSequence, group5, i2));
                } catch (ArithmeticException e3) {
                    throw ((DateTimeParseException) new DateTimeParseException("Text cannot be parsed to a Duration: overflow", charSequence, 0).initCause(e3));
                }
            }
        }
        throw new DateTimeParseException("Text cannot be parsed to a Duration", charSequence, 0);
    }

    private static int parseFraction(CharSequence charSequence, String str, int i2) {
        if (str == null || str.length() == 0) {
            return 0;
        }
        try {
            return Integer.parseInt(str.concat("000000000").substring(0, 9)) * i2;
        } catch (ArithmeticException e3) {
            throw ((DateTimeParseException) new DateTimeParseException("Text cannot be parsed to a Duration: fraction", charSequence, 0).initCause(e3));
        } catch (NumberFormatException e7) {
            throw ((DateTimeParseException) new DateTimeParseException("Text cannot be parsed to a Duration: fraction", charSequence, 0).initCause(e7));
        }
    }

    private static long parseNumber(CharSequence charSequence, String str, int i2, String str2) {
        if (str == null) {
            return 0L;
        }
        try {
            if (str.startsWith("+")) {
                str = str.substring(1);
            }
            return Jdk8Methods.safeMultiply(Long.parseLong(str), i2);
        } catch (ArithmeticException e3) {
            throw ((DateTimeParseException) new DateTimeParseException(i.k("Text cannot be parsed to a Duration: ", str2), charSequence, 0).initCause(e3));
        } catch (NumberFormatException e7) {
            throw ((DateTimeParseException) new DateTimeParseException(i.k("Text cannot be parsed to a Duration: ", str2), charSequence, 0).initCause(e7));
        }
    }

    public static Duration readExternal(DataInput dataInput) throws IOException {
        return ofSeconds(dataInput.readLong(), dataInput.readInt());
    }

    private Object readResolve() throws ObjectStreamException {
        throw new InvalidObjectException("Deserialization via serialization delegate");
    }

    private BigDecimal toSeconds() {
        return BigDecimal.valueOf(this.seconds).add(BigDecimal.valueOf(this.nanos, 9));
    }

    private Object writeReplace() {
        return new Ser((byte) 1, this);
    }

    public Duration abs() {
        return isNegative() ? negated() : this;
    }

    @Override // org.threeten.bp.temporal.TemporalAmount
    public Temporal addTo(Temporal temporal) {
        long j7 = this.seconds;
        if (j7 != 0) {
            temporal = temporal.plus(j7, ChronoUnit.SECONDS);
        }
        int i2 = this.nanos;
        return i2 != 0 ? temporal.plus(i2, ChronoUnit.NANOS) : temporal;
    }

    public Duration dividedBy(long j7) {
        if (j7 != 0) {
            return j7 == 1 ? this : create(toSeconds().divide(BigDecimal.valueOf(j7), RoundingMode.DOWN));
        }
        throw new ArithmeticException("Cannot divide by zero");
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof Duration) {
            Duration duration = (Duration) obj;
            if (this.seconds == duration.seconds && this.nanos == duration.nanos) {
                return true;
            }
        }
        return false;
    }

    @Override // org.threeten.bp.temporal.TemporalAmount
    public long get(TemporalUnit temporalUnit) {
        if (temporalUnit == ChronoUnit.SECONDS) {
            return this.seconds;
        }
        if (temporalUnit == ChronoUnit.NANOS) {
            return this.nanos;
        }
        throw new UnsupportedTemporalTypeException("Unsupported unit: " + temporalUnit);
    }

    public int getNano() {
        return this.nanos;
    }

    public long getSeconds() {
        return this.seconds;
    }

    @Override // org.threeten.bp.temporal.TemporalAmount
    public List<TemporalUnit> getUnits() {
        return Collections.unmodifiableList(Arrays.asList(ChronoUnit.SECONDS, ChronoUnit.NANOS));
    }

    public int hashCode() {
        long j7 = this.seconds;
        return (this.nanos * 51) + ((int) (j7 ^ (j7 >>> 32)));
    }

    public boolean isNegative() {
        return this.seconds < 0;
    }

    public boolean isZero() {
        return (this.seconds | ((long) this.nanos)) == 0;
    }

    public Duration minus(Duration duration) {
        long seconds = duration.getSeconds();
        int nano = duration.getNano();
        return seconds == Long.MIN_VALUE ? plus(Long.MAX_VALUE, -nano).plus(1L, 0L) : plus(-seconds, -nano);
    }

    public Duration minusDays(long j7) {
        return j7 == Long.MIN_VALUE ? plusDays(Long.MAX_VALUE).plusDays(1L) : plusDays(-j7);
    }

    public Duration minusHours(long j7) {
        return j7 == Long.MIN_VALUE ? plusHours(Long.MAX_VALUE).plusHours(1L) : plusHours(-j7);
    }

    public Duration minusMillis(long j7) {
        return j7 == Long.MIN_VALUE ? plusMillis(Long.MAX_VALUE).plusMillis(1L) : plusMillis(-j7);
    }

    public Duration minusMinutes(long j7) {
        return j7 == Long.MIN_VALUE ? plusMinutes(Long.MAX_VALUE).plusMinutes(1L) : plusMinutes(-j7);
    }

    public Duration minusNanos(long j7) {
        return j7 == Long.MIN_VALUE ? plusNanos(Long.MAX_VALUE).plusNanos(1L) : plusNanos(-j7);
    }

    public Duration minusSeconds(long j7) {
        return j7 == Long.MIN_VALUE ? plusSeconds(Long.MAX_VALUE).plusSeconds(1L) : plusSeconds(-j7);
    }

    public Duration multipliedBy(long j7) {
        return j7 == 0 ? ZERO : j7 == 1 ? this : create(toSeconds().multiply(BigDecimal.valueOf(j7)));
    }

    public Duration negated() {
        return multipliedBy(-1L);
    }

    public Duration plus(Duration duration) {
        return plus(duration.getSeconds(), duration.getNano());
    }

    public Duration plusDays(long j7) {
        return plus(Jdk8Methods.safeMultiply(j7, 86400), 0L);
    }

    public Duration plusHours(long j7) {
        return plus(Jdk8Methods.safeMultiply(j7, 3600), 0L);
    }

    public Duration plusMillis(long j7) {
        return plus(j7 / 1000, (j7 % 1000) * 1000000);
    }

    public Duration plusMinutes(long j7) {
        return plus(Jdk8Methods.safeMultiply(j7, 60), 0L);
    }

    public Duration plusNanos(long j7) {
        return plus(0L, j7);
    }

    public Duration plusSeconds(long j7) {
        return plus(j7, 0L);
    }

    @Override // org.threeten.bp.temporal.TemporalAmount
    public Temporal subtractFrom(Temporal temporal) {
        long j7 = this.seconds;
        if (j7 != 0) {
            temporal = temporal.minus(j7, ChronoUnit.SECONDS);
        }
        int i2 = this.nanos;
        return i2 != 0 ? temporal.minus(i2, ChronoUnit.NANOS) : temporal;
    }

    public long toDays() {
        return this.seconds / 86400;
    }

    public long toDaysPart() {
        return this.seconds / 86400;
    }

    public long toHours() {
        return this.seconds / 3600;
    }

    public int toHoursPart() {
        return (int) (toHours() % 24);
    }

    public long toMillis() {
        return Jdk8Methods.safeAdd(Jdk8Methods.safeMultiply(this.seconds, 1000), this.nanos / 1000000);
    }

    public int toMillisPart() {
        return this.nanos / 1000000;
    }

    public long toMinutes() {
        return this.seconds / 60;
    }

    public int toMinutesPart() {
        return (int) (toMinutes() % 60);
    }

    public long toNanos() {
        return Jdk8Methods.safeAdd(Jdk8Methods.safeMultiply(this.seconds, 1000000000), this.nanos);
    }

    public int toNanosPart() {
        return this.nanos;
    }

    public int toSecondsPart() {
        return (int) (this.seconds % 60);
    }

    public String toString() {
        if (this == ZERO) {
            return "PT0S";
        }
        long j7 = this.seconds;
        long j8 = j7 / 3600;
        int i2 = (int) ((j7 % 3600) / 60);
        int i7 = (int) (j7 % 60);
        StringBuilder sb = new StringBuilder(24);
        sb.append("PT");
        if (j8 != 0) {
            sb.append(j8);
            sb.append('H');
        }
        if (i2 != 0) {
            sb.append(i2);
            sb.append('M');
        }
        if (i7 == 0 && this.nanos == 0 && sb.length() > 2) {
            return sb.toString();
        }
        if (i7 >= 0 || this.nanos <= 0) {
            sb.append(i7);
        } else if (i7 == -1) {
            sb.append("-0");
        } else {
            sb.append(i7 + 1);
        }
        if (this.nanos > 0) {
            int length = sb.length();
            if (i7 < 0) {
                sb.append(2000000000 - this.nanos);
            } else {
                sb.append(this.nanos + 1000000000);
            }
            while (sb.charAt(sb.length() - 1) == '0') {
                sb.setLength(sb.length() - 1);
            }
            sb.setCharAt(length, ClassUtils.PACKAGE_SEPARATOR_CHAR);
        }
        sb.append('S');
        return sb.toString();
    }

    public Duration withNanos(int i2) {
        ChronoField.NANO_OF_SECOND.checkValidIntValue(i2);
        return create(this.seconds, i2);
    }

    public Duration withSeconds(long j7) {
        return create(j7, this.nanos);
    }

    public void writeExternal(DataOutput dataOutput) throws IOException {
        dataOutput.writeLong(this.seconds);
        dataOutput.writeInt(this.nanos);
    }

    public static Duration ofSeconds(long j7, long j8) {
        return create(Jdk8Methods.safeAdd(j7, Jdk8Methods.floorDiv(j8, C.NANOS_PER_SECOND)), Jdk8Methods.floorMod(j8, 1000000000));
    }

    @Override // java.lang.Comparable
    public int compareTo(Duration duration) {
        int compareLongs = Jdk8Methods.compareLongs(this.seconds, duration.seconds);
        return compareLongs != 0 ? compareLongs : this.nanos - duration.nanos;
    }

    public Duration plus(long j7, TemporalUnit temporalUnit) {
        Jdk8Methods.requireNonNull(temporalUnit, "unit");
        if (temporalUnit == ChronoUnit.DAYS) {
            return plus(Jdk8Methods.safeMultiply(j7, 86400), 0L);
        }
        if (temporalUnit.isDurationEstimated()) {
            throw new DateTimeException("Unit must not have an estimated duration");
        }
        if (j7 == 0) {
            return this;
        }
        if (temporalUnit instanceof ChronoUnit) {
            int i2 = AnonymousClass1.$SwitchMap$org$threeten$bp$temporal$ChronoUnit[((ChronoUnit) temporalUnit).ordinal()];
            return i2 != 1 ? i2 != 2 ? i2 != 3 ? i2 != 4 ? plusSeconds(Jdk8Methods.safeMultiply(temporalUnit.getDuration().seconds, j7)) : plusSeconds(j7) : plusMillis(j7) : plusSeconds((j7 / C.NANOS_PER_SECOND) * 1000).plusNanos((j7 % C.NANOS_PER_SECOND) * 1000) : plusNanos(j7);
        }
        return plusSeconds(temporalUnit.getDuration().multipliedBy(j7).getSeconds()).plusNanos(r7.getNano());
    }

    private static Duration create(long j7, int i2) {
        if ((i2 | j7) == 0) {
            return ZERO;
        }
        return new Duration(j7, i2);
    }

    public Duration minus(long j7, TemporalUnit temporalUnit) {
        return j7 == Long.MIN_VALUE ? plus(Long.MAX_VALUE, temporalUnit).plus(1L, temporalUnit) : plus(-j7, temporalUnit);
    }

    private static Duration create(BigDecimal bigDecimal) {
        BigInteger bigIntegerExact = bigDecimal.movePointRight(9).toBigIntegerExact();
        BigInteger[] divideAndRemainder = bigIntegerExact.divideAndRemainder(BI_NANOS_PER_SECOND);
        if (divideAndRemainder[0].bitLength() <= 63) {
            return ofSeconds(divideAndRemainder[0].longValue(), divideAndRemainder[1].intValue());
        }
        throw new ArithmeticException("Exceeds capacity of Duration: " + bigIntegerExact);
    }

    private Duration plus(long j7, long j8) {
        if ((j7 | j8) == 0) {
            return this;
        }
        return ofSeconds(Jdk8Methods.safeAdd(Jdk8Methods.safeAdd(this.seconds, j7), j8 / C.NANOS_PER_SECOND), this.nanos + (j8 % C.NANOS_PER_SECOND));
    }
}
