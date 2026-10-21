package org.threeten.bp.zone;

import b.c;
import cz.msebera.android.httpclient.message.TokenParser;
import java.io.DataInput;
import java.io.DataOutput;
import java.io.IOException;
import java.io.Serializable;
import org.apache.commons.lang3.StringUtils;
import org.threeten.bp.DayOfWeek;
import org.threeten.bp.LocalDate;
import org.threeten.bp.LocalDateTime;
import org.threeten.bp.LocalTime;
import org.threeten.bp.Month;
import org.threeten.bp.ZoneOffset;
import org.threeten.bp.chrono.IsoChronology;
import org.threeten.bp.jdk8.Jdk8Methods;
import org.threeten.bp.temporal.TemporalAdjusters;

/* loaded from: classes2.dex */
public final class ZoneOffsetTransitionRule implements Serializable {
    private static final int SECS_PER_DAY = 86400;
    private static final long serialVersionUID = 6889046316657758795L;
    private final int adjustDays;
    private final byte dom;
    private final DayOfWeek dow;
    private final Month month;
    private final ZoneOffset offsetAfter;
    private final ZoneOffset offsetBefore;
    private final ZoneOffset standardOffset;
    private final LocalTime time;
    private final TimeDefinition timeDefinition;

    /* renamed from: org.threeten.bp.zone.ZoneOffsetTransitionRule$1, reason: invalid class name */
    public static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$org$threeten$bp$zone$ZoneOffsetTransitionRule$TimeDefinition;

        static {
            int[] iArr = new int[TimeDefinition.values().length];
            $SwitchMap$org$threeten$bp$zone$ZoneOffsetTransitionRule$TimeDefinition = iArr;
            try {
                iArr[TimeDefinition.UTC.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$org$threeten$bp$zone$ZoneOffsetTransitionRule$TimeDefinition[TimeDefinition.STANDARD.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    public enum TimeDefinition {
        UTC,
        WALL,
        STANDARD;

        public LocalDateTime createDateTime(LocalDateTime localDateTime, ZoneOffset zoneOffset, ZoneOffset zoneOffset2) {
            int i2 = AnonymousClass1.$SwitchMap$org$threeten$bp$zone$ZoneOffsetTransitionRule$TimeDefinition[ordinal()];
            return i2 != 1 ? i2 != 2 ? localDateTime : localDateTime.plusSeconds(zoneOffset2.getTotalSeconds() - zoneOffset.getTotalSeconds()) : localDateTime.plusSeconds(zoneOffset2.getTotalSeconds() - ZoneOffset.UTC.getTotalSeconds());
        }
    }

    public ZoneOffsetTransitionRule(Month month, int i2, DayOfWeek dayOfWeek, LocalTime localTime, int i7, TimeDefinition timeDefinition, ZoneOffset zoneOffset, ZoneOffset zoneOffset2, ZoneOffset zoneOffset3) {
        this.month = month;
        this.dom = (byte) i2;
        this.dow = dayOfWeek;
        this.time = localTime;
        this.adjustDays = i7;
        this.timeDefinition = timeDefinition;
        this.standardOffset = zoneOffset;
        this.offsetBefore = zoneOffset2;
        this.offsetAfter = zoneOffset3;
    }

    private void appendZeroPad(StringBuilder sb, long j7) {
        if (j7 < 10) {
            sb.append(0);
        }
        sb.append(j7);
    }

    public static ZoneOffsetTransitionRule of(Month month, int i2, DayOfWeek dayOfWeek, LocalTime localTime, boolean z6, TimeDefinition timeDefinition, ZoneOffset zoneOffset, ZoneOffset zoneOffset2, ZoneOffset zoneOffset3) {
        Jdk8Methods.requireNonNull(month, "month");
        Jdk8Methods.requireNonNull(localTime, "time");
        Jdk8Methods.requireNonNull(timeDefinition, "timeDefnition");
        Jdk8Methods.requireNonNull(zoneOffset, "standardOffset");
        Jdk8Methods.requireNonNull(zoneOffset2, "offsetBefore");
        Jdk8Methods.requireNonNull(zoneOffset3, "offsetAfter");
        if (i2 < -28 || i2 > 31 || i2 == 0) {
            throw new IllegalArgumentException("Day of month indicator must be between -28 and 31 inclusive excluding zero");
        }
        if (!z6 || localTime.equals(LocalTime.MIDNIGHT)) {
            return new ZoneOffsetTransitionRule(month, i2, dayOfWeek, localTime, z6 ? 1 : 0, timeDefinition, zoneOffset, zoneOffset2, zoneOffset3);
        }
        throw new IllegalArgumentException("Time must be midnight when end of day flag is true");
    }

    public static ZoneOffsetTransitionRule readExternal(DataInput dataInput) throws IOException {
        int readInt = dataInput.readInt();
        Month of = Month.of(readInt >>> 28);
        int i2 = ((264241152 & readInt) >>> 22) - 32;
        int i7 = (3670016 & readInt) >>> 19;
        DayOfWeek of2 = i7 == 0 ? null : DayOfWeek.of(i7);
        int i8 = (507904 & readInt) >>> 14;
        TimeDefinition timeDefinition = TimeDefinition.values()[(readInt & 12288) >>> 12];
        int i9 = (readInt & 4080) >>> 4;
        int i10 = (readInt & 12) >>> 2;
        int i11 = readInt & 3;
        int readInt2 = i8 == 31 ? dataInput.readInt() : i8 * 3600;
        ZoneOffset ofTotalSeconds = ZoneOffset.ofTotalSeconds(i9 == 255 ? dataInput.readInt() : (i9 - 128) * 900);
        ZoneOffset ofTotalSeconds2 = ZoneOffset.ofTotalSeconds(i10 == 3 ? dataInput.readInt() : (i10 * 1800) + ofTotalSeconds.getTotalSeconds());
        ZoneOffset ofTotalSeconds3 = i11 == 3 ? ZoneOffset.ofTotalSeconds(dataInput.readInt()) : ZoneOffset.ofTotalSeconds((i11 * 1800) + ofTotalSeconds.getTotalSeconds());
        if (i2 < -28 || i2 > 31 || i2 == 0) {
            throw new IllegalArgumentException("Day of month indicator must be between -28 and 31 inclusive excluding zero");
        }
        return new ZoneOffsetTransitionRule(of, i2, of2, LocalTime.ofSecondOfDay(Jdk8Methods.floorMod(readInt2, SECS_PER_DAY)), Jdk8Methods.floorDiv(readInt2, SECS_PER_DAY), timeDefinition, ofTotalSeconds, ofTotalSeconds2, ofTotalSeconds3);
    }

    private Object writeReplace() {
        return new Ser((byte) 3, this);
    }

    public ZoneOffsetTransition createTransition(int i2) {
        LocalDate of;
        byte b7 = this.dom;
        if (b7 < 0) {
            Month month = this.month;
            of = LocalDate.of(i2, month, month.length(IsoChronology.INSTANCE.isLeapYear(i2)) + 1 + this.dom);
            DayOfWeek dayOfWeek = this.dow;
            if (dayOfWeek != null) {
                of = of.with(TemporalAdjusters.previousOrSame(dayOfWeek));
            }
        } else {
            of = LocalDate.of(i2, this.month, b7);
            DayOfWeek dayOfWeek2 = this.dow;
            if (dayOfWeek2 != null) {
                of = of.with(TemporalAdjusters.nextOrSame(dayOfWeek2));
            }
        }
        return new ZoneOffsetTransition(this.timeDefinition.createDateTime(LocalDateTime.of(of.plusDays(this.adjustDays), this.time), this.standardOffset, this.offsetBefore), this.offsetBefore, this.offsetAfter);
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof ZoneOffsetTransitionRule) {
            ZoneOffsetTransitionRule zoneOffsetTransitionRule = (ZoneOffsetTransitionRule) obj;
            if (this.month == zoneOffsetTransitionRule.month && this.dom == zoneOffsetTransitionRule.dom && this.dow == zoneOffsetTransitionRule.dow && this.timeDefinition == zoneOffsetTransitionRule.timeDefinition && this.adjustDays == zoneOffsetTransitionRule.adjustDays && this.time.equals(zoneOffsetTransitionRule.time) && this.standardOffset.equals(zoneOffsetTransitionRule.standardOffset) && this.offsetBefore.equals(zoneOffsetTransitionRule.offsetBefore) && this.offsetAfter.equals(zoneOffsetTransitionRule.offsetAfter)) {
                return true;
            }
        }
        return false;
    }

    public int getDayOfMonthIndicator() {
        return this.dom;
    }

    public DayOfWeek getDayOfWeek() {
        return this.dow;
    }

    public LocalTime getLocalTime() {
        return this.time;
    }

    public Month getMonth() {
        return this.month;
    }

    public ZoneOffset getOffsetAfter() {
        return this.offsetAfter;
    }

    public ZoneOffset getOffsetBefore() {
        return this.offsetBefore;
    }

    public ZoneOffset getStandardOffset() {
        return this.standardOffset;
    }

    public TimeDefinition getTimeDefinition() {
        return this.timeDefinition;
    }

    public int hashCode() {
        int secondOfDay = ((this.time.toSecondOfDay() + this.adjustDays) << 15) + (this.month.ordinal() << 11) + ((this.dom + 32) << 5);
        DayOfWeek dayOfWeek = this.dow;
        return ((this.standardOffset.hashCode() ^ (this.timeDefinition.ordinal() + (secondOfDay + ((dayOfWeek == null ? 7 : dayOfWeek.ordinal()) << 2)))) ^ this.offsetBefore.hashCode()) ^ this.offsetAfter.hashCode();
    }

    public boolean isMidnightEndOfDay() {
        return this.adjustDays == 1 && this.time.equals(LocalTime.MIDNIGHT);
    }

    public String toString() {
        StringBuilder o6 = c.o("TransitionRule[");
        o6.append(this.offsetBefore.compareTo(this.offsetAfter) > 0 ? "Gap " : "Overlap ");
        o6.append(this.offsetBefore);
        o6.append(" to ");
        o6.append(this.offsetAfter);
        o6.append(", ");
        DayOfWeek dayOfWeek = this.dow;
        if (dayOfWeek != null) {
            byte b7 = this.dom;
            if (b7 == -1) {
                o6.append(dayOfWeek.name());
                o6.append(" on or before last day of ");
                o6.append(this.month.name());
            } else if (b7 < 0) {
                o6.append(dayOfWeek.name());
                o6.append(" on or before last day minus ");
                o6.append((-this.dom) - 1);
                o6.append(" of ");
                o6.append(this.month.name());
            } else {
                o6.append(dayOfWeek.name());
                o6.append(" on or after ");
                o6.append(this.month.name());
                o6.append(TokenParser.SP);
                o6.append((int) this.dom);
            }
        } else {
            o6.append(this.month.name());
            o6.append(TokenParser.SP);
            o6.append((int) this.dom);
        }
        o6.append(" at ");
        if (this.adjustDays == 0) {
            o6.append(this.time);
        } else {
            appendZeroPad(o6, Jdk8Methods.floorDiv((this.adjustDays * 1440) + (this.time.toSecondOfDay() / 60), 60L));
            o6.append(':');
            appendZeroPad(o6, Jdk8Methods.floorMod(r3, 60));
        }
        o6.append(StringUtils.SPACE);
        o6.append(this.timeDefinition);
        o6.append(", standard offset ");
        o6.append(this.standardOffset);
        o6.append(']');
        return o6.toString();
    }

    public void writeExternal(DataOutput dataOutput) throws IOException {
        int secondOfDay = (this.adjustDays * SECS_PER_DAY) + this.time.toSecondOfDay();
        int totalSeconds = this.standardOffset.getTotalSeconds();
        int totalSeconds2 = this.offsetBefore.getTotalSeconds() - totalSeconds;
        int totalSeconds3 = this.offsetAfter.getTotalSeconds() - totalSeconds;
        int hour = (secondOfDay % 3600 != 0 || secondOfDay > SECS_PER_DAY) ? 31 : secondOfDay == SECS_PER_DAY ? 24 : this.time.getHour();
        int i2 = totalSeconds % 900 == 0 ? (totalSeconds / 900) + 128 : 255;
        int i7 = (totalSeconds2 == 0 || totalSeconds2 == 1800 || totalSeconds2 == 3600) ? totalSeconds2 / 1800 : 3;
        int i8 = (totalSeconds3 == 0 || totalSeconds3 == 1800 || totalSeconds3 == 3600) ? totalSeconds3 / 1800 : 3;
        DayOfWeek dayOfWeek = this.dow;
        dataOutput.writeInt((this.month.getValue() << 28) + ((this.dom + 32) << 22) + ((dayOfWeek == null ? 0 : dayOfWeek.getValue()) << 19) + (hour << 14) + (this.timeDefinition.ordinal() << 12) + (i2 << 4) + (i7 << 2) + i8);
        if (hour == 31) {
            dataOutput.writeInt(secondOfDay);
        }
        if (i2 == 255) {
            dataOutput.writeInt(totalSeconds);
        }
        if (i7 == 3) {
            dataOutput.writeInt(this.offsetBefore.getTotalSeconds());
        }
        if (i8 == 3) {
            dataOutput.writeInt(this.offsetAfter.getTotalSeconds());
        }
    }
}
