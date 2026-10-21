package Q5;

import androidx.media3.common.PlaybackException;
import androidx.media3.exoplayer.upstream.CmcdData;
import cz.msebera.android.httpclient.message.TokenParser;
import kotlin.jvm.internal.j;
import kotlin.text.StringsKt__StringsKt;
import kotlin.time.DurationUnit;
import okhttp3.internal.http2.Http2Connection;
import org.apache.commons.lang3.ClassUtils;

/* loaded from: classes2.dex */
public final class b implements Comparable {

    /* renamed from: e, reason: collision with root package name */
    public static final long f2994e;

    /* renamed from: f, reason: collision with root package name */
    public static final long f2995f;

    /* renamed from: j, reason: collision with root package name */
    public static final /* synthetic */ int f2996j = 0;

    /* renamed from: b, reason: collision with root package name */
    public final long f2997b;

    static {
        long m5constructorimpl;
        long m5constructorimpl2;
        new a(null);
        m5constructorimpl(0L);
        m5constructorimpl = m5constructorimpl((4611686018427387903L << 1) + 1);
        f2994e = m5constructorimpl;
        m5constructorimpl2 = m5constructorimpl(((-4611686018427387903L) << 1) + 1);
        f2995f = m5constructorimpl2;
    }

    public /* synthetic */ b(long j7) {
        this.f2997b = j7;
    }

    public static final void b(StringBuilder sb, int i2, int i7, int i8, String str) {
        sb.append(i2);
        if (i7 != 0) {
            sb.append(ClassUtils.PACKAGE_SEPARATOR_CHAR);
            String padStart = StringsKt__StringsKt.padStart(String.valueOf(i7), i8, '0');
            int i9 = -1;
            int length = padStart.length() - 1;
            if (length >= 0) {
                while (true) {
                    int i10 = length - 1;
                    if (padStart.charAt(length) != '0') {
                        i9 = length;
                        break;
                    } else if (i10 < 0) {
                        break;
                    } else {
                        length = i10;
                    }
                }
            }
            int i11 = i9 + 1;
            if (i11 < 3) {
                sb.append((CharSequence) padStart, 0, i11);
                j.checkNotNullExpressionValue(sb, "append(...)");
            } else {
                sb.append((CharSequence) padStart, 0, ((i9 + 3) / 3) * 3);
                j.checkNotNullExpressionValue(sb, "append(...)");
            }
        }
        sb.append(str);
    }

    /* renamed from: box-impl, reason: not valid java name */
    public static final /* synthetic */ b m3boximpl(long j7) {
        return new b(j7);
    }

    /* renamed from: constructor-impl, reason: not valid java name */
    public static long m5constructorimpl(long j7) {
        if (c.getDurationAssertionsEnabled()) {
            if ((((int) j7) & 1) == 0) {
                long j8 = j7 >> 1;
                if (-4611686018426999999L > j8 || j8 >= 4611686018427000000L) {
                    throw new AssertionError(j8 + " ns is out of nanoseconds range");
                }
            } else {
                long j9 = j7 >> 1;
                if (-4611686018427387903L > j9 || j9 >= 4611686018427387904L) {
                    throw new AssertionError(j9 + " ms is out of milliseconds range");
                }
                if (-4611686018426L <= j9 && j9 < 4611686018427L) {
                    throw new AssertionError(j9 + " ms is denormalized");
                }
            }
        }
        return j7;
    }

    /* renamed from: equals-impl, reason: not valid java name */
    public static boolean m6equalsimpl(long j7, Object obj) {
        return (obj instanceof b) && j7 == ((b) obj).m26unboximpl();
    }

    /* renamed from: getAbsoluteValue-UwyO8pc, reason: not valid java name */
    public static final long m7getAbsoluteValueUwyO8pc(long j7) {
        return m20isNegativeimpl(j7) ? m24unaryMinusUwyO8pc(j7) : j7;
    }

    /* renamed from: getHoursComponent-impl, reason: not valid java name */
    public static final int m8getHoursComponentimpl(long j7) {
        if (m19isInfiniteimpl(j7)) {
            return 0;
        }
        return (int) (m10getInWholeHoursimpl(j7) % 24);
    }

    /* renamed from: getInWholeDays-impl, reason: not valid java name */
    public static final long m9getInWholeDaysimpl(long j7) {
        return m22toLongimpl(j7, DurationUnit.f17474p);
    }

    /* renamed from: getInWholeHours-impl, reason: not valid java name */
    public static final long m10getInWholeHoursimpl(long j7) {
        return m22toLongimpl(j7, DurationUnit.f17473n);
    }

    /* renamed from: getInWholeMilliseconds-impl, reason: not valid java name */
    public static final long m11getInWholeMillisecondsimpl(long j7) {
        return ((((int) j7) & 1) == 1 && m18isFiniteimpl(j7)) ? j7 >> 1 : m22toLongimpl(j7, DurationUnit.f17470f);
    }

    /* renamed from: getInWholeMinutes-impl, reason: not valid java name */
    public static final long m12getInWholeMinutesimpl(long j7) {
        return m22toLongimpl(j7, DurationUnit.f17472m);
    }

    /* renamed from: getInWholeSeconds-impl, reason: not valid java name */
    public static final long m13getInWholeSecondsimpl(long j7) {
        return m22toLongimpl(j7, DurationUnit.f17471j);
    }

    /* renamed from: getMinutesComponent-impl, reason: not valid java name */
    public static final int m14getMinutesComponentimpl(long j7) {
        if (m19isInfiniteimpl(j7)) {
            return 0;
        }
        return (int) (m12getInWholeMinutesimpl(j7) % 60);
    }

    /* renamed from: getNanosecondsComponent-impl, reason: not valid java name */
    public static final int m15getNanosecondsComponentimpl(long j7) {
        if (m19isInfiniteimpl(j7)) {
            return 0;
        }
        return (int) ((((int) j7) & 1) == 1 ? d.access$millisToNanos((j7 >> 1) % 1000) : (j7 >> 1) % Http2Connection.DEGRADED_PONG_TIMEOUT_NS);
    }

    /* renamed from: getSecondsComponent-impl, reason: not valid java name */
    public static final int m16getSecondsComponentimpl(long j7) {
        if (m19isInfiniteimpl(j7)) {
            return 0;
        }
        return (int) (m13getInWholeSecondsimpl(j7) % 60);
    }

    /* renamed from: hashCode-impl, reason: not valid java name */
    public static int m17hashCodeimpl(long j7) {
        return (int) (j7 ^ (j7 >>> 32));
    }

    /* renamed from: isFinite-impl, reason: not valid java name */
    public static final boolean m18isFiniteimpl(long j7) {
        return !m19isInfiniteimpl(j7);
    }

    /* renamed from: isInfinite-impl, reason: not valid java name */
    public static final boolean m19isInfiniteimpl(long j7) {
        return j7 == f2994e || j7 == f2995f;
    }

    /* renamed from: isNegative-impl, reason: not valid java name */
    public static final boolean m20isNegativeimpl(long j7) {
        return j7 < 0;
    }

    /* renamed from: isPositive-impl, reason: not valid java name */
    public static final boolean m21isPositiveimpl(long j7) {
        return j7 > 0;
    }

    /* renamed from: toLong-impl, reason: not valid java name */
    public static final long m22toLongimpl(long j7, DurationUnit unit) {
        j.checkNotNullParameter(unit, "unit");
        if (j7 == f2994e) {
            return Long.MAX_VALUE;
        }
        if (j7 == f2995f) {
            return Long.MIN_VALUE;
        }
        return e.convertDurationUnit(j7 >> 1, (((int) j7) & 1) == 0 ? DurationUnit.f17469e : DurationUnit.f17470f, unit);
    }

    /* renamed from: toString-impl, reason: not valid java name */
    public static String m23toStringimpl(long j7) {
        if (j7 == 0) {
            return "0s";
        }
        if (j7 == f2994e) {
            return "Infinity";
        }
        if (j7 == f2995f) {
            return "-Infinity";
        }
        boolean m20isNegativeimpl = m20isNegativeimpl(j7);
        StringBuilder sb = new StringBuilder();
        if (m20isNegativeimpl) {
            sb.append('-');
        }
        long m7getAbsoluteValueUwyO8pc = m7getAbsoluteValueUwyO8pc(j7);
        long m9getInWholeDaysimpl = m9getInWholeDaysimpl(m7getAbsoluteValueUwyO8pc);
        int m8getHoursComponentimpl = m8getHoursComponentimpl(m7getAbsoluteValueUwyO8pc);
        int m14getMinutesComponentimpl = m14getMinutesComponentimpl(m7getAbsoluteValueUwyO8pc);
        int m16getSecondsComponentimpl = m16getSecondsComponentimpl(m7getAbsoluteValueUwyO8pc);
        int m15getNanosecondsComponentimpl = m15getNanosecondsComponentimpl(m7getAbsoluteValueUwyO8pc);
        int i2 = 0;
        boolean z6 = m9getInWholeDaysimpl != 0;
        boolean z7 = m8getHoursComponentimpl != 0;
        boolean z8 = m14getMinutesComponentimpl != 0;
        boolean z9 = (m16getSecondsComponentimpl == 0 && m15getNanosecondsComponentimpl == 0) ? false : true;
        if (z6) {
            sb.append(m9getInWholeDaysimpl);
            sb.append('d');
            i2 = 1;
        }
        if (z7 || (z6 && (z8 || z9))) {
            int i7 = i2 + 1;
            if (i2 > 0) {
                sb.append(TokenParser.SP);
            }
            sb.append(m8getHoursComponentimpl);
            sb.append('h');
            i2 = i7;
        }
        if (z8 || (z9 && (z7 || z6))) {
            int i8 = i2 + 1;
            if (i2 > 0) {
                sb.append(TokenParser.SP);
            }
            sb.append(m14getMinutesComponentimpl);
            sb.append('m');
            i2 = i8;
        }
        if (z9) {
            int i9 = i2 + 1;
            if (i2 > 0) {
                sb.append(TokenParser.SP);
            }
            if (m16getSecondsComponentimpl != 0 || z6 || z7 || z8) {
                b(sb, m16getSecondsComponentimpl, m15getNanosecondsComponentimpl, 9, CmcdData.STREAMING_FORMAT_SS);
            } else if (m15getNanosecondsComponentimpl >= 1000000) {
                b(sb, m15getNanosecondsComponentimpl / PlaybackException.CUSTOM_ERROR_CODE_BASE, m15getNanosecondsComponentimpl % PlaybackException.CUSTOM_ERROR_CODE_BASE, 6, "ms");
            } else if (m15getNanosecondsComponentimpl >= 1000) {
                b(sb, m15getNanosecondsComponentimpl / 1000, m15getNanosecondsComponentimpl % 1000, 3, "us");
            } else {
                sb.append(m15getNanosecondsComponentimpl);
                sb.append("ns");
            }
            i2 = i9;
        }
        if (m20isNegativeimpl && i2 > 1) {
            sb.insert(1, '(').append(')');
        }
        String sb2 = sb.toString();
        j.checkNotNullExpressionValue(sb2, "toString(...)");
        return sb2;
    }

    /* renamed from: unaryMinus-UwyO8pc, reason: not valid java name */
    public static final long m24unaryMinusUwyO8pc(long j7) {
        long m5constructorimpl;
        m5constructorimpl = m5constructorimpl(((-(j7 >> 1)) << 1) + (((int) j7) & 1));
        return m5constructorimpl;
    }

    @Override // java.lang.Comparable
    public /* bridge */ /* synthetic */ int compareTo(Object obj) {
        return m25compareToLRDsOJo(((b) obj).m26unboximpl());
    }

    /* renamed from: compareTo-LRDsOJo, reason: not valid java name */
    public int m25compareToLRDsOJo(long j7) {
        return m4compareToLRDsOJo(this.f2997b, j7);
    }

    public boolean equals(Object obj) {
        return m6equalsimpl(this.f2997b, obj);
    }

    public int hashCode() {
        return m17hashCodeimpl(this.f2997b);
    }

    public String toString() {
        return m23toStringimpl(this.f2997b);
    }

    /* renamed from: unbox-impl, reason: not valid java name */
    public final /* synthetic */ long m26unboximpl() {
        return this.f2997b;
    }

    /* renamed from: compareTo-LRDsOJo, reason: not valid java name */
    public static int m4compareToLRDsOJo(long j7, long j8) {
        long j9 = j7 ^ j8;
        if (j9 < 0 || (((int) j9) & 1) == 0) {
            return j.compare(j7, j8);
        }
        int i2 = (((int) j7) & 1) - (((int) j8) & 1);
        return m20isNegativeimpl(j7) ? -i2 : i2;
    }
}
