package org.apache.commons.lang3.time;

import A.i;
import androidx.media3.exoplayer.upstream.CmcdData;
import java.util.Calendar;
import java.util.Date;
import java.util.GregorianCalendar;
import java.util.TimeZone;
import org.apache.commons.lang3.StringUtils;
import org.apache.commons.lang3.Validate;

/* loaded from: classes2.dex */
public class DurationFormatUtils {
    public static final String ISO_EXTENDED_FORMAT_PATTERN = "'P'yyyy'Y'M'M'd'DT'H'H'm'M's.SSS'S'";

    /* renamed from: y, reason: collision with root package name */
    static final Object f19173y = "y";

    /* renamed from: M, reason: collision with root package name */
    static final Object f19168M = "M";

    /* renamed from: d, reason: collision with root package name */
    static final Object f19170d = "d";

    /* renamed from: H, reason: collision with root package name */
    static final Object f19167H = "H";

    /* renamed from: m, reason: collision with root package name */
    static final Object f19171m = CmcdData.OBJECT_TYPE_MANIFEST;

    /* renamed from: s, reason: collision with root package name */
    static final Object f19172s = CmcdData.STREAMING_FORMAT_SS;

    /* renamed from: S, reason: collision with root package name */
    static final Object f19169S = "S";

    public static String format(Token[] tokenArr, long j7, long j8, long j9, long j10, long j11, long j12, long j13, boolean z6) {
        int i2;
        int i7;
        Token[] tokenArr2 = tokenArr;
        StringBuilder sb = new StringBuilder();
        int i8 = 0;
        boolean z7 = false;
        for (int length = tokenArr2.length; i8 < length; length = i7) {
            Token token = tokenArr2[i8];
            Object value = token.getValue();
            int count = token.getCount();
            if (value instanceof StringBuilder) {
                sb.append(value.toString());
                i7 = length;
                i2 = i8;
            } else {
                if (value.equals(f19173y)) {
                    sb.append(paddedValue(j7, z6, count));
                } else if (value.equals(f19168M)) {
                    sb.append(paddedValue(j8, z6, count));
                } else if (value.equals(f19170d)) {
                    i2 = i8;
                    sb.append(paddedValue(j9, z6, count));
                    i7 = length;
                    z7 = false;
                } else {
                    i2 = i8;
                    if (value.equals(f19167H)) {
                        i7 = length;
                        sb.append(paddedValue(j10, z6, count));
                    } else {
                        i7 = length;
                        if (value.equals(f19171m)) {
                            sb.append(paddedValue(j11, z6, count));
                        } else {
                            if (value.equals(f19172s)) {
                                sb.append(paddedValue(j12, z6, count));
                                z7 = true;
                            } else if (value.equals(f19169S)) {
                                if (z7) {
                                    sb.append(paddedValue(j13, true, z6 ? Math.max(3, count) : 3));
                                } else {
                                    sb.append(paddedValue(j13, z6, count));
                                }
                                z7 = false;
                            }
                            i8 = i2 + 1;
                            tokenArr2 = tokenArr;
                        }
                    }
                    z7 = false;
                    i8 = i2 + 1;
                    tokenArr2 = tokenArr;
                }
                i7 = length;
                i2 = i8;
                z7 = false;
            }
            i8 = i2 + 1;
            tokenArr2 = tokenArr;
        }
        return sb.toString();
    }

    public static String formatDuration(long j7, String str) {
        return formatDuration(j7, str, true);
    }

    public static String formatDurationHMS(long j7) {
        return formatDuration(j7, "HH:mm:ss.SSS");
    }

    public static String formatDurationISO(long j7) {
        return formatDuration(j7, ISO_EXTENDED_FORMAT_PATTERN, false);
    }

    public static String formatDurationWords(long j7, boolean z6, boolean z7) {
        String formatDuration = formatDuration(j7, "d' days 'H' hours 'm' minutes 's' seconds'");
        if (z6) {
            formatDuration = i.k(StringUtils.SPACE, formatDuration);
            String replaceOnce = StringUtils.replaceOnce(formatDuration, " 0 days", "");
            if (replaceOnce.length() != formatDuration.length()) {
                String replaceOnce2 = StringUtils.replaceOnce(replaceOnce, " 0 hours", "");
                if (replaceOnce2.length() != replaceOnce.length()) {
                    formatDuration = StringUtils.replaceOnce(replaceOnce2, " 0 minutes", "");
                    if (formatDuration.length() != formatDuration.length()) {
                        formatDuration = StringUtils.replaceOnce(formatDuration, " 0 seconds", "");
                    }
                } else {
                    formatDuration = replaceOnce;
                }
            }
            if (!formatDuration.isEmpty()) {
                formatDuration = formatDuration.substring(1);
            }
        }
        if (z7) {
            String replaceOnce3 = StringUtils.replaceOnce(formatDuration, " 0 seconds", "");
            if (replaceOnce3.length() != formatDuration.length()) {
                formatDuration = StringUtils.replaceOnce(replaceOnce3, " 0 minutes", "");
                if (formatDuration.length() != replaceOnce3.length()) {
                    String replaceOnce4 = StringUtils.replaceOnce(formatDuration, " 0 hours", "");
                    if (replaceOnce4.length() != formatDuration.length()) {
                        formatDuration = StringUtils.replaceOnce(replaceOnce4, " 0 days", "");
                    }
                } else {
                    formatDuration = replaceOnce3;
                }
            }
        }
        return StringUtils.replaceOnce(StringUtils.replaceOnce(StringUtils.replaceOnce(StringUtils.replaceOnce(StringUtils.SPACE + formatDuration, " 1 seconds", " 1 second"), " 1 minutes", " 1 minute"), " 1 hours", " 1 hour"), " 1 days", " 1 day").trim();
    }

    public static String formatPeriod(long j7, long j8, String str) {
        return formatPeriod(j7, j8, str, true, TimeZone.getDefault());
    }

    public static String formatPeriodISO(long j7, long j8) {
        return formatPeriod(j7, j8, ISO_EXTENDED_FORMAT_PATTERN, false, TimeZone.getDefault());
    }

    /* JADX WARN: Removed duplicated region for block: B:30:0x0082  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x009b A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static org.apache.commons.lang3.time.DurationFormatUtils.Token[] lexx(java.lang.String r9) {
        /*
            java.util.ArrayList r0 = new java.util.ArrayList
            int r1 = r9.length()
            r0.<init>(r1)
            r1 = 0
            r2 = 0
            r3 = r1
            r4 = r3
            r5 = r2
            r6 = r5
        Lf:
            int r7 = r9.length()
            if (r3 >= r7) goto L9f
            char r7 = r9.charAt(r3)
            r8 = 39
            if (r4 == 0) goto L24
            if (r7 == r8) goto L24
            r5.append(r7)
            goto L9b
        L24:
            if (r7 == r8) goto L6b
            r8 = 72
            if (r7 == r8) goto L68
            r8 = 77
            if (r7 == r8) goto L65
            r8 = 83
            if (r7 == r8) goto L62
            r8 = 100
            if (r7 == r8) goto L5f
            r8 = 109(0x6d, float:1.53E-43)
            if (r7 == r8) goto L5c
            r8 = 115(0x73, float:1.61E-43)
            if (r7 == r8) goto L59
            r8 = 121(0x79, float:1.7E-43)
            if (r7 == r8) goto L56
            if (r5 != 0) goto L51
            java.lang.StringBuilder r5 = new java.lang.StringBuilder
            r5.<init>()
            org.apache.commons.lang3.time.DurationFormatUtils$Token r8 = new org.apache.commons.lang3.time.DurationFormatUtils$Token
            r8.<init>(r5)
            r0.add(r8)
        L51:
            r5.append(r7)
        L54:
            r7 = r2
            goto L80
        L56:
            java.lang.Object r7 = org.apache.commons.lang3.time.DurationFormatUtils.f19173y
            goto L80
        L59:
            java.lang.Object r7 = org.apache.commons.lang3.time.DurationFormatUtils.f19172s
            goto L80
        L5c:
            java.lang.Object r7 = org.apache.commons.lang3.time.DurationFormatUtils.f19171m
            goto L80
        L5f:
            java.lang.Object r7 = org.apache.commons.lang3.time.DurationFormatUtils.f19170d
            goto L80
        L62:
            java.lang.Object r7 = org.apache.commons.lang3.time.DurationFormatUtils.f19169S
            goto L80
        L65:
            java.lang.Object r7 = org.apache.commons.lang3.time.DurationFormatUtils.f19168M
            goto L80
        L68:
            java.lang.Object r7 = org.apache.commons.lang3.time.DurationFormatUtils.f19167H
            goto L80
        L6b:
            if (r4 == 0) goto L71
            r4 = r1
            r5 = r2
            r7 = r5
            goto L80
        L71:
            java.lang.StringBuilder r5 = new java.lang.StringBuilder
            r5.<init>()
            org.apache.commons.lang3.time.DurationFormatUtils$Token r4 = new org.apache.commons.lang3.time.DurationFormatUtils$Token
            r4.<init>(r5)
            r0.add(r4)
            r4 = 1
            goto L54
        L80:
            if (r7 == 0) goto L9b
            if (r6 == 0) goto L92
            java.lang.Object r5 = r6.getValue()
            boolean r5 = r5.equals(r7)
            if (r5 == 0) goto L92
            r6.increment()
            goto L9a
        L92:
            org.apache.commons.lang3.time.DurationFormatUtils$Token r6 = new org.apache.commons.lang3.time.DurationFormatUtils$Token
            r6.<init>(r7)
            r0.add(r6)
        L9a:
            r5 = r2
        L9b:
            int r3 = r3 + 1
            goto Lf
        L9f:
            if (r4 != 0) goto Lae
            int r9 = r0.size()
            org.apache.commons.lang3.time.DurationFormatUtils$Token[] r9 = new org.apache.commons.lang3.time.DurationFormatUtils.Token[r9]
            java.lang.Object[] r9 = r0.toArray(r9)
            org.apache.commons.lang3.time.DurationFormatUtils$Token[] r9 = (org.apache.commons.lang3.time.DurationFormatUtils.Token[]) r9
            return r9
        Lae:
            java.lang.IllegalArgumentException r0 = new java.lang.IllegalArgumentException
            java.lang.String r1 = "Unmatched quote in format: "
            java.lang.String r9 = r1.concat(r9)
            r0.<init>(r9)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: org.apache.commons.lang3.time.DurationFormatUtils.lexx(java.lang.String):org.apache.commons.lang3.time.DurationFormatUtils$Token[]");
    }

    private static String paddedValue(long j7, boolean z6, int i2) {
        String l7 = Long.toString(j7);
        return z6 ? StringUtils.leftPad(l7, i2, '0') : l7;
    }

    public static String formatDuration(long j7, String str, boolean z6) {
        long j8;
        long j9;
        long j10;
        long j11;
        long j12;
        Validate.inclusiveBetween(0L, Long.MAX_VALUE, j7, "durationMillis must not be negative");
        Token[] lexx = lexx(str);
        if (Token.containsTokenWithValue(lexx, f19170d)) {
            j9 = j7 / DateUtils.MILLIS_PER_DAY;
            j8 = j7 - (DateUtils.MILLIS_PER_DAY * j9);
        } else {
            j8 = j7;
            j9 = 0;
        }
        if (Token.containsTokenWithValue(lexx, f19167H)) {
            long j13 = j8 / DateUtils.MILLIS_PER_HOUR;
            j8 -= DateUtils.MILLIS_PER_HOUR * j13;
            j10 = j13;
        } else {
            j10 = 0;
        }
        if (Token.containsTokenWithValue(lexx, f19171m)) {
            long j14 = j8 / 60000;
            j8 -= 60000 * j14;
            j11 = j14;
        } else {
            j11 = 0;
        }
        if (Token.containsTokenWithValue(lexx, f19172s)) {
            j12 = j8 / 1000;
            j8 -= 1000 * j12;
        } else {
            j12 = 0;
        }
        return format(lexx, 0L, 0L, j9, j10, j11, j12, j8, z6);
    }

    public static String formatPeriod(long j7, long j8, String str, boolean z6, TimeZone timeZone) {
        int i2 = 0;
        Validate.isTrue(j7 <= j8, "startMillis must not be greater than endMillis", new Object[0]);
        Token[] lexx = lexx(str);
        Calendar calendar = Calendar.getInstance(timeZone);
        calendar.setTime(new Date(j7));
        Calendar calendar2 = Calendar.getInstance(timeZone);
        calendar2.setTime(new Date(j8));
        int i7 = calendar2.get(14) - calendar.get(14);
        int i8 = calendar2.get(13) - calendar.get(13);
        int i9 = calendar2.get(12) - calendar.get(12);
        int i10 = calendar2.get(11) - calendar.get(11);
        int i11 = calendar2.get(5) - calendar.get(5);
        int i12 = calendar2.get(2) - calendar.get(2);
        int i13 = calendar2.get(1) - calendar.get(1);
        while (i7 < 0) {
            i7 += 1000;
            i8--;
        }
        while (i8 < 0) {
            i8 += 60;
            i9--;
        }
        while (i9 < 0) {
            i9 += 60;
            i10--;
        }
        while (i10 < 0) {
            i10 += 24;
            i11--;
        }
        if (Token.containsTokenWithValue(lexx, f19168M)) {
            while (i11 < 0) {
                i11 += calendar.getActualMaximum(5);
                i12--;
                calendar.add(2, 1);
            }
            while (i12 < 0) {
                i12 += 12;
                i13--;
            }
            if (!Token.containsTokenWithValue(lexx, f19173y) && i13 != 0) {
                while (i13 != 0) {
                    i12 += i13 * 12;
                    i13 = 0;
                }
            }
        } else {
            if (!Token.containsTokenWithValue(lexx, f19173y)) {
                int i14 = calendar2.get(1);
                if (i12 < 0) {
                    i14--;
                }
                while (calendar.get(1) != i14) {
                    int actualMaximum = (calendar.getActualMaximum(6) - calendar.get(6)) + i11;
                    if ((calendar instanceof GregorianCalendar) && calendar.get(2) == 1 && calendar.get(5) == 29) {
                        actualMaximum++;
                    }
                    calendar.add(1, 1);
                    i11 = calendar.get(6) + actualMaximum;
                }
                i13 = 0;
            }
            while (calendar.get(2) != calendar2.get(2)) {
                i11 += calendar.getActualMaximum(5);
                calendar.add(2, 1);
            }
            i12 = 0;
            while (i11 < 0) {
                i11 += calendar.getActualMaximum(5);
                i12--;
                calendar.add(2, 1);
            }
        }
        if (!Token.containsTokenWithValue(lexx, f19170d)) {
            i10 += i11 * 24;
            i11 = 0;
        }
        if (!Token.containsTokenWithValue(lexx, f19167H)) {
            i9 += i10 * 60;
            i10 = 0;
        }
        if (!Token.containsTokenWithValue(lexx, f19171m)) {
            i8 += i9 * 60;
            i9 = 0;
        }
        if (Token.containsTokenWithValue(lexx, f19172s)) {
            i2 = i8;
        } else {
            i7 += i8 * 1000;
        }
        return format(lexx, i13, i12, i11, i10, i9, i2, i7, z6);
    }

    public static class Token {
        private int count;
        private final Object value;

        public Token(Object obj) {
            this.value = obj;
            this.count = 1;
        }

        public static boolean containsTokenWithValue(Token[] tokenArr, Object obj) {
            for (Token token : tokenArr) {
                if (token.getValue() == obj) {
                    return true;
                }
            }
            return false;
        }

        public boolean equals(Object obj) {
            if (obj instanceof Token) {
                Token token = (Token) obj;
                if (this.value.getClass() != token.value.getClass() || this.count != token.count) {
                    return false;
                }
                Object obj2 = this.value;
                if (obj2 instanceof StringBuilder) {
                    return obj2.toString().equals(token.value.toString());
                }
                if (obj2 instanceof Number) {
                    return obj2.equals(token.value);
                }
                if (obj2 == token.value) {
                    return true;
                }
            }
            return false;
        }

        public int getCount() {
            return this.count;
        }

        public Object getValue() {
            return this.value;
        }

        public int hashCode() {
            return this.value.hashCode();
        }

        public void increment() {
            this.count++;
        }

        public String toString() {
            return StringUtils.repeat(this.value.toString(), this.count);
        }

        public Token(Object obj, int i2) {
            this.value = obj;
            this.count = i2;
        }
    }
}
