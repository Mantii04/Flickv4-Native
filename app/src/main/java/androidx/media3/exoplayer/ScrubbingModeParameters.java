package androidx.media3.exoplayer;

import androidx.media3.common.util.UnstableApi;
import com.google.common.collect.ImmutableSet;
import com.google.firebase.remoteconfig.FirebaseRemoteConfig;
import java.util.Collection;
import java.util.Objects;
import java.util.Set;

@UnstableApi
/* loaded from: classes.dex */
public final class ScrubbingModeParameters {
    public static final ScrubbingModeParameters DEFAULT = new Builder().build();
    public final boolean allowSkippingKeyFrameReset;
    public final boolean allowSkippingMediaCodecFlush;
    public final ImmutableSet<Integer> disabledTrackTypes;
    public final Double fractionalSeekToleranceAfter;
    public final Double fractionalSeekToleranceBefore;

    @Deprecated
    public final boolean isMediaCodecFlushEnabled;
    public final boolean shouldEnableDynamicScheduling;
    public final boolean shouldIncreaseCodecOperatingRate;
    public final boolean useDecodeOnlyFlag;

    public static final class Builder {
        private boolean allowSkippingKeyFrameReset;
        private boolean allowSkippingMediaCodecFlush;
        private ImmutableSet<Integer> disabledTrackTypes;
        private Double fractionalSeekToleranceAfter;
        private Double fractionalSeekToleranceBefore;
        private boolean shouldEnableDynamicScheduling;
        private boolean shouldIncreaseCodecOperatingRate;
        private boolean useDecodeOnlyFlag;

        public ScrubbingModeParameters build() {
            return new ScrubbingModeParameters(this);
        }

        public Builder setAllowSkippingKeyFrameReset(boolean z6) {
            this.allowSkippingKeyFrameReset = z6;
            return this;
        }

        public Builder setAllowSkippingMediaCodecFlush(boolean z6) {
            this.allowSkippingMediaCodecFlush = z6;
            return this;
        }

        public Builder setDisabledTrackTypes(Set<Integer> set) {
            this.disabledTrackTypes = ImmutableSet.copyOf((Collection) set);
            return this;
        }

        public Builder setFractionalSeekTolerance(Double d7, Double d8) {
            boolean z6 = false;
            P3.v.checkArgument((d7 == null) == (d8 == null));
            P3.v.checkArgument(d7 == null || (d7.doubleValue() >= FirebaseRemoteConfig.DEFAULT_VALUE_FOR_DOUBLE && d7.doubleValue() <= 1.0d));
            if (d8 == null || (d8.doubleValue() >= FirebaseRemoteConfig.DEFAULT_VALUE_FOR_DOUBLE && d8.doubleValue() <= 1.0d)) {
                z6 = true;
            }
            P3.v.checkArgument(z6);
            this.fractionalSeekToleranceBefore = d7;
            this.fractionalSeekToleranceAfter = d8;
            return this;
        }

        @Deprecated
        public Builder setIsMediaCodecFlushEnabled(boolean z6) {
            this.allowSkippingMediaCodecFlush = !z6;
            return this;
        }

        public Builder setShouldEnableDynamicScheduling(boolean z6) {
            this.shouldEnableDynamicScheduling = z6;
            return this;
        }

        public Builder setShouldIncreaseCodecOperatingRate(boolean z6) {
            this.shouldIncreaseCodecOperatingRate = z6;
            return this;
        }

        public Builder setUseDecodeOnlyFlag(boolean z6) {
            this.useDecodeOnlyFlag = z6;
            return this;
        }

        public Builder() {
            this.disabledTrackTypes = ImmutableSet.of(1, 5);
            this.shouldIncreaseCodecOperatingRate = true;
            this.allowSkippingMediaCodecFlush = true;
            this.allowSkippingKeyFrameReset = true;
            this.shouldEnableDynamicScheduling = true;
            this.useDecodeOnlyFlag = true;
        }

        private Builder(ScrubbingModeParameters scrubbingModeParameters) {
            this.disabledTrackTypes = scrubbingModeParameters.disabledTrackTypes;
            this.fractionalSeekToleranceBefore = scrubbingModeParameters.fractionalSeekToleranceBefore;
            this.fractionalSeekToleranceAfter = scrubbingModeParameters.fractionalSeekToleranceAfter;
            this.shouldIncreaseCodecOperatingRate = scrubbingModeParameters.shouldIncreaseCodecOperatingRate;
            this.allowSkippingMediaCodecFlush = scrubbingModeParameters.allowSkippingMediaCodecFlush;
            this.allowSkippingKeyFrameReset = scrubbingModeParameters.allowSkippingKeyFrameReset;
            this.shouldEnableDynamicScheduling = scrubbingModeParameters.shouldEnableDynamicScheduling;
            this.useDecodeOnlyFlag = scrubbingModeParameters.useDecodeOnlyFlag;
        }
    }

    public Builder buildUpon() {
        return new Builder();
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof ScrubbingModeParameters)) {
            return false;
        }
        ScrubbingModeParameters scrubbingModeParameters = (ScrubbingModeParameters) obj;
        return this.disabledTrackTypes.equals(scrubbingModeParameters.disabledTrackTypes) && this.allowSkippingMediaCodecFlush == scrubbingModeParameters.allowSkippingMediaCodecFlush && this.allowSkippingKeyFrameReset == scrubbingModeParameters.allowSkippingKeyFrameReset && Objects.equals(this.fractionalSeekToleranceBefore, scrubbingModeParameters.fractionalSeekToleranceBefore) && Objects.equals(this.fractionalSeekToleranceAfter, scrubbingModeParameters.fractionalSeekToleranceAfter) && this.shouldIncreaseCodecOperatingRate == scrubbingModeParameters.shouldIncreaseCodecOperatingRate && this.shouldEnableDynamicScheduling == scrubbingModeParameters.shouldEnableDynamicScheduling && this.useDecodeOnlyFlag == scrubbingModeParameters.useDecodeOnlyFlag;
    }

    public int hashCode() {
        return Objects.hash(this.disabledTrackTypes, this.fractionalSeekToleranceBefore, this.fractionalSeekToleranceAfter, Boolean.valueOf(this.shouldIncreaseCodecOperatingRate), Boolean.valueOf(this.allowSkippingMediaCodecFlush), Boolean.valueOf(this.allowSkippingKeyFrameReset), Boolean.valueOf(this.shouldEnableDynamicScheduling), Boolean.valueOf(this.useDecodeOnlyFlag));
    }

    private ScrubbingModeParameters(Builder builder) {
        this.disabledTrackTypes = builder.disabledTrackTypes;
        this.fractionalSeekToleranceBefore = builder.fractionalSeekToleranceBefore;
        this.fractionalSeekToleranceAfter = builder.fractionalSeekToleranceAfter;
        this.shouldIncreaseCodecOperatingRate = builder.shouldIncreaseCodecOperatingRate;
        this.isMediaCodecFlushEnabled = !builder.allowSkippingMediaCodecFlush;
        this.allowSkippingMediaCodecFlush = builder.allowSkippingMediaCodecFlush;
        this.allowSkippingKeyFrameReset = builder.allowSkippingKeyFrameReset;
        this.shouldEnableDynamicScheduling = builder.shouldEnableDynamicScheduling;
        this.useDecodeOnlyFlag = builder.useDecodeOnlyFlag;
    }
}
