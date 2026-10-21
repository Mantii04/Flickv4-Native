package org.threeten.bp.format;

import b.c;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import org.threeten.bp.Period;
import org.threeten.bp.ZoneId;
import org.threeten.bp.chrono.Chronology;
import org.threeten.bp.chrono.IsoChronology;
import org.threeten.bp.format.DateTimeFormatterBuilder;
import org.threeten.bp.jdk8.DefaultInterfaceTemporalAccessor;
import org.threeten.bp.jdk8.Jdk8Methods;
import org.threeten.bp.temporal.TemporalField;
import org.threeten.bp.temporal.TemporalQueries;
import org.threeten.bp.temporal.TemporalQuery;
import org.threeten.bp.temporal.UnsupportedTemporalTypeException;

/* loaded from: classes2.dex */
final class DateTimeParseContext {
    private boolean caseSensitive;
    private Locale locale;
    private Chronology overrideChronology;
    private ZoneId overrideZone;
    private final ArrayList<Parsed> parsed;
    private boolean strict;
    private DecimalStyle symbols;

    public final class Parsed extends DefaultInterfaceTemporalAccessor {
        List<Object[]> callbacks;
        Chronology chrono;
        Period excessDays;
        final Map<TemporalField, Long> fieldValues;
        boolean leapSecond;
        ZoneId zone;

        public Parsed copy() {
            Parsed parsed = DateTimeParseContext.this.new Parsed();
            parsed.chrono = this.chrono;
            parsed.zone = this.zone;
            parsed.fieldValues.putAll(this.fieldValues);
            parsed.leapSecond = this.leapSecond;
            return parsed;
        }

        @Override // org.threeten.bp.jdk8.DefaultInterfaceTemporalAccessor, org.threeten.bp.temporal.TemporalAccessor
        public int get(TemporalField temporalField) {
            if (this.fieldValues.containsKey(temporalField)) {
                return Jdk8Methods.safeToInt(this.fieldValues.get(temporalField).longValue());
            }
            throw new UnsupportedTemporalTypeException(c.n("Unsupported field: ", temporalField));
        }

        @Override // org.threeten.bp.temporal.TemporalAccessor
        public long getLong(TemporalField temporalField) {
            if (this.fieldValues.containsKey(temporalField)) {
                return this.fieldValues.get(temporalField).longValue();
            }
            throw new UnsupportedTemporalTypeException(c.n("Unsupported field: ", temporalField));
        }

        @Override // org.threeten.bp.temporal.TemporalAccessor
        public boolean isSupported(TemporalField temporalField) {
            return this.fieldValues.containsKey(temporalField);
        }

        @Override // org.threeten.bp.jdk8.DefaultInterfaceTemporalAccessor, org.threeten.bp.temporal.TemporalAccessor
        public <R> R query(TemporalQuery<R> temporalQuery) {
            return temporalQuery == TemporalQueries.chronology() ? (R) this.chrono : (temporalQuery == TemporalQueries.zoneId() || temporalQuery == TemporalQueries.zone()) ? (R) this.zone : (R) super.query(temporalQuery);
        }

        public DateTimeBuilder toBuilder() {
            DateTimeBuilder dateTimeBuilder = new DateTimeBuilder();
            dateTimeBuilder.fieldValues.putAll(this.fieldValues);
            dateTimeBuilder.chrono = DateTimeParseContext.this.getEffectiveChronology();
            ZoneId zoneId = this.zone;
            if (zoneId != null) {
                dateTimeBuilder.zone = zoneId;
            } else {
                dateTimeBuilder.zone = DateTimeParseContext.this.overrideZone;
            }
            dateTimeBuilder.leapSecond = this.leapSecond;
            dateTimeBuilder.excessDays = this.excessDays;
            return dateTimeBuilder;
        }

        public String toString() {
            return this.fieldValues.toString() + "," + this.chrono + "," + this.zone;
        }

        private Parsed() {
            this.chrono = null;
            this.zone = null;
            this.fieldValues = new HashMap();
            this.excessDays = Period.ZERO;
        }
    }

    public DateTimeParseContext(DateTimeFormatter dateTimeFormatter) {
        this.caseSensitive = true;
        this.strict = true;
        ArrayList<Parsed> arrayList = new ArrayList<>();
        this.parsed = arrayList;
        this.locale = dateTimeFormatter.getLocale();
        this.symbols = dateTimeFormatter.getDecimalStyle();
        this.overrideChronology = dateTimeFormatter.getChronology();
        this.overrideZone = dateTimeFormatter.getZone();
        arrayList.add(new Parsed());
    }

    public static boolean charEqualsIgnoreCase(char c7, char c8) {
        return c7 == c8 || Character.toUpperCase(c7) == Character.toUpperCase(c8) || Character.toLowerCase(c7) == Character.toLowerCase(c8);
    }

    private Parsed currentParsed() {
        return (Parsed) c.h(1, this.parsed);
    }

    public void addChronologyChangedParser(DateTimeFormatterBuilder.ReducedPrinterParser reducedPrinterParser, long j7, int i2, int i7) {
        Parsed currentParsed = currentParsed();
        if (currentParsed.callbacks == null) {
            currentParsed.callbacks = new ArrayList(2);
        }
        currentParsed.callbacks.add(new Object[]{reducedPrinterParser, Long.valueOf(j7), Integer.valueOf(i2), Integer.valueOf(i7)});
    }

    public boolean charEquals(char c7, char c8) {
        return isCaseSensitive() ? c7 == c8 : charEqualsIgnoreCase(c7, c8);
    }

    public DateTimeParseContext copy() {
        return new DateTimeParseContext(this);
    }

    public void endOptional(boolean z6) {
        if (z6) {
            this.parsed.remove(r2.size() - 2);
        } else {
            this.parsed.remove(r2.size() - 1);
        }
    }

    public Chronology getEffectiveChronology() {
        Chronology chronology = currentParsed().chrono;
        if (chronology != null) {
            return chronology;
        }
        Chronology chronology2 = this.overrideChronology;
        return chronology2 == null ? IsoChronology.INSTANCE : chronology2;
    }

    public Locale getLocale() {
        return this.locale;
    }

    public Long getParsed(TemporalField temporalField) {
        return currentParsed().fieldValues.get(temporalField);
    }

    public DecimalStyle getSymbols() {
        return this.symbols;
    }

    public boolean isCaseSensitive() {
        return this.caseSensitive;
    }

    public boolean isStrict() {
        return this.strict;
    }

    public void setCaseSensitive(boolean z6) {
        this.caseSensitive = z6;
    }

    public void setLocale(Locale locale) {
        Jdk8Methods.requireNonNull(locale, "locale");
        this.locale = locale;
    }

    public void setParsed(Chronology chronology) {
        Jdk8Methods.requireNonNull(chronology, "chrono");
        Parsed currentParsed = currentParsed();
        currentParsed.chrono = chronology;
        if (currentParsed.callbacks != null) {
            ArrayList arrayList = new ArrayList(currentParsed.callbacks);
            currentParsed.callbacks.clear();
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                Object[] objArr = (Object[]) it.next();
                ((DateTimeFormatterBuilder.ReducedPrinterParser) objArr[0]).setValue(this, ((Long) objArr[1]).longValue(), ((Integer) objArr[2]).intValue(), ((Integer) objArr[3]).intValue());
            }
        }
    }

    public int setParsedField(TemporalField temporalField, long j7, int i2, int i7) {
        Jdk8Methods.requireNonNull(temporalField, "field");
        Long put = currentParsed().fieldValues.put(temporalField, Long.valueOf(j7));
        return (put == null || put.longValue() == j7) ? i7 : ~i2;
    }

    public void setParsedLeapSecond() {
        currentParsed().leapSecond = true;
    }

    public void setStrict(boolean z6) {
        this.strict = z6;
    }

    public void startOptional() {
        this.parsed.add(currentParsed().copy());
    }

    public boolean subSequenceEquals(CharSequence charSequence, int i2, CharSequence charSequence2, int i7, int i8) {
        if (i2 + i8 > charSequence.length() || i7 + i8 > charSequence2.length()) {
            return false;
        }
        if (isCaseSensitive()) {
            for (int i9 = 0; i9 < i8; i9++) {
                if (charSequence.charAt(i2 + i9) != charSequence2.charAt(i7 + i9)) {
                    return false;
                }
            }
            return true;
        }
        for (int i10 = 0; i10 < i8; i10++) {
            char charAt = charSequence.charAt(i2 + i10);
            char charAt2 = charSequence2.charAt(i7 + i10);
            if (charAt != charAt2 && Character.toUpperCase(charAt) != Character.toUpperCase(charAt2) && Character.toLowerCase(charAt) != Character.toLowerCase(charAt2)) {
                return false;
            }
        }
        return true;
    }

    public Parsed toParsed() {
        return currentParsed();
    }

    public String toString() {
        return currentParsed().toString();
    }

    public DateTimeParseContext(Locale locale, DecimalStyle decimalStyle, Chronology chronology) {
        this.caseSensitive = true;
        this.strict = true;
        ArrayList<Parsed> arrayList = new ArrayList<>();
        this.parsed = arrayList;
        this.locale = locale;
        this.symbols = decimalStyle;
        this.overrideChronology = chronology;
        this.overrideZone = null;
        arrayList.add(new Parsed());
    }

    public void setParsed(ZoneId zoneId) {
        Jdk8Methods.requireNonNull(zoneId, "zone");
        currentParsed().zone = zoneId;
    }

    public DateTimeParseContext(DateTimeParseContext dateTimeParseContext) {
        this.caseSensitive = true;
        this.strict = true;
        ArrayList<Parsed> arrayList = new ArrayList<>();
        this.parsed = arrayList;
        this.locale = dateTimeParseContext.locale;
        this.symbols = dateTimeParseContext.symbols;
        this.overrideChronology = dateTimeParseContext.overrideChronology;
        this.overrideZone = dateTimeParseContext.overrideZone;
        this.caseSensitive = dateTimeParseContext.caseSensitive;
        this.strict = dateTimeParseContext.strict;
        arrayList.add(new Parsed());
    }
}
