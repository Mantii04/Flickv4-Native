package org.threeten.bp.chrono;

import A.i;
import b.c;
import com.fasterxml.jackson.core.JsonPointer;
import cz.msebera.android.httpclient.HttpStatus;
import cz.msebera.android.httpclient.message.TokenParser;
import java.io.BufferedReader;
import java.io.DataInput;
import java.io.DataOutput;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.Serializable;
import java.text.ParseException;
import java.util.HashMap;
import java.util.StringTokenizer;
import java.util.zip.ZipEntry;
import java.util.zip.ZipFile;
import org.threeten.bp.Clock;
import org.threeten.bp.DateTimeException;
import org.threeten.bp.DayOfWeek;
import org.threeten.bp.LocalDate;
import org.threeten.bp.LocalTime;
import org.threeten.bp.ZoneId;
import org.threeten.bp.jdk8.Jdk8Methods;
import org.threeten.bp.temporal.ChronoField;
import org.threeten.bp.temporal.Temporal;
import org.threeten.bp.temporal.TemporalAccessor;
import org.threeten.bp.temporal.TemporalAdjuster;
import org.threeten.bp.temporal.TemporalAmount;
import org.threeten.bp.temporal.TemporalField;
import org.threeten.bp.temporal.TemporalUnit;
import org.threeten.bp.temporal.UnsupportedTemporalTypeException;
import org.threeten.bp.temporal.ValueRange;

/* loaded from: classes2.dex */
public final class HijrahDate extends ChronoDateImpl<HijrahDate> implements Serializable {
    private static final Long[] ADJUSTED_CYCLES;
    private static final HashMap<Integer, Integer[]> ADJUSTED_CYCLE_YEARS;
    private static final Integer[] ADJUSTED_LEAST_MAX_VALUES;
    private static final Integer[] ADJUSTED_MAX_VALUES;
    private static final Integer[] ADJUSTED_MIN_VALUES;
    private static final HashMap<Integer, Integer[]> ADJUSTED_MONTH_DAYS;
    private static final HashMap<Integer, Integer[]> ADJUSTED_MONTH_LENGTHS;
    private static final int[] CYCLEYEAR_START_DATE;
    private static final String DEFAULT_CONFIG_FILENAME = "hijrah_deviation.cfg";
    private static final String DEFAULT_CONFIG_PATH;
    private static final Integer[] DEFAULT_CYCLE_YEARS;
    private static final Integer[] DEFAULT_LEAP_MONTH_DAYS;
    private static final Integer[] DEFAULT_LEAP_MONTH_LENGTHS;
    private static final Integer[] DEFAULT_MONTH_DAYS;
    private static final Integer[] DEFAULT_MONTH_LENGTHS;
    private static final char FILE_SEP;
    private static final int HIJRAH_JAN_1_1_GREGORIAN_DAY = -492148;
    private static final int[] LEAP_MONTH_LENGTH;
    private static final int[] LEAP_NUM_DAYS;
    private static final int[] LEAST_MAX_VALUES;
    private static final int MAX_ADJUSTED_CYCLE = 334;
    private static final int[] MAX_VALUES;
    public static final int MAX_VALUE_OF_ERA = 9999;
    private static final int[] MIN_VALUES;
    public static final int MIN_VALUE_OF_ERA = 1;
    private static final int[] MONTH_LENGTH;
    private static final int[] NUM_DAYS;
    private static final String PATH_SEP;
    private static final int POSITION_DAY_OF_MONTH = 5;
    private static final int POSITION_DAY_OF_YEAR = 6;
    private static final long serialVersionUID = -5207853542612002020L;
    private final transient int dayOfMonth;
    private final transient DayOfWeek dayOfWeek;
    private final transient int dayOfYear;
    private final transient HijrahEra era;
    private final long gregorianEpochDay;
    private final transient boolean isLeapYear;
    private final transient int monthOfYear;
    private final transient int yearOfEra;

    /* renamed from: org.threeten.bp.chrono.HijrahDate$1, reason: invalid class name */
    public static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$org$threeten$bp$temporal$ChronoField;

        static {
            int[] iArr = new int[ChronoField.values().length];
            $SwitchMap$org$threeten$bp$temporal$ChronoField = iArr;
            try {
                iArr[ChronoField.DAY_OF_MONTH.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$org$threeten$bp$temporal$ChronoField[ChronoField.DAY_OF_YEAR.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$org$threeten$bp$temporal$ChronoField[ChronoField.ALIGNED_WEEK_OF_MONTH.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$org$threeten$bp$temporal$ChronoField[ChronoField.YEAR_OF_ERA.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$org$threeten$bp$temporal$ChronoField[ChronoField.DAY_OF_WEEK.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                $SwitchMap$org$threeten$bp$temporal$ChronoField[ChronoField.ALIGNED_DAY_OF_WEEK_IN_MONTH.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                $SwitchMap$org$threeten$bp$temporal$ChronoField[ChronoField.ALIGNED_DAY_OF_WEEK_IN_YEAR.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                $SwitchMap$org$threeten$bp$temporal$ChronoField[ChronoField.EPOCH_DAY.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                $SwitchMap$org$threeten$bp$temporal$ChronoField[ChronoField.ALIGNED_WEEK_OF_YEAR.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                $SwitchMap$org$threeten$bp$temporal$ChronoField[ChronoField.MONTH_OF_YEAR.ordinal()] = 10;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                $SwitchMap$org$threeten$bp$temporal$ChronoField[ChronoField.YEAR.ordinal()] = 11;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                $SwitchMap$org$threeten$bp$temporal$ChronoField[ChronoField.ERA.ordinal()] = 12;
            } catch (NoSuchFieldError unused12) {
            }
        }
    }

    static {
        int i2 = 0;
        int[] iArr = {0, 30, 59, 89, 118, 148, 177, HttpStatus.SC_MULTI_STATUS, 236, 266, 295, 325};
        NUM_DAYS = iArr;
        LEAP_NUM_DAYS = new int[]{0, 30, 59, 89, 118, 148, 177, HttpStatus.SC_MULTI_STATUS, 236, 266, 295, 325};
        MONTH_LENGTH = new int[]{30, 29, 30, 29, 30, 29, 30, 29, 30, 29, 30, 29};
        LEAP_MONTH_LENGTH = new int[]{30, 29, 30, 29, 30, 29, 30, 29, 30, 29, 30, 30};
        MIN_VALUES = new int[]{0, 1, 0, 1, 0, 1, 1};
        LEAST_MAX_VALUES = new int[]{1, MAX_VALUE_OF_ERA, 11, 51, 5, 29, 354};
        MAX_VALUES = new int[]{1, MAX_VALUE_OF_ERA, 11, 52, 6, 30, 355};
        CYCLEYEAR_START_DATE = new int[]{0, 354, 709, 1063, 1417, 1772, 2126, 2481, 2835, 3189, 3544, 3898, 4252, 4607, 4961, 5315, 5670, 6024, 6379, 6733, 7087, 7442, 7796, 8150, 8505, 8859, 9214, 9568, 9922, 10277};
        char c7 = File.separatorChar;
        FILE_SEP = c7;
        PATH_SEP = File.pathSeparator;
        DEFAULT_CONFIG_PATH = "org" + c7 + "threeten" + c7 + "bp" + c7 + "chrono";
        ADJUSTED_MONTH_DAYS = new HashMap<>();
        ADJUSTED_MONTH_LENGTHS = new HashMap<>();
        ADJUSTED_CYCLE_YEARS = new HashMap<>();
        DEFAULT_MONTH_DAYS = new Integer[iArr.length];
        int i7 = 0;
        while (true) {
            int[] iArr2 = NUM_DAYS;
            if (i7 >= iArr2.length) {
                break;
            }
            DEFAULT_MONTH_DAYS[i7] = Integer.valueOf(iArr2[i7]);
            i7++;
        }
        DEFAULT_LEAP_MONTH_DAYS = new Integer[LEAP_NUM_DAYS.length];
        int i8 = 0;
        while (true) {
            int[] iArr3 = LEAP_NUM_DAYS;
            if (i8 >= iArr3.length) {
                break;
            }
            DEFAULT_LEAP_MONTH_DAYS[i8] = Integer.valueOf(iArr3[i8]);
            i8++;
        }
        DEFAULT_MONTH_LENGTHS = new Integer[MONTH_LENGTH.length];
        int i9 = 0;
        while (true) {
            int[] iArr4 = MONTH_LENGTH;
            if (i9 >= iArr4.length) {
                break;
            }
            DEFAULT_MONTH_LENGTHS[i9] = Integer.valueOf(iArr4[i9]);
            i9++;
        }
        DEFAULT_LEAP_MONTH_LENGTHS = new Integer[LEAP_MONTH_LENGTH.length];
        int i10 = 0;
        while (true) {
            int[] iArr5 = LEAP_MONTH_LENGTH;
            if (i10 >= iArr5.length) {
                break;
            }
            DEFAULT_LEAP_MONTH_LENGTHS[i10] = Integer.valueOf(iArr5[i10]);
            i10++;
        }
        DEFAULT_CYCLE_YEARS = new Integer[CYCLEYEAR_START_DATE.length];
        int i11 = 0;
        while (true) {
            int[] iArr6 = CYCLEYEAR_START_DATE;
            if (i11 >= iArr6.length) {
                break;
            }
            DEFAULT_CYCLE_YEARS[i11] = Integer.valueOf(iArr6[i11]);
            i11++;
        }
        ADJUSTED_CYCLES = new Long[MAX_ADJUSTED_CYCLE];
        int i12 = 0;
        while (true) {
            Long[] lArr = ADJUSTED_CYCLES;
            if (i12 >= lArr.length) {
                break;
            }
            lArr[i12] = Long.valueOf(i12 * 10631);
            i12++;
        }
        ADJUSTED_MIN_VALUES = new Integer[MIN_VALUES.length];
        int i13 = 0;
        while (true) {
            int[] iArr7 = MIN_VALUES;
            if (i13 >= iArr7.length) {
                break;
            }
            ADJUSTED_MIN_VALUES[i13] = Integer.valueOf(iArr7[i13]);
            i13++;
        }
        ADJUSTED_LEAST_MAX_VALUES = new Integer[LEAST_MAX_VALUES.length];
        int i14 = 0;
        while (true) {
            int[] iArr8 = LEAST_MAX_VALUES;
            if (i14 >= iArr8.length) {
                break;
            }
            ADJUSTED_LEAST_MAX_VALUES[i14] = Integer.valueOf(iArr8[i14]);
            i14++;
        }
        ADJUSTED_MAX_VALUES = new Integer[MAX_VALUES.length];
        while (true) {
            int[] iArr9 = MAX_VALUES;
            if (i2 >= iArr9.length) {
                try {
                    readDeviationConfig();
                    return;
                } catch (IOException | ParseException unused) {
                    return;
                }
            } else {
                ADJUSTED_MAX_VALUES[i2] = Integer.valueOf(iArr9[i2]);
                i2++;
            }
        }
    }

    private HijrahDate(long j7) {
        int[] hijrahDateInfo = getHijrahDateInfo(j7);
        checkValidYearOfEra(hijrahDateInfo[1]);
        checkValidMonth(hijrahDateInfo[2]);
        checkValidDayOfMonth(hijrahDateInfo[3]);
        checkValidDayOfYear(hijrahDateInfo[4]);
        this.era = HijrahEra.of(hijrahDateInfo[0]);
        int i2 = hijrahDateInfo[1];
        this.yearOfEra = i2;
        this.monthOfYear = hijrahDateInfo[2];
        this.dayOfMonth = hijrahDateInfo[3];
        this.dayOfYear = hijrahDateInfo[4];
        this.dayOfWeek = DayOfWeek.of(hijrahDateInfo[5]);
        this.gregorianEpochDay = j7;
        this.isLeapYear = isLeapYear(i2);
    }

    private static void addDeviationAsHijrah(int i2, int i7, int i8, int i9, int i10) {
        char c7;
        int i11;
        int i12 = 1;
        if (i2 < 1) {
            throw new IllegalArgumentException("startYear < 1");
        }
        if (i8 < 1) {
            throw new IllegalArgumentException("endYear < 1");
        }
        if (i7 >= 0) {
            char c8 = 11;
            if (i7 <= 11) {
                if (i9 < 0 || i9 > 11) {
                    throw new IllegalArgumentException("endMonth < 0 || endMonth > 11");
                }
                if (i8 > 9999) {
                    throw new IllegalArgumentException("endYear > 9999");
                }
                if (i8 < i2) {
                    throw new IllegalArgumentException("startYear > endYear");
                }
                if (i8 == i2 && i9 < i7) {
                    throw new IllegalArgumentException("startYear == endYear && endMonth < startMonth");
                }
                boolean isLeapYear = isLeapYear(i2);
                Integer[] numArr = ADJUSTED_MONTH_DAYS.get(Integer.valueOf(i2));
                if (numArr == null) {
                    if (!isLeapYear) {
                        numArr = new Integer[NUM_DAYS.length];
                        int i13 = 0;
                        while (true) {
                            int[] iArr = NUM_DAYS;
                            if (i13 >= iArr.length) {
                                break;
                            }
                            numArr[i13] = Integer.valueOf(iArr[i13]);
                            i13++;
                        }
                    } else {
                        numArr = new Integer[LEAP_NUM_DAYS.length];
                        int i14 = 0;
                        while (true) {
                            int[] iArr2 = LEAP_NUM_DAYS;
                            if (i14 >= iArr2.length) {
                                break;
                            }
                            numArr[i14] = Integer.valueOf(iArr2[i14]);
                            i14++;
                        }
                    }
                }
                Integer[] numArr2 = new Integer[numArr.length];
                for (int i15 = 0; i15 < 12; i15++) {
                    if (i15 > i7) {
                        numArr2[i15] = Integer.valueOf(numArr[i15].intValue() - i10);
                    } else {
                        Integer num = numArr[i15];
                        num.intValue();
                        numArr2[i15] = num;
                    }
                }
                ADJUSTED_MONTH_DAYS.put(Integer.valueOf(i2), numArr2);
                Integer[] numArr3 = ADJUSTED_MONTH_LENGTHS.get(Integer.valueOf(i2));
                if (numArr3 == null) {
                    if (!isLeapYear) {
                        numArr3 = new Integer[MONTH_LENGTH.length];
                        int i16 = 0;
                        while (true) {
                            int[] iArr3 = MONTH_LENGTH;
                            if (i16 >= iArr3.length) {
                                break;
                            }
                            numArr3[i16] = Integer.valueOf(iArr3[i16]);
                            i16++;
                        }
                    } else {
                        numArr3 = new Integer[LEAP_MONTH_LENGTH.length];
                        int i17 = 0;
                        while (true) {
                            int[] iArr4 = LEAP_MONTH_LENGTH;
                            if (i17 >= iArr4.length) {
                                break;
                            }
                            numArr3[i17] = Integer.valueOf(iArr4[i17]);
                            i17++;
                        }
                    }
                }
                Integer[] numArr4 = new Integer[numArr3.length];
                for (int i18 = 0; i18 < 12; i18++) {
                    if (i18 == i7) {
                        numArr4[i18] = Integer.valueOf(numArr3[i18].intValue() - i10);
                    } else {
                        Integer num2 = numArr3[i18];
                        num2.intValue();
                        numArr4[i18] = num2;
                    }
                }
                ADJUSTED_MONTH_LENGTHS.put(Integer.valueOf(i2), numArr4);
                if (i2 != i8) {
                    int i19 = i2 - 1;
                    int i20 = i19 / 30;
                    int i21 = i19 % 30;
                    Integer[] numArr5 = ADJUSTED_CYCLE_YEARS.get(Integer.valueOf(i20));
                    if (numArr5 == null) {
                        int length = CYCLEYEAR_START_DATE.length;
                        Integer[] numArr6 = new Integer[length];
                        for (int i22 = 0; i22 < length; i22++) {
                            numArr6[i22] = Integer.valueOf(CYCLEYEAR_START_DATE[i22]);
                        }
                        numArr5 = numArr6;
                    }
                    for (int i23 = i21 + 1; i23 < CYCLEYEAR_START_DATE.length; i23++) {
                        numArr5[i23] = Integer.valueOf(numArr5[i23].intValue() - i10);
                    }
                    ADJUSTED_CYCLE_YEARS.put(Integer.valueOf(i20), numArr5);
                    int i24 = i8 - 1;
                    int i25 = i24 / 30;
                    if (i20 != i25) {
                        int i26 = i20 + 1;
                        while (true) {
                            Long[] lArr = ADJUSTED_CYCLES;
                            if (i26 >= lArr.length) {
                                break;
                            }
                            lArr[i26] = Long.valueOf(lArr[i26].longValue() - i10);
                            i26++;
                            i12 = i12;
                            c8 = c8;
                        }
                        i11 = i12;
                        c7 = c8;
                        int i27 = i25 + 1;
                        while (true) {
                            Long[] lArr2 = ADJUSTED_CYCLES;
                            if (i27 >= lArr2.length) {
                                break;
                            }
                            lArr2[i27] = Long.valueOf(lArr2[i27].longValue() + i10);
                            i27++;
                            i25 = i25;
                        }
                    } else {
                        i11 = 1;
                        c7 = 11;
                    }
                    int i28 = i25;
                    int i29 = i24 % 30;
                    Integer[] numArr7 = ADJUSTED_CYCLE_YEARS.get(Integer.valueOf(i28));
                    if (numArr7 == null) {
                        int length2 = CYCLEYEAR_START_DATE.length;
                        Integer[] numArr8 = new Integer[length2];
                        for (int i30 = 0; i30 < length2; i30++) {
                            numArr8[i30] = Integer.valueOf(CYCLEYEAR_START_DATE[i30]);
                        }
                        numArr7 = numArr8;
                    }
                    for (int i31 = i29 + i11; i31 < CYCLEYEAR_START_DATE.length; i31++) {
                        numArr7[i31] = Integer.valueOf(numArr7[i31].intValue() + i10);
                    }
                    ADJUSTED_CYCLE_YEARS.put(Integer.valueOf(i28), numArr7);
                } else {
                    c7 = 11;
                }
                boolean isLeapYear2 = isLeapYear(i8);
                Integer[] numArr9 = ADJUSTED_MONTH_DAYS.get(Integer.valueOf(i8));
                if (numArr9 == null) {
                    if (!isLeapYear2) {
                        numArr9 = new Integer[NUM_DAYS.length];
                        int i32 = 0;
                        while (true) {
                            int[] iArr5 = NUM_DAYS;
                            if (i32 >= iArr5.length) {
                                break;
                            }
                            numArr9[i32] = Integer.valueOf(iArr5[i32]);
                            i32++;
                        }
                    } else {
                        numArr9 = new Integer[LEAP_NUM_DAYS.length];
                        int i33 = 0;
                        while (true) {
                            int[] iArr6 = LEAP_NUM_DAYS;
                            if (i33 >= iArr6.length) {
                                break;
                            }
                            numArr9[i33] = Integer.valueOf(iArr6[i33]);
                            i33++;
                        }
                    }
                }
                Integer[] numArr10 = new Integer[numArr9.length];
                for (int i34 = 0; i34 < 12; i34++) {
                    if (i34 > i9) {
                        numArr10[i34] = Integer.valueOf(numArr9[i34].intValue() + i10);
                    } else {
                        Integer num3 = numArr9[i34];
                        num3.intValue();
                        numArr10[i34] = num3;
                    }
                }
                ADJUSTED_MONTH_DAYS.put(Integer.valueOf(i8), numArr10);
                Integer[] numArr11 = ADJUSTED_MONTH_LENGTHS.get(Integer.valueOf(i8));
                if (numArr11 == null) {
                    if (!isLeapYear2) {
                        numArr11 = new Integer[MONTH_LENGTH.length];
                        int i35 = 0;
                        while (true) {
                            int[] iArr7 = MONTH_LENGTH;
                            if (i35 >= iArr7.length) {
                                break;
                            }
                            numArr11[i35] = Integer.valueOf(iArr7[i35]);
                            i35++;
                        }
                    } else {
                        numArr11 = new Integer[LEAP_MONTH_LENGTH.length];
                        int i36 = 0;
                        while (true) {
                            int[] iArr8 = LEAP_MONTH_LENGTH;
                            if (i36 >= iArr8.length) {
                                break;
                            }
                            numArr11[i36] = Integer.valueOf(iArr8[i36]);
                            i36++;
                        }
                    }
                }
                Integer[] numArr12 = new Integer[numArr11.length];
                for (int i37 = 0; i37 < 12; i37++) {
                    if (i37 == i9) {
                        numArr12[i37] = Integer.valueOf(numArr11[i37].intValue() + i10);
                    } else {
                        Integer num4 = numArr11[i37];
                        num4.intValue();
                        numArr12[i37] = num4;
                    }
                }
                HashMap<Integer, Integer[]> hashMap = ADJUSTED_MONTH_LENGTHS;
                hashMap.put(Integer.valueOf(i8), numArr12);
                Integer[] numArr13 = hashMap.get(Integer.valueOf(i2));
                Integer[] numArr14 = hashMap.get(Integer.valueOf(i8));
                HashMap<Integer, Integer[]> hashMap2 = ADJUSTED_MONTH_DAYS;
                Integer[] numArr15 = hashMap2.get(Integer.valueOf(i2));
                Integer[] numArr16 = hashMap2.get(Integer.valueOf(i8));
                int intValue = numArr13[i7].intValue();
                int intValue2 = numArr14[i9].intValue();
                int intValue3 = numArr13[c7].intValue() + numArr15[c7].intValue();
                int intValue4 = numArr14[c7].intValue() + numArr16[c7].intValue();
                Integer[] numArr17 = ADJUSTED_MAX_VALUES;
                int intValue5 = numArr17[5].intValue();
                Integer[] numArr18 = ADJUSTED_LEAST_MAX_VALUES;
                int intValue6 = numArr18[5].intValue();
                if (intValue5 < intValue) {
                    intValue5 = intValue;
                }
                if (intValue5 < intValue2) {
                    intValue5 = intValue2;
                }
                numArr17[5] = Integer.valueOf(intValue5);
                if (intValue6 <= intValue) {
                    intValue = intValue6;
                }
                if (intValue <= intValue2) {
                    intValue2 = intValue;
                }
                numArr18[5] = Integer.valueOf(intValue2);
                int intValue7 = numArr17[6].intValue();
                int intValue8 = numArr18[6].intValue();
                if (intValue7 < intValue3) {
                    intValue7 = intValue3;
                }
                if (intValue7 < intValue4) {
                    intValue7 = intValue4;
                }
                numArr17[6] = Integer.valueOf(intValue7);
                if (intValue8 <= intValue3) {
                    intValue3 = intValue8;
                }
                if (intValue3 <= intValue4) {
                    intValue4 = intValue3;
                }
                numArr18[6] = Integer.valueOf(intValue4);
                return;
            }
        }
        throw new IllegalArgumentException("startMonth < 0 || startMonth > 11");
    }

    private static void checkValidDayOfMonth(int i2) {
        if (i2 < 1 || i2 > getMaximumDayOfMonth()) {
            StringBuilder q6 = i.q(i2, "Invalid day of month of Hijrah date, day ", " greater than ");
            q6.append(getMaximumDayOfMonth());
            q6.append(" or less than 1");
            throw new DateTimeException(q6.toString());
        }
    }

    private static void checkValidDayOfYear(int i2) {
        if (i2 < 1 || i2 > getMaximumDayOfYear()) {
            throw new DateTimeException("Invalid day of year of Hijrah date");
        }
    }

    private static void checkValidMonth(int i2) {
        if (i2 < 1 || i2 > 12) {
            throw new DateTimeException("Invalid month of Hijrah date");
        }
    }

    private static void checkValidYearOfEra(int i2) {
        if (i2 < 1 || i2 > 9999) {
            throw new DateTimeException("Invalid year of Hijrah Era");
        }
    }

    public static HijrahDate from(TemporalAccessor temporalAccessor) {
        return HijrahChronology.INSTANCE.date(temporalAccessor);
    }

    private static Integer[] getAdjustedCycle(int i2) {
        Integer[] numArr;
        try {
            numArr = ADJUSTED_CYCLE_YEARS.get(Integer.valueOf(i2));
        } catch (ArrayIndexOutOfBoundsException unused) {
            numArr = null;
        }
        return numArr == null ? DEFAULT_CYCLE_YEARS : numArr;
    }

    private static Integer[] getAdjustedMonthDays(int i2) {
        Integer[] numArr;
        try {
            numArr = ADJUSTED_MONTH_DAYS.get(Integer.valueOf(i2));
        } catch (ArrayIndexOutOfBoundsException unused) {
            numArr = null;
        }
        return numArr == null ? isLeapYear((long) i2) ? DEFAULT_LEAP_MONTH_DAYS : DEFAULT_MONTH_DAYS : numArr;
    }

    private static Integer[] getAdjustedMonthLength(int i2) {
        Integer[] numArr;
        try {
            numArr = ADJUSTED_MONTH_LENGTHS.get(Integer.valueOf(i2));
        } catch (ArrayIndexOutOfBoundsException unused) {
            numArr = null;
        }
        return numArr == null ? isLeapYear((long) i2) ? DEFAULT_LEAP_MONTH_LENGTHS : DEFAULT_MONTH_LENGTHS : numArr;
    }

    private static InputStream getConfigFileInputStream() throws IOException {
        ZipFile zipFile;
        String property = System.getProperty("org.threeten.bp.i18n.HijrahDate.deviationConfigFile");
        if (property == null) {
            property = DEFAULT_CONFIG_FILENAME;
        }
        String property2 = System.getProperty("org.threeten.bp.i18n.HijrahDate.deviationConfigDir");
        if (property2 != null) {
            if (property2.length() != 0 || !property2.endsWith(System.getProperty("file.separator"))) {
                StringBuilder o6 = c.o(property2);
                o6.append(System.getProperty("file.separator"));
                property2 = o6.toString();
            }
            StringBuilder o7 = c.o(property2);
            o7.append(FILE_SEP);
            o7.append(property);
            File file = new File(o7.toString());
            if (file.exists()) {
                return new FileInputStream(file);
            }
            return null;
        }
        StringTokenizer stringTokenizer = new StringTokenizer(System.getProperty("java.class.path"), PATH_SEP);
        while (stringTokenizer.hasMoreTokens()) {
            String nextToken = stringTokenizer.nextToken();
            File file2 = new File(nextToken);
            if (file2.exists()) {
                if (file2.isDirectory()) {
                    StringBuilder o8 = c.o(nextToken);
                    char c7 = FILE_SEP;
                    o8.append(c7);
                    String str = DEFAULT_CONFIG_PATH;
                    o8.append(str);
                    if (new File(o8.toString(), property).exists()) {
                        return new FileInputStream(nextToken + c7 + str + c7 + property);
                    }
                } else {
                    try {
                        zipFile = new ZipFile(file2);
                    } catch (IOException unused) {
                        zipFile = null;
                    }
                    if (zipFile != null) {
                        StringBuilder sb = new StringBuilder();
                        sb.append(DEFAULT_CONFIG_PATH);
                        char c8 = FILE_SEP;
                        sb.append(c8);
                        sb.append(property);
                        String sb2 = sb.toString();
                        ZipEntry entry = zipFile.getEntry(sb2);
                        if (entry == null) {
                            if (c8 == '/') {
                                sb2 = sb2.replace(JsonPointer.SEPARATOR, TokenParser.ESCAPE);
                            } else if (c8 == '\\') {
                                sb2 = sb2.replace(TokenParser.ESCAPE, JsonPointer.SEPARATOR);
                            }
                            entry = zipFile.getEntry(sb2);
                        }
                        if (entry != null) {
                            return zipFile.getInputStream(entry);
                        }
                    } else {
                        continue;
                    }
                }
            }
        }
        return null;
    }

    private static int getCycleNumber(long j7) {
        Long[] lArr = ADJUSTED_CYCLES;
        for (int i2 = 0; i2 < lArr.length; i2++) {
            try {
                if (j7 < lArr[i2].longValue()) {
                    return i2 - 1;
                }
            } catch (ArrayIndexOutOfBoundsException unused) {
                return ((int) j7) / 10631;
            }
        }
        return ((int) j7) / 10631;
    }

    private static int getDayOfCycle(long j7, int i2) {
        Long l7;
        try {
            l7 = ADJUSTED_CYCLES[i2];
        } catch (ArrayIndexOutOfBoundsException unused) {
            l7 = null;
        }
        if (l7 == null) {
            l7 = Long.valueOf(i2 * 10631);
        }
        return (int) (j7 - l7.longValue());
    }

    private static int getDayOfMonth(int i2, int i7, int i8) {
        int intValue;
        Integer[] adjustedMonthDays = getAdjustedMonthDays(i8);
        if (i2 < 0) {
            i2 = isLeapYear((long) i8) ? i2 + 355 : i2 + 354;
            if (i7 <= 0) {
                return i2;
            }
            intValue = adjustedMonthDays[i7].intValue();
        } else {
            if (i7 <= 0) {
                return i2;
            }
            intValue = adjustedMonthDays[i7].intValue();
        }
        return i2 - intValue;
    }

    private static int getDayOfYear(int i2, int i7, int i8) {
        Integer[] adjustedCycle = getAdjustedCycle(i2);
        return i7 > 0 ? i7 - adjustedCycle[i8].intValue() : adjustedCycle[i8].intValue() + i7;
    }

    private static long getGregorianEpochDay(int i2, int i7, int i8) {
        return yearToGregorianEpochDay(i2) + getMonthDays(i7 - 1, i2) + i8;
    }

    private static int[] getHijrahDateInfo(long j7) {
        int i2;
        int i7;
        int monthOfYear;
        int dayOfMonth;
        int value;
        long j8 = j7 - (-492148);
        if (j8 >= 0) {
            int cycleNumber = getCycleNumber(j8);
            int dayOfCycle = getDayOfCycle(j8, cycleNumber);
            int yearInCycle = getYearInCycle(cycleNumber, dayOfCycle);
            i7 = getDayOfYear(cycleNumber, dayOfCycle, yearInCycle);
            i2 = (cycleNumber * 30) + yearInCycle + 1;
            monthOfYear = getMonthOfYear(i7, i2);
            dayOfMonth = getDayOfMonth(i7, monthOfYear, i2) + 1;
            value = HijrahEra.AH.getValue();
        } else {
            int i8 = (int) j8;
            int i9 = i8 / 10631;
            int i10 = i8 % 10631;
            if (i10 == 0) {
                i9++;
                i10 = -10631;
            }
            int yearInCycle2 = getYearInCycle(i9, i10);
            int dayOfYear = getDayOfYear(i9, i10, yearInCycle2);
            i2 = 1 - ((i9 * 30) - yearInCycle2);
            i7 = isLeapYear((long) i2) ? dayOfYear + 355 : dayOfYear + 354;
            monthOfYear = getMonthOfYear(i7, i2);
            dayOfMonth = getDayOfMonth(i7, monthOfYear, i2) + 1;
            value = HijrahEra.BEFORE_AH.getValue();
        }
        int i11 = (int) ((j7 - (-492153)) % 7);
        return new int[]{value, i2, monthOfYear + 1, dayOfMonth, i7 + 1, i11 + (i11 <= 0 ? 7 : 0)};
    }

    public static int getMaximumDayOfMonth() {
        return ADJUSTED_MAX_VALUES[5].intValue();
    }

    public static int getMaximumDayOfYear() {
        return ADJUSTED_MAX_VALUES[6].intValue();
    }

    private static int getMonthDays(int i2, int i7) {
        return getAdjustedMonthDays(i7)[i2].intValue();
    }

    public static int getMonthLength(int i2, int i7) {
        return getAdjustedMonthLength(i7)[i2].intValue();
    }

    private static int getMonthOfYear(int i2, int i7) {
        Integer[] adjustedMonthDays = getAdjustedMonthDays(i7);
        int i8 = 0;
        if (i2 >= 0) {
            while (i8 < adjustedMonthDays.length) {
                if (i2 < adjustedMonthDays[i8].intValue()) {
                    return i8 - 1;
                }
                i8++;
            }
            return 11;
        }
        int i9 = isLeapYear((long) i7) ? i2 + 355 : i2 + 354;
        while (i8 < adjustedMonthDays.length) {
            if (i9 < adjustedMonthDays[i8].intValue()) {
                return i8 - 1;
            }
            i8++;
        }
        return 11;
    }

    public static int getSmallestMaximumDayOfMonth() {
        return ADJUSTED_LEAST_MAX_VALUES[5].intValue();
    }

    public static int getSmallestMaximumDayOfYear() {
        return ADJUSTED_LEAST_MAX_VALUES[6].intValue();
    }

    private static int getYearInCycle(int i2, long j7) {
        Integer[] adjustedCycle = getAdjustedCycle(i2);
        int i7 = 0;
        if (j7 == 0) {
            return 0;
        }
        if (j7 > 0) {
            while (i7 < adjustedCycle.length) {
                if (j7 < adjustedCycle[i7].intValue()) {
                    return i7 - 1;
                }
                i7++;
            }
            return 29;
        }
        long j8 = -j7;
        while (i7 < adjustedCycle.length) {
            if (j8 <= adjustedCycle[i7].intValue()) {
                return i7 - 1;
            }
            i7++;
        }
        return 29;
    }

    public static int getYearLength(int i2) {
        Integer[] numArr;
        int i7 = i2 - 1;
        int i8 = i7 / 30;
        try {
            numArr = ADJUSTED_CYCLE_YEARS.get(Integer.valueOf(i8));
        } catch (ArrayIndexOutOfBoundsException unused) {
            numArr = null;
        }
        if (numArr == null) {
            return isLeapYear((long) i2) ? 355 : 354;
        }
        int i9 = i7 % 30;
        if (i9 != 29) {
            return numArr[i9 + 1].intValue() - numArr[i9].intValue();
        }
        Long[] lArr = ADJUSTED_CYCLES;
        return (lArr[i8 + 1].intValue() - lArr[i8].intValue()) - numArr[i9].intValue();
    }

    public static HijrahDate now() {
        return now(Clock.systemDefaultZone());
    }

    public static HijrahDate of(int i2, int i7, int i8) {
        return i2 >= 1 ? of(HijrahEra.AH, i2, i7, i8) : of(HijrahEra.BEFORE_AH, 1 - i2, i7, i8);
    }

    public static HijrahDate ofEpochDay(long j7) {
        return new HijrahDate(j7);
    }

    private static void parseLine(String str, int i2) throws ParseException {
        StringTokenizer stringTokenizer = new StringTokenizer(str, ";");
        while (stringTokenizer.hasMoreTokens()) {
            String nextToken = stringTokenizer.nextToken();
            int indexOf = nextToken.indexOf(58);
            if (indexOf == -1) {
                throw new ParseException(i.g(i2, "Offset has incorrect format at line ", "."), i2);
            }
            try {
                int parseInt = Integer.parseInt(nextToken.substring(indexOf + 1, nextToken.length()));
                int indexOf2 = nextToken.indexOf(45);
                if (indexOf2 == -1) {
                    throw new ParseException(i.g(i2, "Start and end year/month has incorrect format at line ", "."), i2);
                }
                String substring = nextToken.substring(0, indexOf2);
                String substring2 = nextToken.substring(indexOf2 + 1, indexOf);
                int indexOf3 = substring.indexOf(47);
                int indexOf4 = substring2.indexOf(47);
                if (indexOf3 == -1) {
                    throw new ParseException(i.g(i2, "Start year/month has incorrect format at line ", "."), i2);
                }
                String substring3 = substring.substring(0, indexOf3);
                String substring4 = substring.substring(indexOf3 + 1, substring.length());
                try {
                    int parseInt2 = Integer.parseInt(substring3);
                    try {
                        int parseInt3 = Integer.parseInt(substring4);
                        if (indexOf4 == -1) {
                            throw new ParseException(i.g(i2, "End year/month has incorrect format at line ", "."), i2);
                        }
                        String substring5 = substring2.substring(0, indexOf4);
                        String substring6 = substring2.substring(indexOf4 + 1, substring2.length());
                        try {
                            int parseInt4 = Integer.parseInt(substring5);
                            try {
                                int parseInt5 = Integer.parseInt(substring6);
                                if (parseInt2 == -1 || parseInt3 == -1 || parseInt4 == -1 || parseInt5 == -1) {
                                    throw new ParseException(i.g(i2, "Unknown error at line ", "."), i2);
                                }
                                addDeviationAsHijrah(parseInt2, parseInt3, parseInt4, parseInt5, parseInt);
                            } catch (NumberFormatException unused) {
                                throw new ParseException(i.g(i2, "End month is not properly set at line ", "."), i2);
                            }
                        } catch (NumberFormatException unused2) {
                            throw new ParseException(i.g(i2, "End year is not properly set at line ", "."), i2);
                        }
                    } catch (NumberFormatException unused3) {
                        throw new ParseException(i.g(i2, "Start month is not properly set at line ", "."), i2);
                    }
                } catch (NumberFormatException unused4) {
                    throw new ParseException(i.g(i2, "Start year is not properly set at line ", "."), i2);
                }
            } catch (NumberFormatException unused5) {
                throw new ParseException(i.g(i2, "Offset is not properly set at line ", "."), i2);
            }
        }
    }

    private static void readDeviationConfig() throws IOException, ParseException {
        InputStream configFileInputStream = getConfigFileInputStream();
        if (configFileInputStream == null) {
            return;
        }
        BufferedReader bufferedReader = null;
        try {
            BufferedReader bufferedReader2 = new BufferedReader(new InputStreamReader(configFileInputStream));
            int i2 = 0;
            while (true) {
                try {
                    String readLine = bufferedReader2.readLine();
                    if (readLine == null) {
                        bufferedReader2.close();
                        return;
                    } else {
                        i2++;
                        parseLine(readLine.trim(), i2);
                    }
                } catch (Throwable th) {
                    th = th;
                    bufferedReader = bufferedReader2;
                    if (bufferedReader != null) {
                        bufferedReader.close();
                    }
                    throw th;
                }
            }
        } catch (Throwable th2) {
            th = th2;
        }
    }

    public static ChronoLocalDate readExternal(DataInput dataInput) throws IOException {
        return HijrahChronology.INSTANCE.date(dataInput.readInt(), (int) dataInput.readByte(), (int) dataInput.readByte());
    }

    private Object readResolve() {
        return new HijrahDate(this.gregorianEpochDay);
    }

    private static HijrahDate resolvePreviousValid(int i2, int i7, int i8) {
        int monthDays = getMonthDays(i7 - 1, i2);
        if (i8 > monthDays) {
            i8 = monthDays;
        }
        return of(i2, i7, i8);
    }

    private Object writeReplace() {
        return new Ser((byte) 3, this);
    }

    private static long yearToGregorianEpochDay(int i2) {
        Long l7;
        int i7 = i2 - 1;
        int i8 = i7 / 30;
        int i9 = i7 % 30;
        int intValue = getAdjustedCycle(i8)[Math.abs(i9)].intValue();
        if (i9 < 0) {
            intValue = -intValue;
        }
        try {
            l7 = ADJUSTED_CYCLES[i8];
        } catch (ArrayIndexOutOfBoundsException unused) {
            l7 = null;
        }
        if (l7 == null) {
            l7 = Long.valueOf(i8 * 10631);
        }
        return (l7.longValue() + intValue) - 492149;
    }

    @Override // org.threeten.bp.chrono.ChronoDateImpl, org.threeten.bp.chrono.ChronoLocalDate
    public final ChronoLocalDateTime<HijrahDate> atTime(LocalTime localTime) {
        return super.atTime(localTime);
    }

    @Override // org.threeten.bp.temporal.TemporalAccessor
    public long getLong(TemporalField temporalField) {
        int i2;
        int i7;
        if (!(temporalField instanceof ChronoField)) {
            return temporalField.getFrom(this);
        }
        switch (AnonymousClass1.$SwitchMap$org$threeten$bp$temporal$ChronoField[((ChronoField) temporalField).ordinal()]) {
            case 1:
                i2 = this.dayOfMonth;
                return i2;
            case 2:
                i2 = this.dayOfYear;
                return i2;
            case 3:
                i2 = c.c(this.dayOfMonth, 1, 7, 1);
                return i2;
            case 4:
                i2 = this.yearOfEra;
                return i2;
            case 5:
                i2 = this.dayOfWeek.getValue();
                return i2;
            case 6:
                i7 = (this.dayOfMonth - 1) % 7;
                i2 = i7 + 1;
                return i2;
            case 7:
                i7 = (this.dayOfYear - 1) % 7;
                i2 = i7 + 1;
                return i2;
            case 8:
                return toEpochDay();
            case 9:
                i2 = c.c(this.dayOfYear, 1, 7, 1);
                return i2;
            case 10:
                i2 = this.monthOfYear;
                return i2;
            case 11:
                i2 = this.yearOfEra;
                return i2;
            case 12:
                i2 = this.era.getValue();
                return i2;
            default:
                throw new UnsupportedTemporalTypeException(c.n("Unsupported field: ", temporalField));
        }
    }

    @Override // org.threeten.bp.chrono.ChronoLocalDate
    public boolean isLeapYear() {
        return this.isLeapYear;
    }

    @Override // org.threeten.bp.chrono.ChronoLocalDate
    public int lengthOfMonth() {
        return getMonthLength(this.monthOfYear - 1, this.yearOfEra);
    }

    @Override // org.threeten.bp.chrono.ChronoLocalDate
    public int lengthOfYear() {
        return getYearLength(this.yearOfEra);
    }

    @Override // org.threeten.bp.jdk8.DefaultInterfaceTemporalAccessor, org.threeten.bp.temporal.TemporalAccessor
    public ValueRange range(TemporalField temporalField) {
        if (!(temporalField instanceof ChronoField)) {
            return temporalField.rangeRefinedBy(this);
        }
        if (!isSupported(temporalField)) {
            throw new UnsupportedTemporalTypeException(c.n("Unsupported field: ", temporalField));
        }
        ChronoField chronoField = (ChronoField) temporalField;
        int i2 = AnonymousClass1.$SwitchMap$org$threeten$bp$temporal$ChronoField[chronoField.ordinal()];
        return i2 != 1 ? i2 != 2 ? i2 != 3 ? i2 != 4 ? getChronology().range(chronoField) : ValueRange.of(1L, 1000L) : ValueRange.of(1L, 5L) : ValueRange.of(1L, lengthOfYear()) : ValueRange.of(1L, lengthOfMonth());
    }

    @Override // org.threeten.bp.chrono.ChronoLocalDate
    public long toEpochDay() {
        return getGregorianEpochDay(this.yearOfEra, this.monthOfYear, this.dayOfMonth);
    }

    @Override // org.threeten.bp.chrono.ChronoDateImpl, org.threeten.bp.temporal.Temporal
    public /* bridge */ /* synthetic */ long until(Temporal temporal, TemporalUnit temporalUnit) {
        return super.until(temporal, temporalUnit);
    }

    public void writeExternal(DataOutput dataOutput) throws IOException {
        dataOutput.writeInt(get(ChronoField.YEAR));
        dataOutput.writeByte(get(ChronoField.MONTH_OF_YEAR));
        dataOutput.writeByte(get(ChronoField.DAY_OF_MONTH));
    }

    public static boolean isLeapYear(long j7) {
        if (j7 <= 0) {
            j7 = -j7;
        }
        return ((j7 * 11) + 14) % 30 < 11;
    }

    public static HijrahDate now(ZoneId zoneId) {
        return now(Clock.system(zoneId));
    }

    @Override // org.threeten.bp.chrono.ChronoLocalDate
    public HijrahChronology getChronology() {
        return HijrahChronology.INSTANCE;
    }

    @Override // org.threeten.bp.chrono.ChronoLocalDate
    public HijrahEra getEra() {
        return this.era;
    }

    @Override // org.threeten.bp.chrono.ChronoDateImpl
    public ChronoDateImpl<HijrahDate> plusDays(long j7) {
        return new HijrahDate(this.gregorianEpochDay + j7);
    }

    @Override // org.threeten.bp.chrono.ChronoDateImpl
    public ChronoDateImpl<HijrahDate> plusMonths(long j7) {
        if (j7 == 0) {
            return this;
        }
        int i2 = (this.monthOfYear - 1) + ((int) j7);
        int i7 = i2 / 12;
        int i8 = i2 % 12;
        while (i8 < 0) {
            i8 += 12;
            i7 = Jdk8Methods.safeSubtract(i7, 1);
        }
        return of(this.era, Jdk8Methods.safeAdd(this.yearOfEra, i7), i8 + 1, this.dayOfMonth);
    }

    @Override // org.threeten.bp.chrono.ChronoDateImpl
    public ChronoDateImpl<HijrahDate> plusYears(long j7) {
        if (j7 == 0) {
            return this;
        }
        return of(this.era, Jdk8Methods.safeAdd(this.yearOfEra, (int) j7), this.monthOfYear, this.dayOfMonth);
    }

    @Override // org.threeten.bp.chrono.ChronoDateImpl, org.threeten.bp.chrono.ChronoLocalDate
    public /* bridge */ /* synthetic */ ChronoPeriod until(ChronoLocalDate chronoLocalDate) {
        return super.until(chronoLocalDate);
    }

    public static HijrahDate now(Clock clock) {
        return HijrahChronology.INSTANCE.dateNow(clock);
    }

    public static HijrahDate of(HijrahEra hijrahEra, int i2, int i7, int i8) {
        Jdk8Methods.requireNonNull(hijrahEra, "era");
        checkValidYearOfEra(i2);
        checkValidMonth(i7);
        checkValidDayOfMonth(i8);
        return new HijrahDate(getGregorianEpochDay(hijrahEra.prolepticYear(i2), i7, i8));
    }

    @Override // org.threeten.bp.chrono.ChronoLocalDate, org.threeten.bp.jdk8.DefaultInterfaceTemporal, org.threeten.bp.temporal.Temporal
    public HijrahDate minus(TemporalAmount temporalAmount) {
        return (HijrahDate) super.minus(temporalAmount);
    }

    @Override // org.threeten.bp.chrono.ChronoLocalDate, org.threeten.bp.jdk8.DefaultInterfaceTemporal, org.threeten.bp.temporal.Temporal
    public HijrahDate with(TemporalAdjuster temporalAdjuster) {
        return (HijrahDate) super.with(temporalAdjuster);
    }

    @Override // org.threeten.bp.chrono.ChronoLocalDate, org.threeten.bp.jdk8.DefaultInterfaceTemporal, org.threeten.bp.temporal.Temporal
    public HijrahDate minus(long j7, TemporalUnit temporalUnit) {
        return (HijrahDate) super.minus(j7, temporalUnit);
    }

    @Override // org.threeten.bp.chrono.ChronoLocalDate, org.threeten.bp.jdk8.DefaultInterfaceTemporal, org.threeten.bp.temporal.Temporal
    public HijrahDate plus(TemporalAmount temporalAmount) {
        return (HijrahDate) super.plus(temporalAmount);
    }

    /* JADX WARN: Type inference failed for: r6v14, types: [org.threeten.bp.chrono.HijrahDate] */
    /* JADX WARN: Type inference failed for: r6v16, types: [org.threeten.bp.chrono.HijrahDate] */
    /* JADX WARN: Type inference failed for: r6v18, types: [org.threeten.bp.chrono.HijrahDate] */
    /* JADX WARN: Type inference failed for: r6v21, types: [org.threeten.bp.chrono.HijrahDate] */
    /* JADX WARN: Type inference failed for: r6v8, types: [org.threeten.bp.chrono.HijrahDate] */
    @Override // org.threeten.bp.chrono.ChronoLocalDate, org.threeten.bp.temporal.Temporal
    public HijrahDate with(TemporalField temporalField, long j7) {
        if (temporalField instanceof ChronoField) {
            ChronoField chronoField = (ChronoField) temporalField;
            chronoField.checkValidValue(j7);
            int i2 = (int) j7;
            switch (AnonymousClass1.$SwitchMap$org$threeten$bp$temporal$ChronoField[chronoField.ordinal()]) {
                case 1:
                    return resolvePreviousValid(this.yearOfEra, this.monthOfYear, i2);
                case 2:
                    int i7 = i2 - 1;
                    return resolvePreviousValid(this.yearOfEra, (i7 / 30) + 1, (i7 % 30) + 1);
                case 3:
                    return plusDays((j7 - getLong(ChronoField.ALIGNED_WEEK_OF_MONTH)) * 7);
                case 4:
                    if (this.yearOfEra < 1) {
                        i2 = 1 - i2;
                    }
                    return resolvePreviousValid(i2, this.monthOfYear, this.dayOfMonth);
                case 5:
                    return plusDays(j7 - this.dayOfWeek.getValue());
                case 6:
                    return plusDays(j7 - getLong(ChronoField.ALIGNED_DAY_OF_WEEK_IN_MONTH));
                case 7:
                    return plusDays(j7 - getLong(ChronoField.ALIGNED_DAY_OF_WEEK_IN_YEAR));
                case 8:
                    return new HijrahDate(i2);
                case 9:
                    return plusDays((j7 - getLong(ChronoField.ALIGNED_WEEK_OF_YEAR)) * 7);
                case 10:
                    return resolvePreviousValid(this.yearOfEra, i2, this.dayOfMonth);
                case 11:
                    return resolvePreviousValid(i2, this.monthOfYear, this.dayOfMonth);
                case 12:
                    return resolvePreviousValid(1 - this.yearOfEra, this.monthOfYear, this.dayOfMonth);
                default:
                    throw new UnsupportedTemporalTypeException(c.n("Unsupported field: ", temporalField));
            }
        }
        return (HijrahDate) temporalField.adjustInto(this, j7);
    }

    @Override // org.threeten.bp.chrono.ChronoDateImpl, org.threeten.bp.chrono.ChronoLocalDate, org.threeten.bp.temporal.Temporal
    public HijrahDate plus(long j7, TemporalUnit temporalUnit) {
        return (HijrahDate) super.plus(j7, temporalUnit);
    }

    public static HijrahDate of(LocalDate localDate) {
        return new HijrahDate(localDate.toEpochDay());
    }
}
