package androidx.media3.common.util;

import P3.v;
import androidx.media3.common.C;
import androidx.media3.common.audio.SpeedProvider;
import com.google.firebase.remoteconfig.FirebaseRemoteConfig;

@UnstableApi
/* loaded from: classes.dex */
public class SpeedProviderUtil {
    private SpeedProviderUtil() {
    }

    public static long getDurationAfterSpeedProviderApplied(SpeedProvider speedProvider, long j7) {
        long j8 = 0;
        double d7 = FirebaseRemoteConfig.DEFAULT_VALUE_FOR_DOUBLE;
        while (j8 < j7) {
            long nextSpeedChangeTimeUs = speedProvider.getNextSpeedChangeTimeUs(j8);
            if (nextSpeedChangeTimeUs == C.TIME_UNSET) {
                nextSpeedChangeTimeUs = Long.MAX_VALUE;
            }
            v.checkState(nextSpeedChangeTimeUs > j8);
            d7 += (Math.min(nextSpeedChangeTimeUs, j7) - j8) / speedProvider.getSpeed(j8);
            j8 = nextSpeedChangeTimeUs;
        }
        return (long) Math.floor(d7);
    }

    public static long getNextSpeedChangeSamplePosition(SpeedProvider speedProvider, long j7, int i2) {
        v.checkArgument(j7 >= 0);
        v.checkArgument(i2 > 0);
        long nextSpeedChangeTimeUs = speedProvider.getNextSpeedChangeTimeUs(Util.sampleCountToDurationUs(j7, i2));
        if (nextSpeedChangeTimeUs == C.TIME_UNSET) {
            return -1L;
        }
        return Util.durationUsToSampleCount(nextSpeedChangeTimeUs, i2);
    }

    public static float getSampleAlignedSpeed(SpeedProvider speedProvider, long j7, int i2) {
        v.checkArgument(j7 >= 0);
        v.checkArgument(i2 > 0);
        return speedProvider.getSpeed(Util.sampleCountToDurationUs(j7, i2));
    }
}
