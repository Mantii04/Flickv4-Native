package org.threeten.bp;

import b.c;
import java.io.DataOutput;
import java.io.IOException;
import java.io.Serializable;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import java.util.TimeZone;
import org.apache.commons.lang3.time.TimeZones;
import org.threeten.bp.format.DateTimeFormatterBuilder;
import org.threeten.bp.format.TextStyle;
import org.threeten.bp.jdk8.DefaultInterfaceTemporalAccessor;
import org.threeten.bp.jdk8.Jdk8Methods;
import org.threeten.bp.temporal.TemporalAccessor;
import org.threeten.bp.temporal.TemporalField;
import org.threeten.bp.temporal.TemporalQueries;
import org.threeten.bp.temporal.TemporalQuery;
import org.threeten.bp.temporal.UnsupportedTemporalTypeException;
import org.threeten.bp.zone.ZoneRules;
import org.threeten.bp.zone.ZoneRulesException;
import org.threeten.bp.zone.ZoneRulesProvider;

/* loaded from: classes2.dex */
public abstract class ZoneId implements Serializable {
    public static final TemporalQuery<ZoneId> FROM = new TemporalQuery<ZoneId>() { // from class: org.threeten.bp.ZoneId.1
        @Override // org.threeten.bp.temporal.TemporalQuery
        public ZoneId queryFrom(TemporalAccessor temporalAccessor) {
            return ZoneId.from(temporalAccessor);
        }
    };
    public static final Map<String, String> SHORT_IDS;
    private static final long serialVersionUID = 8352817235686L;

    static {
        HashMap q6 = c.q("ACT", "Australia/Darwin", "AET", "Australia/Sydney");
        q6.put("AGT", "America/Argentina/Buenos_Aires");
        q6.put("ART", "Africa/Cairo");
        q6.put("AST", "America/Anchorage");
        q6.put("BET", "America/Sao_Paulo");
        q6.put("BST", "Asia/Dhaka");
        q6.put("CAT", "Africa/Harare");
        q6.put("CNT", "America/St_Johns");
        q6.put("CST", "America/Chicago");
        q6.put("CTT", "Asia/Shanghai");
        q6.put("EAT", "Africa/Addis_Ababa");
        q6.put("ECT", "Europe/Paris");
        q6.put("IET", "America/Indiana/Indianapolis");
        q6.put("IST", "Asia/Kolkata");
        q6.put("JST", "Asia/Tokyo");
        q6.put("MIT", "Pacific/Apia");
        q6.put("NET", "Asia/Yerevan");
        q6.put("NST", "Pacific/Auckland");
        q6.put("PLT", "Asia/Karachi");
        q6.put("PNT", "America/Phoenix");
        q6.put("PRT", "America/Puerto_Rico");
        q6.put("PST", "America/Los_Angeles");
        q6.put("SST", "Pacific/Guadalcanal");
        q6.put("VST", "Asia/Ho_Chi_Minh");
        q6.put("EST", "-05:00");
        q6.put("MST", "-07:00");
        q6.put("HST", "-10:00");
        SHORT_IDS = Collections.unmodifiableMap(q6);
    }

    public ZoneId() {
        if (getClass() != ZoneOffset.class && getClass() != ZoneRegion.class) {
            throw new AssertionError("Invalid subclass");
        }
    }

    public static ZoneId from(TemporalAccessor temporalAccessor) {
        ZoneId zoneId = (ZoneId) temporalAccessor.query(TemporalQueries.zone());
        if (zoneId != null) {
            return zoneId;
        }
        throw new DateTimeException("Unable to obtain ZoneId from TemporalAccessor: " + temporalAccessor + ", type " + temporalAccessor.getClass().getName());
    }

    public static Set<String> getAvailableZoneIds() {
        return new HashSet(ZoneRulesProvider.getAvailableZoneIds());
    }

    public static ZoneId of(String str, Map<String, String> map) {
        Jdk8Methods.requireNonNull(str, "zoneId");
        Jdk8Methods.requireNonNull(map, "aliasMap");
        String str2 = map.get(str);
        if (str2 != null) {
            str = str2;
        }
        return of(str);
    }

    public static ZoneId ofOffset(String str, ZoneOffset zoneOffset) {
        Jdk8Methods.requireNonNull(str, "prefix");
        Jdk8Methods.requireNonNull(zoneOffset, "offset");
        if (str.length() == 0) {
            return zoneOffset;
        }
        if (!str.equals(TimeZones.GMT_ID) && !str.equals("UTC") && !str.equals("UT")) {
            throw new IllegalArgumentException("Invalid prefix, must be GMT, UTC or UT: ".concat(str));
        }
        if (zoneOffset.getTotalSeconds() == 0) {
            return new ZoneRegion(str, zoneOffset.getRules());
        }
        StringBuilder o6 = c.o(str);
        o6.append(zoneOffset.getId());
        return new ZoneRegion(o6.toString(), zoneOffset.getRules());
    }

    public static ZoneId systemDefault() {
        return of(TimeZone.getDefault().getID(), SHORT_IDS);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof ZoneId) {
            return getId().equals(((ZoneId) obj).getId());
        }
        return false;
    }

    public String getDisplayName(TextStyle textStyle, Locale locale) {
        return new DateTimeFormatterBuilder().appendZoneText(textStyle).toFormatter(locale).format(new DefaultInterfaceTemporalAccessor() { // from class: org.threeten.bp.ZoneId.2
            @Override // org.threeten.bp.temporal.TemporalAccessor
            public long getLong(TemporalField temporalField) {
                throw new UnsupportedTemporalTypeException(c.n("Unsupported field: ", temporalField));
            }

            @Override // org.threeten.bp.temporal.TemporalAccessor
            public boolean isSupported(TemporalField temporalField) {
                return false;
            }

            @Override // org.threeten.bp.jdk8.DefaultInterfaceTemporalAccessor, org.threeten.bp.temporal.TemporalAccessor
            public <R> R query(TemporalQuery<R> temporalQuery) {
                return temporalQuery == TemporalQueries.zoneId() ? (R) ZoneId.this : (R) super.query(temporalQuery);
            }
        });
    }

    public abstract String getId();

    public abstract ZoneRules getRules();

    public int hashCode() {
        return getId().hashCode();
    }

    public ZoneId normalized() {
        try {
            ZoneRules rules = getRules();
            if (rules.isFixedOffset()) {
                return rules.getOffset(Instant.EPOCH);
            }
        } catch (ZoneRulesException unused) {
        }
        return this;
    }

    public String toString() {
        return getId();
    }

    public abstract void write(DataOutput dataOutput) throws IOException;

    public static ZoneId of(String str) {
        Jdk8Methods.requireNonNull(str, "zoneId");
        if (str.equals("Z")) {
            return ZoneOffset.UTC;
        }
        if (str.length() != 1) {
            if (!str.startsWith("+") && !str.startsWith("-")) {
                if (!str.equals("UTC") && !str.equals(TimeZones.GMT_ID) && !str.equals("UT")) {
                    if (!str.startsWith("UTC+") && !str.startsWith("GMT+") && !str.startsWith("UTC-") && !str.startsWith("GMT-")) {
                        if (!str.startsWith("UT+") && !str.startsWith("UT-")) {
                            return ZoneRegion.ofId(str, true);
                        }
                        ZoneOffset of = ZoneOffset.of(str.substring(2));
                        if (of.getTotalSeconds() == 0) {
                            return new ZoneRegion("UT", of.getRules());
                        }
                        return new ZoneRegion("UT" + of.getId(), of.getRules());
                    }
                    ZoneOffset of2 = ZoneOffset.of(str.substring(3));
                    if (of2.getTotalSeconds() == 0) {
                        return new ZoneRegion(str.substring(0, 3), of2.getRules());
                    }
                    return new ZoneRegion(str.substring(0, 3) + of2.getId(), of2.getRules());
                }
                return new ZoneRegion(str, ZoneOffset.UTC.getRules());
            }
            return ZoneOffset.of(str);
        }
        throw new DateTimeException("Invalid zone: ".concat(str));
    }
}
