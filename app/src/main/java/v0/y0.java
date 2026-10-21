package v0;

import androidx.media3.common.util.Util;

/* loaded from: classes.dex */
public abstract class y0 {
    public static int getPcmEncodingForType(int i2, int i7) {
        if (i2 != 1) {
            if (i2 == 3) {
                return i7 == 32 ? 4 : 0;
            }
            if (i2 != 65534) {
                return 0;
            }
        }
        return Util.getPcmEncoding(i7);
    }

    public static int getTypeForPcmEncoding(int i2) {
        if (i2 == 2 || i2 == 3) {
            return 1;
        }
        if (i2 == 4) {
            return 3;
        }
        if (i2 == 21 || i2 == 22) {
            return 1;
        }
        throw new IllegalArgumentException();
    }
}
