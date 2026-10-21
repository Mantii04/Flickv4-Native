package org.apache.commons.lang3;

import androidx.media3.common.util.Log;
import com.google.firebase.remoteconfig.FirebaseRemoteConfig;
import java.util.Random;

/* loaded from: classes2.dex */
public class RandomUtils {
    private static final Random RANDOM = new Random();

    public static boolean nextBoolean() {
        return RANDOM.nextBoolean();
    }

    public static byte[] nextBytes(int i2) {
        Validate.isTrue(i2 >= 0, "Count cannot be negative.", new Object[0]);
        byte[] bArr = new byte[i2];
        RANDOM.nextBytes(bArr);
        return bArr;
    }

    public static double nextDouble(double d7, double d8) {
        Validate.isTrue(d8 >= d7, "Start value must be smaller or equal to end value.", new Object[0]);
        Validate.isTrue(d7 >= FirebaseRemoteConfig.DEFAULT_VALUE_FOR_DOUBLE, "Both range values must be non-negative.", new Object[0]);
        if (d7 == d8) {
            return d7;
        }
        return (RANDOM.nextDouble() * (d8 - d7)) + d7;
    }

    public static float nextFloat(float f3, float f7) {
        Validate.isTrue(f7 >= f3, "Start value must be smaller or equal to end value.", new Object[0]);
        Validate.isTrue(f3 >= 0.0f, "Both range values must be non-negative.", new Object[0]);
        if (f3 == f7) {
            return f3;
        }
        return (RANDOM.nextFloat() * (f7 - f3)) + f3;
    }

    public static int nextInt(int i2, int i7) {
        Validate.isTrue(i7 >= i2, "Start value must be smaller or equal to end value.", new Object[0]);
        Validate.isTrue(i2 >= 0, "Both range values must be non-negative.", new Object[0]);
        return i2 == i7 ? i2 : RANDOM.nextInt(i7 - i2) + i2;
    }

    public static long nextLong(long j7, long j8) {
        Validate.isTrue(j8 >= j7, "Start value must be smaller or equal to end value.", new Object[0]);
        Validate.isTrue(j7 >= 0, "Both range values must be non-negative.", new Object[0]);
        return j7 == j8 ? j7 : (long) nextDouble(j7, j8);
    }

    public static double nextDouble() {
        return nextDouble(FirebaseRemoteConfig.DEFAULT_VALUE_FOR_DOUBLE, Double.MAX_VALUE);
    }

    public static float nextFloat() {
        return nextFloat(0.0f, Float.MAX_VALUE);
    }

    public static int nextInt() {
        return nextInt(0, Log.LOG_LEVEL_OFF);
    }

    public static long nextLong() {
        return nextLong(0L, Long.MAX_VALUE);
    }
}
