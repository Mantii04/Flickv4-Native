package androidx.media3.common;

import android.annotation.SuppressLint;
import android.media.AudioAttributes;
import android.os.Build;
import android.os.Bundle;
import androidx.media3.common.util.UnstableApi;
import androidx.media3.common.util.Util;

/* loaded from: classes.dex */
public final class AudioAttributes {
    public final int allowedCapturePolicy;
    public final int contentType;
    public final int flags;

    @UnstableApi
    public final boolean hapticChannelsMuted;

    @UnstableApi
    public final boolean isContentSpatialized;
    private android.media.AudioAttributes platformAudioAttributes;
    public final int spatializationBehavior;
    public final int usage;
    public static final AudioAttributes DEFAULT = new Builder().build();
    private static final String FIELD_CONTENT_TYPE = Util.intToStringMaxRadix(0);
    private static final String FIELD_FLAGS = Util.intToStringMaxRadix(1);
    private static final String FIELD_USAGE = Util.intToStringMaxRadix(2);
    private static final String FIELD_ALLOWED_CAPTURE_POLICY = Util.intToStringMaxRadix(3);
    private static final String FIELD_SPATIALIZATION_BEHAVIOR = Util.intToStringMaxRadix(4);
    private static final String FIELD_IS_CONTENT_SPATIALIZED = Util.intToStringMaxRadix(5);
    private static final String FIELD_HAPTIC_CHANNELS_MUTED = Util.intToStringMaxRadix(6);

    public static final class Api29 {
        private Api29() {
        }

        @SuppressLint({"WrongConstant"})
        public static void setAllowedCapturePolicy(AudioAttributes.Builder builder, int i2) {
            builder.setAllowedCapturePolicy(i2);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static void setHapticChannelsMuted(AudioAttributes.Builder builder, boolean z6) {
            builder.setHapticChannelsMuted(z6);
        }
    }

    public static final class Api32 {
        private Api32() {
        }

        public static void setIsContentSpatialized(AudioAttributes.Builder builder, boolean z6) {
            builder.setIsContentSpatialized(z6);
        }

        @SuppressLint({"WrongConstant"})
        public static void setSpatializationBehavior(AudioAttributes.Builder builder, int i2) {
            builder.setSpatializationBehavior(i2);
        }
    }

    @Deprecated
    public static final class AudioAttributesV21 {
        public final android.media.AudioAttributes audioAttributes;

        private AudioAttributesV21(android.media.AudioAttributes audioAttributes) {
            this.audioAttributes = audioAttributes;
        }
    }

    public static final class Builder {
        private int contentType = 0;
        private int flags = 0;
        private int usage = 1;
        private int allowedCapturePolicy = 1;
        private int spatializationBehavior = 0;
        private boolean isContentSpatialized = false;
        private boolean hapticChannelsMuted = true;

        public AudioAttributes build() {
            return new AudioAttributes(this.contentType, this.flags, this.usage, this.allowedCapturePolicy, this.spatializationBehavior, this.isContentSpatialized, this.hapticChannelsMuted);
        }

        public Builder setAllowedCapturePolicy(int i2) {
            this.allowedCapturePolicy = i2;
            return this;
        }

        public Builder setContentType(int i2) {
            this.contentType = i2;
            return this;
        }

        public Builder setFlags(int i2) {
            this.flags = i2;
            return this;
        }

        @UnstableApi
        public Builder setHapticChannelsMuted(boolean z6) {
            this.hapticChannelsMuted = z6;
            return this;
        }

        @UnstableApi
        public Builder setIsContentSpatialized(boolean z6) {
            this.isContentSpatialized = z6;
            return this;
        }

        public Builder setSpatializationBehavior(int i2) {
            this.spatializationBehavior = i2;
            return this;
        }

        public Builder setUsage(int i2) {
            this.usage = i2;
            return this;
        }
    }

    @UnstableApi
    public static AudioAttributes fromBundle(Bundle bundle) {
        Builder builder = new Builder();
        String str = FIELD_CONTENT_TYPE;
        if (bundle.containsKey(str)) {
            builder.setContentType(bundle.getInt(str));
        }
        String str2 = FIELD_FLAGS;
        if (bundle.containsKey(str2)) {
            builder.setFlags(bundle.getInt(str2));
        }
        String str3 = FIELD_USAGE;
        if (bundle.containsKey(str3)) {
            builder.setUsage(bundle.getInt(str3));
        }
        String str4 = FIELD_ALLOWED_CAPTURE_POLICY;
        if (bundle.containsKey(str4)) {
            builder.setAllowedCapturePolicy(bundle.getInt(str4));
        }
        String str5 = FIELD_SPATIALIZATION_BEHAVIOR;
        if (bundle.containsKey(str5)) {
            builder.setSpatializationBehavior(bundle.getInt(str5));
        }
        String str6 = FIELD_IS_CONTENT_SPATIALIZED;
        if (bundle.containsKey(str6)) {
            builder.setIsContentSpatialized(bundle.getBoolean(str6));
        }
        String str7 = FIELD_HAPTIC_CHANNELS_MUTED;
        if (bundle.containsKey(str7)) {
            builder.setHapticChannelsMuted(bundle.getBoolean(str7));
        }
        return builder.build();
    }

    @SuppressLint({"WrongConstant"})
    public static AudioAttributes fromPlatformAudioAttributes(android.media.AudioAttributes audioAttributes) {
        int spatializationBehavior;
        boolean isContentSpatialized;
        int allowedCapturePolicy;
        boolean areHapticChannelsMuted;
        Builder usage = new Builder().setContentType(audioAttributes.getContentType()).setFlags(audioAttributes.getFlags()).setUsage(audioAttributes.getUsage());
        int i2 = Build.VERSION.SDK_INT;
        if (i2 >= 29) {
            allowedCapturePolicy = audioAttributes.getAllowedCapturePolicy();
            usage.setAllowedCapturePolicy(allowedCapturePolicy);
            areHapticChannelsMuted = audioAttributes.areHapticChannelsMuted();
            usage.setHapticChannelsMuted(areHapticChannelsMuted);
        }
        if (i2 >= 32) {
            spatializationBehavior = audioAttributes.getSpatializationBehavior();
            usage.setSpatializationBehavior(spatializationBehavior);
            isContentSpatialized = audioAttributes.isContentSpatialized();
            usage.setIsContentSpatialized(isContentSpatialized);
        }
        return usage.build();
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && AudioAttributes.class == obj.getClass()) {
            AudioAttributes audioAttributes = (AudioAttributes) obj;
            if (this.contentType == audioAttributes.contentType && this.flags == audioAttributes.flags && this.usage == audioAttributes.usage && this.allowedCapturePolicy == audioAttributes.allowedCapturePolicy && this.spatializationBehavior == audioAttributes.spatializationBehavior && this.isContentSpatialized == audioAttributes.isContentSpatialized && this.hapticChannelsMuted == audioAttributes.hapticChannelsMuted) {
                return true;
            }
        }
        return false;
    }

    @Deprecated
    public AudioAttributesV21 getAudioAttributesV21() {
        return new AudioAttributesV21(getPlatformAudioAttributes());
    }

    public android.media.AudioAttributes getPlatformAudioAttributes() {
        if (this.platformAudioAttributes == null) {
            AudioAttributes.Builder usage = new AudioAttributes.Builder().setContentType(this.contentType).setFlags(this.flags).setUsage(this.usage);
            int i2 = Build.VERSION.SDK_INT;
            if (i2 >= 29) {
                Api29.setAllowedCapturePolicy(usage, this.allowedCapturePolicy);
                Api29.setHapticChannelsMuted(usage, this.hapticChannelsMuted);
            }
            if (i2 >= 32) {
                Api32.setSpatializationBehavior(usage, this.spatializationBehavior);
                Api32.setIsContentSpatialized(usage, this.isContentSpatialized);
            }
            this.platformAudioAttributes = usage.build();
        }
        return this.platformAudioAttributes;
    }

    @UnstableApi
    public int getStreamType() {
        if ((this.flags & 1) == 1) {
            return 1;
        }
        switch (this.usage) {
        }
        return 1;
    }

    public int hashCode() {
        return ((((((((((((527 + this.contentType) * 31) + this.flags) * 31) + this.usage) * 31) + this.allowedCapturePolicy) * 31) + this.spatializationBehavior) * 31) + (this.isContentSpatialized ? 1 : 0)) * 31) + (this.hapticChannelsMuted ? 1 : 0);
    }

    @UnstableApi
    public Bundle toBundle() {
        Bundle bundle = new Bundle();
        int i2 = this.contentType;
        if (i2 != 0) {
            bundle.putInt(FIELD_CONTENT_TYPE, i2);
        }
        int i7 = this.flags;
        if (i7 != 0) {
            bundle.putInt(FIELD_FLAGS, i7);
        }
        int i8 = this.usage;
        if (i8 != 1) {
            bundle.putInt(FIELD_USAGE, i8);
        }
        int i9 = this.allowedCapturePolicy;
        if (i9 != 1) {
            bundle.putInt(FIELD_ALLOWED_CAPTURE_POLICY, i9);
        }
        int i10 = this.spatializationBehavior;
        if (i10 != 0) {
            bundle.putInt(FIELD_SPATIALIZATION_BEHAVIOR, i10);
        }
        boolean z6 = this.isContentSpatialized;
        if (z6) {
            bundle.putBoolean(FIELD_IS_CONTENT_SPATIALIZED, z6);
        }
        boolean z7 = this.hapticChannelsMuted;
        if (!z7) {
            bundle.putBoolean(FIELD_HAPTIC_CHANNELS_MUTED, z7);
        }
        return bundle;
    }

    private AudioAttributes(int i2, int i7, int i8, int i9, int i10, boolean z6, boolean z7) {
        this.contentType = i2;
        this.flags = i7;
        this.usage = i8;
        this.allowedCapturePolicy = i9;
        this.spatializationBehavior = i10;
        this.isContentSpatialized = z6;
        this.hapticChannelsMuted = z7;
    }
}
