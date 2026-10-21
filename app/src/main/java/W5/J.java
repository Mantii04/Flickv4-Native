package W5;

import androidx.media3.common.util.Log;

/* loaded from: classes2.dex */
public abstract /* synthetic */ class J {
    public static final boolean systemProp(String str, boolean z6) {
        String systemProp = H.systemProp(str);
        return systemProp != null ? Boolean.parseBoolean(systemProp) : z6;
    }

    public static /* synthetic */ int systemProp$default(String str, int i2, int i7, int i8, int i9, Object obj) {
        if ((i9 & 4) != 0) {
            i7 = 1;
        }
        if ((i9 & 8) != 0) {
            i8 = Log.LOG_LEVEL_OFF;
        }
        return H.systemProp(str, i2, i7, i8);
    }

    public static final int systemProp(String str, int i2, int i7, int i8) {
        return (int) H.systemProp(str, i2, i7, i8);
    }

    public static /* synthetic */ long systemProp$default(String str, long j7, long j8, long j9, int i2, Object obj) {
        if ((i2 & 4) != 0) {
            j8 = 1;
        }
        long j10 = j8;
        if ((i2 & 8) != 0) {
            j9 = Long.MAX_VALUE;
        }
        return H.systemProp(str, j7, j10, j9);
    }

    public static final long systemProp(String str, long j7, long j8, long j9) {
        String systemProp = H.systemProp(str);
        if (systemProp == null) {
            return j7;
        }
        Long longOrNull = P5.o.toLongOrNull(systemProp);
        if (longOrNull == null) {
            throw new IllegalStateException(("System property '" + str + "' has unrecognized value '" + systemProp + '\'').toString());
        }
        long longValue = longOrNull.longValue();
        if (j8 <= longValue && longValue <= j9) {
            return longValue;
        }
        throw new IllegalStateException(("System property '" + str + "' should be in range " + j8 + ".." + j9 + ", but is '" + longValue + '\'').toString());
    }

    public static final String systemProp(String str, String str2) {
        String systemProp = H.systemProp(str);
        return systemProp == null ? str2 : systemProp;
    }
}
