package org.threeten.bp.zone;

import A.i;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.threeten.bp.DayOfWeek;
import org.threeten.bp.LocalDate;
import org.threeten.bp.LocalDateTime;
import org.threeten.bp.LocalTime;
import org.threeten.bp.Month;
import org.threeten.bp.Year;
import org.threeten.bp.ZoneOffset;
import org.threeten.bp.chrono.ChronoLocalDate;
import org.threeten.bp.chrono.IsoChronology;
import org.threeten.bp.jdk8.Jdk8Methods;
import org.threeten.bp.temporal.ChronoField;
import org.threeten.bp.temporal.TemporalAdjusters;
import org.threeten.bp.zone.ZoneOffsetTransitionRule;

/* loaded from: classes2.dex */
class ZoneRulesBuilder {
    private Map<Object, Object> deduplicateMap;
    private List<TZWindow> windowList = new ArrayList();

    public class TZRule implements Comparable<TZRule> {
        private int adjustDays;
        private int dayOfMonthIndicator;
        private DayOfWeek dayOfWeek;
        private Month month;
        private int savingAmountSecs;
        private LocalTime time;
        private ZoneOffsetTransitionRule.TimeDefinition timeDefinition;
        private int year;

        public TZRule(int i2, Month month, int i7, DayOfWeek dayOfWeek, LocalTime localTime, int i8, ZoneOffsetTransitionRule.TimeDefinition timeDefinition, int i9) {
            this.year = i2;
            this.month = month;
            this.dayOfMonthIndicator = i7;
            this.dayOfWeek = dayOfWeek;
            this.time = localTime;
            this.adjustDays = i8;
            this.timeDefinition = timeDefinition;
            this.savingAmountSecs = i9;
        }

        private LocalDate toLocalDate() {
            int i2 = this.dayOfMonthIndicator;
            if (i2 < 0) {
                LocalDate of = LocalDate.of(this.year, this.month, this.month.length(IsoChronology.INSTANCE.isLeapYear(this.year)) + 1 + this.dayOfMonthIndicator);
                DayOfWeek dayOfWeek = this.dayOfWeek;
                return dayOfWeek != null ? of.with(TemporalAdjusters.previousOrSame(dayOfWeek)) : of;
            }
            LocalDate of2 = LocalDate.of(this.year, this.month, i2);
            DayOfWeek dayOfWeek2 = this.dayOfWeek;
            return dayOfWeek2 != null ? of2.with(TemporalAdjusters.nextOrSame(dayOfWeek2)) : of2;
        }

        public ZoneOffsetTransition toTransition(ZoneOffset zoneOffset, int i2) {
            LocalDateTime localDateTime = (LocalDateTime) ZoneRulesBuilder.this.deduplicate(LocalDateTime.of(((LocalDate) ZoneRulesBuilder.this.deduplicate(toLocalDate())).plusDays(this.adjustDays), this.time));
            ZoneOffset zoneOffset2 = (ZoneOffset) ZoneRulesBuilder.this.deduplicate(ZoneOffset.ofTotalSeconds(zoneOffset.getTotalSeconds() + i2));
            return new ZoneOffsetTransition((LocalDateTime) ZoneRulesBuilder.this.deduplicate(this.timeDefinition.createDateTime(localDateTime, zoneOffset, zoneOffset2)), zoneOffset2, (ZoneOffset) ZoneRulesBuilder.this.deduplicate(ZoneOffset.ofTotalSeconds(zoneOffset.getTotalSeconds() + this.savingAmountSecs)));
        }

        public ZoneOffsetTransitionRule toTransitionRule(ZoneOffset zoneOffset, int i2) {
            Month month;
            if (this.dayOfMonthIndicator < 0 && (month = this.month) != Month.FEBRUARY) {
                this.dayOfMonthIndicator = month.maxLength() - 6;
            }
            ZoneOffsetTransition transition = toTransition(zoneOffset, i2);
            return new ZoneOffsetTransitionRule(this.month, this.dayOfMonthIndicator, this.dayOfWeek, this.time, this.adjustDays, this.timeDefinition, zoneOffset, transition.getOffsetBefore(), transition.getOffsetAfter());
        }

        @Override // java.lang.Comparable
        public int compareTo(TZRule tZRule) {
            int i2 = this.year - tZRule.year;
            if (i2 == 0) {
                i2 = this.month.compareTo(tZRule.month);
            }
            if (i2 == 0) {
                i2 = toLocalDate().compareTo((ChronoLocalDate) tZRule.toLocalDate());
            }
            if (i2 != 0) {
                return i2;
            }
            long secondOfDay = (this.adjustDays * 86400) + this.time.toSecondOfDay();
            long secondOfDay2 = (tZRule.adjustDays * 86400) + tZRule.time.toSecondOfDay();
            if (secondOfDay < secondOfDay2) {
                return -1;
            }
            return secondOfDay > secondOfDay2 ? 1 : 0;
        }
    }

    public class TZWindow {
        private Integer fixedSavingAmountSecs;
        private final ZoneOffset standardOffset;
        private final ZoneOffsetTransitionRule.TimeDefinition timeDefinition;
        private final LocalDateTime windowEnd;
        private List<TZRule> ruleList = new ArrayList();
        private int maxLastRuleStartYear = Year.MIN_VALUE;
        private List<TZRule> lastRuleList = new ArrayList();

        public TZWindow(ZoneOffset zoneOffset, LocalDateTime localDateTime, ZoneOffsetTransitionRule.TimeDefinition timeDefinition) {
            this.windowEnd = localDateTime;
            this.timeDefinition = timeDefinition;
            this.standardOffset = zoneOffset;
        }

        public void addRule(int i2, int i7, Month month, int i8, DayOfWeek dayOfWeek, LocalTime localTime, int i9, ZoneOffsetTransitionRule.TimeDefinition timeDefinition, int i10) {
            boolean z6;
            if (this.fixedSavingAmountSecs != null) {
                throw new IllegalStateException("Window has a fixed DST saving, so cannot have DST rules");
            }
            if (this.ruleList.size() >= 2000) {
                throw new IllegalStateException("Window has reached the maximum number of allowed rules");
            }
            if (i7 == 999999999) {
                z6 = true;
                i7 = i2;
            } else {
                z6 = false;
            }
            for (int i11 = i2; i11 <= i7; i11++) {
                TZRule tZRule = ZoneRulesBuilder.this.new TZRule(i11, month, i8, dayOfWeek, localTime, i9, timeDefinition, i10);
                if (z6) {
                    this.lastRuleList.add(tZRule);
                    this.maxLastRuleStartYear = Math.max(i2, this.maxLastRuleStartYear);
                } else {
                    this.ruleList.add(tZRule);
                }
            }
        }

        public long createDateTimeEpochSecond(int i2) {
            ZoneOffset createWallOffset = createWallOffset(i2);
            return this.timeDefinition.createDateTime(this.windowEnd, this.standardOffset, createWallOffset).toEpochSecond(createWallOffset);
        }

        public ZoneOffset createWallOffset(int i2) {
            return ZoneOffset.ofTotalSeconds(this.standardOffset.getTotalSeconds() + i2);
        }

        public boolean isSingleWindowStandardOffset() {
            return this.windowEnd.equals(LocalDateTime.MAX) && this.timeDefinition == ZoneOffsetTransitionRule.TimeDefinition.WALL && this.fixedSavingAmountSecs == null && this.lastRuleList.isEmpty() && this.ruleList.isEmpty();
        }

        public void setFixedSavings(int i2) {
            if (this.ruleList.size() > 0 || this.lastRuleList.size() > 0) {
                throw new IllegalStateException("Window has DST rules, so cannot have fixed savings");
            }
            this.fixedSavingAmountSecs = Integer.valueOf(i2);
        }

        public void tidy(int i2) {
            if (this.lastRuleList.size() == 1) {
                throw new IllegalStateException("Cannot have only one rule defined as being forever");
            }
            if (this.windowEnd.equals(LocalDateTime.MAX)) {
                this.maxLastRuleStartYear = Math.max(this.maxLastRuleStartYear, i2) + 1;
                for (TZRule tZRule : this.lastRuleList) {
                    addRule(tZRule.year, this.maxLastRuleStartYear, tZRule.month, tZRule.dayOfMonthIndicator, tZRule.dayOfWeek, tZRule.time, tZRule.adjustDays, tZRule.timeDefinition, tZRule.savingAmountSecs);
                    tZRule.year = this.maxLastRuleStartYear + 1;
                }
                int i7 = this.maxLastRuleStartYear;
                if (i7 == 999999999) {
                    this.lastRuleList.clear();
                } else {
                    this.maxLastRuleStartYear = i7 + 1;
                }
            } else {
                int year = this.windowEnd.getYear();
                for (TZRule tZRule2 : this.lastRuleList) {
                    addRule(tZRule2.year, year + 1, tZRule2.month, tZRule2.dayOfMonthIndicator, tZRule2.dayOfWeek, tZRule2.time, tZRule2.adjustDays, tZRule2.timeDefinition, tZRule2.savingAmountSecs);
                }
                this.lastRuleList.clear();
                this.maxLastRuleStartYear = Year.MAX_VALUE;
            }
            Collections.sort(this.ruleList);
            Collections.sort(this.lastRuleList);
            if (this.ruleList.size() == 0 && this.fixedSavingAmountSecs == null) {
                this.fixedSavingAmountSecs = 0;
            }
        }

        public void validateWindowOrder(TZWindow tZWindow) {
            if (this.windowEnd.isBefore(tZWindow.windowEnd)) {
                throw new IllegalStateException("Windows must be added in date-time order: " + this.windowEnd + " < " + tZWindow.windowEnd);
            }
        }
    }

    public ZoneRulesBuilder addRuleToWindow(LocalDateTime localDateTime, ZoneOffsetTransitionRule.TimeDefinition timeDefinition, int i2) {
        Jdk8Methods.requireNonNull(localDateTime, "transitionDateTime");
        return addRuleToWindow(localDateTime.getYear(), localDateTime.getYear(), localDateTime.getMonth(), localDateTime.getDayOfMonth(), (DayOfWeek) null, localDateTime.toLocalTime(), false, timeDefinition, i2);
    }

    public ZoneRulesBuilder addWindow(ZoneOffset zoneOffset, LocalDateTime localDateTime, ZoneOffsetTransitionRule.TimeDefinition timeDefinition) {
        Jdk8Methods.requireNonNull(zoneOffset, "standardOffset");
        Jdk8Methods.requireNonNull(localDateTime, "until");
        Jdk8Methods.requireNonNull(timeDefinition, "untilDefinition");
        TZWindow tZWindow = new TZWindow(zoneOffset, localDateTime, timeDefinition);
        if (this.windowList.size() > 0) {
            tZWindow.validateWindowOrder((TZWindow) i.c(1, this.windowList));
        }
        this.windowList.add(tZWindow);
        return this;
    }

    public ZoneRulesBuilder addWindowForever(ZoneOffset zoneOffset) {
        return addWindow(zoneOffset, LocalDateTime.MAX, ZoneOffsetTransitionRule.TimeDefinition.WALL);
    }

    public <T> T deduplicate(T t6) {
        if (!this.deduplicateMap.containsKey(t6)) {
            this.deduplicateMap.put(t6, t6);
        }
        return (T) this.deduplicateMap.get(t6);
    }

    public ZoneRulesBuilder setFixedSavingsToWindow(int i2) {
        if (this.windowList.isEmpty()) {
            throw new IllegalStateException("Must add a window before setting the fixed savings");
        }
        ((TZWindow) i.c(1, this.windowList)).setFixedSavings(i2);
        return this;
    }

    public ZoneRules toRules(String str) {
        return toRules(str, new HashMap());
    }

    public ZoneRules toRules(String str, Map<Object, Object> map) {
        TZWindow tZWindow;
        Jdk8Methods.requireNonNull(str, "zoneId");
        this.deduplicateMap = map;
        if (this.windowList.isEmpty()) {
            throw new IllegalStateException("No windows have been added to the builder");
        }
        ArrayList arrayList = new ArrayList(4);
        ArrayList arrayList2 = new ArrayList(256);
        ArrayList arrayList3 = new ArrayList(2);
        int i2 = 0;
        TZWindow tZWindow2 = this.windowList.get(0);
        ZoneOffset zoneOffset = tZWindow2.standardOffset;
        int intValue = tZWindow2.fixedSavingAmountSecs != null ? tZWindow2.fixedSavingAmountSecs.intValue() : 0;
        ZoneOffset zoneOffset2 = (ZoneOffset) deduplicate(ZoneOffset.ofTotalSeconds(zoneOffset.getTotalSeconds() + intValue));
        LocalDateTime localDateTime = (LocalDateTime) deduplicate(LocalDateTime.of(Year.MIN_VALUE, 1, 1, 0, 0));
        ZoneOffset zoneOffset3 = zoneOffset2;
        for (TZWindow tZWindow3 : this.windowList) {
            tZWindow3.tidy(localDateTime.getYear());
            Integer num = tZWindow3.fixedSavingAmountSecs;
            if (num == null) {
                num = Integer.valueOf(i2);
                for (TZRule tZRule : tZWindow3.ruleList) {
                    if (tZRule.toTransition(zoneOffset, intValue).toEpochSecond() > localDateTime.toEpochSecond(zoneOffset3)) {
                        break;
                    }
                    num = Integer.valueOf(tZRule.savingAmountSecs);
                }
            }
            if (!zoneOffset.equals(tZWindow3.standardOffset)) {
                arrayList.add(deduplicate(new ZoneOffsetTransition(LocalDateTime.ofEpochSecond(localDateTime.toEpochSecond(zoneOffset3), i2, zoneOffset), zoneOffset, tZWindow3.standardOffset)));
                zoneOffset = (ZoneOffset) deduplicate(tZWindow3.standardOffset);
            }
            ZoneOffset zoneOffset4 = (ZoneOffset) deduplicate(ZoneOffset.ofTotalSeconds(num.intValue() + zoneOffset.getTotalSeconds()));
            if (!zoneOffset3.equals(zoneOffset4)) {
                arrayList2.add((ZoneOffsetTransition) deduplicate(new ZoneOffsetTransition(localDateTime, zoneOffset3, zoneOffset4)));
            }
            intValue = num.intValue();
            for (TZRule tZRule2 : tZWindow3.ruleList) {
                ZoneOffsetTransition zoneOffsetTransition = (ZoneOffsetTransition) deduplicate(tZRule2.toTransition(zoneOffset, intValue));
                if (zoneOffsetTransition.toEpochSecond() >= localDateTime.toEpochSecond(zoneOffset3) && zoneOffsetTransition.toEpochSecond() < tZWindow3.createDateTimeEpochSecond(intValue)) {
                    tZWindow = tZWindow2;
                    if (!zoneOffsetTransition.getOffsetBefore().equals(zoneOffsetTransition.getOffsetAfter())) {
                        arrayList2.add(zoneOffsetTransition);
                        intValue = tZRule2.savingAmountSecs;
                    }
                } else {
                    tZWindow = tZWindow2;
                }
                tZWindow2 = tZWindow;
            }
            TZWindow tZWindow4 = tZWindow2;
            for (TZRule tZRule3 : tZWindow3.lastRuleList) {
                arrayList3.add((ZoneOffsetTransitionRule) deduplicate(tZRule3.toTransitionRule(zoneOffset, intValue)));
                intValue = tZRule3.savingAmountSecs;
            }
            zoneOffset3 = (ZoneOffset) deduplicate(tZWindow3.createWallOffset(intValue));
            i2 = 0;
            localDateTime = (LocalDateTime) deduplicate(LocalDateTime.ofEpochSecond(tZWindow3.createDateTimeEpochSecond(intValue), 0, zoneOffset3));
            tZWindow2 = tZWindow4;
        }
        return new StandardZoneRules(tZWindow2.standardOffset, zoneOffset2, arrayList, arrayList2, arrayList3);
    }

    public ZoneRulesBuilder addRuleToWindow(int i2, Month month, int i7, LocalTime localTime, boolean z6, ZoneOffsetTransitionRule.TimeDefinition timeDefinition, int i8) {
        return addRuleToWindow(i2, i2, month, i7, (DayOfWeek) null, localTime, z6, timeDefinition, i8);
    }

    public ZoneRulesBuilder addRuleToWindow(int i2, int i7, Month month, int i8, DayOfWeek dayOfWeek, LocalTime localTime, boolean z6, ZoneOffsetTransitionRule.TimeDefinition timeDefinition, int i9) {
        Jdk8Methods.requireNonNull(month, "month");
        Jdk8Methods.requireNonNull(localTime, "time");
        Jdk8Methods.requireNonNull(timeDefinition, "timeDefinition");
        ChronoField chronoField = ChronoField.YEAR;
        chronoField.checkValidValue(i2);
        chronoField.checkValidValue(i7);
        if (i8 >= -28 && i8 <= 31 && i8 != 0) {
            if (z6 && !localTime.equals(LocalTime.MIDNIGHT)) {
                throw new IllegalArgumentException("Time must be midnight when end of day flag is true");
            }
            if (!this.windowList.isEmpty()) {
                ((TZWindow) i.c(1, this.windowList)).addRule(i2, i7, month, i8, dayOfWeek, localTime, z6 ? 1 : 0, timeDefinition, i9);
                return this;
            }
            throw new IllegalStateException("Must add a window before adding a rule");
        }
        throw new IllegalArgumentException("Day of month indicator must be between -28 and 31 inclusive excluding zero");
    }

    public ZoneRulesBuilder addRuleToWindow(int i2, int i7, Month month, int i8, DayOfWeek dayOfWeek, LocalTime localTime, int i9, ZoneOffsetTransitionRule.TimeDefinition timeDefinition, int i10) {
        Jdk8Methods.requireNonNull(month, "month");
        Jdk8Methods.requireNonNull(timeDefinition, "timeDefinition");
        ChronoField chronoField = ChronoField.YEAR;
        chronoField.checkValidValue(i2);
        chronoField.checkValidValue(i7);
        if (i8 >= -28 && i8 <= 31 && i8 != 0) {
            if (!this.windowList.isEmpty()) {
                ((TZWindow) i.c(1, this.windowList)).addRule(i2, i7, month, i8, dayOfWeek, localTime, i9, timeDefinition, i10);
                return this;
            }
            throw new IllegalStateException("Must add a window before adding a rule");
        }
        throw new IllegalArgumentException("Day of month indicator must be between -28 and 31 inclusive excluding zero");
    }
}
