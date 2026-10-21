package androidx.media3.exoplayer.audio;

import Q3.C0248s;
import Q3.x0;
import android.annotation.SuppressLint;
import android.content.ContentResolver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.media.AudioDeviceInfo;
import android.media.AudioFormat;
import android.media.AudioManager;
import android.media.AudioTrack;
import android.net.Uri;
import android.os.Build;
import android.provider.Settings;
import android.util.Pair;
import android.util.SparseArray;
import androidx.media3.common.AudioAttributes;
import androidx.media3.common.Format;
import androidx.media3.common.MimeTypes;
import androidx.media3.common.audio.AudioManagerCompat;
import androidx.media3.common.util.UnstableApi;
import androidx.media3.common.util.Util;
import androidx.media3.exoplayer.analytics.y;
import com.google.common.collect.ImmutableList;
import com.google.common.collect.ImmutableMap;
import com.google.common.collect.ImmutableSet;
import com.google.common.collect.w;
import com.google.common.collect.z;
import java.util.Collection;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.Set;

@UnstableApi
/* loaded from: classes.dex */
public final class AudioCapabilities {
    static final int DEFAULT_MAX_CHANNEL_COUNT = 10;
    static final int DEFAULT_SAMPLE_RATE_HZ = 48000;
    private static final String EXTERNAL_SURROUND_SOUND_KEY = "external_surround_sound_enabled";
    private static final String FORCE_EXTERNAL_SURROUND_SOUND_KEY = "use_external_surround_sound_flag";
    private final SparseArray<AudioProfile> encodingToAudioProfile;
    private final int maxChannelCount;
    public static final AudioCapabilities DEFAULT_AUDIO_CAPABILITIES = new AudioCapabilities(ImmutableList.of(AudioProfile.DEFAULT_AUDIO_PROFILE));

    @SuppressLint({"InlinedApi"})
    private static final ImmutableList<Integer> EXTERNAL_SURROUND_SOUND_ENCODINGS = ImmutableList.of(2, 5, 6);
    static final ImmutableMap<Integer, Integer> ALL_SURROUND_ENCODINGS_AND_MAX_CHANNELS = new w().put(5, 6).put(17, 6).put(7, 6).put(30, 10).put(18, 6).put(6, 8).put(8, 8).put(14, 8).buildOrThrow();

    public static final class Api29 {
        private Api29() {
        }

        public static ImmutableList<Integer> getDirectPlaybackSupportedEncodings(AudioAttributes audioAttributes) {
            boolean isDirectPlaybackSupported;
            C0248s builder = ImmutableList.builder();
            x0 it = AudioCapabilities.ALL_SURROUND_ENCODINGS_AND_MAX_CHANNELS.keySet().iterator();
            while (it.hasNext()) {
                Integer num = (Integer) it.next();
                int intValue = num.intValue();
                if (Build.VERSION.SDK_INT >= Util.getApiLevelThatAudioFormatIntroducedAudioEncoding(intValue)) {
                    isDirectPlaybackSupported = AudioTrack.isDirectPlaybackSupported(new AudioFormat.Builder().setChannelMask(12).setEncoding(intValue).setSampleRate(AudioCapabilities.DEFAULT_SAMPLE_RATE_HZ).build(), audioAttributes.getPlatformAudioAttributes());
                    if (isDirectPlaybackSupported) {
                        builder.add((Object) num);
                    }
                }
            }
            builder.add((Object) 2);
            return builder.build();
        }

        public static int getMaxSupportedChannelCountForPassthrough(int i2, int i7, AudioAttributes audioAttributes) {
            boolean isDirectPlaybackSupported;
            for (int i8 = 10; i8 > 0; i8--) {
                int audioTrackChannelConfig = Util.getAudioTrackChannelConfig(i8);
                if (audioTrackChannelConfig != 0) {
                    isDirectPlaybackSupported = AudioTrack.isDirectPlaybackSupported(new AudioFormat.Builder().setEncoding(i2).setSampleRate(i7).setChannelMask(audioTrackChannelConfig).build(), audioAttributes.getPlatformAudioAttributes());
                    if (isDirectPlaybackSupported) {
                        return i8;
                    }
                }
            }
            return 0;
        }
    }

    public static final class Api33 {
        private Api33() {
        }

        public static AudioCapabilities getCapabilitiesInternalForDirectPlayback(AudioManager audioManager, AudioAttributes audioAttributes) {
            List directProfilesForAttributes;
            directProfilesForAttributes = audioManager.getDirectProfilesForAttributes(audioAttributes.getPlatformAudioAttributes());
            return new AudioCapabilities(AudioCapabilities.getAudioProfiles(directProfilesForAttributes));
        }

        public static AudioDeviceInfo getDefaultRoutedDeviceForAttributes(AudioManager audioManager, AudioAttributes audioAttributes) {
            List audioDevicesForAttributes;
            audioDevicesForAttributes = ((AudioManager) P3.v.checkNotNull(audioManager)).getAudioDevicesForAttributes(audioAttributes.getPlatformAudioAttributes());
            if (audioDevicesForAttributes.isEmpty()) {
                return null;
            }
            return (AudioDeviceInfo) audioDevicesForAttributes.get(0);
        }
    }

    private static boolean deviceMaySetExternalSurroundSoundGlobalSetting() {
        String str = Build.MANUFACTURER;
        return str.equals("Amazon") || str.equals("Xiaomi");
    }

    private static ImmutableSet<Integer> getAllBluetoothDeviceTypes() {
        z add = new z().add((Object[]) new Integer[]{8, 7});
        int i2 = Build.VERSION.SDK_INT;
        if (i2 >= 31) {
            add.add((Object[]) new Integer[]{26, 27});
        }
        if (i2 >= 33) {
            add.add((Object) 30);
        }
        return add.build();
    }

    /* JADX INFO: Access modifiers changed from: private */
    @SuppressLint({"WrongConstant"})
    public static ImmutableList<AudioProfile> getAudioProfiles(List<android.media.AudioProfile> list) {
        int encapsulationType;
        int format;
        int[] channelMasks;
        int[] channelMasks2;
        HashMap hashMap = new HashMap();
        hashMap.put(2, new HashSet(com.google.common.primitives.a.asList(12)));
        for (int i2 = 0; i2 < list.size(); i2++) {
            android.media.AudioProfile c7 = y.c(list.get(i2));
            encapsulationType = c7.getEncapsulationType();
            if (encapsulationType != 1) {
                format = c7.getFormat();
                if (Util.isEncodingLinearPcm(format) || ALL_SURROUND_ENCODINGS_AND_MAX_CHANNELS.containsKey(Integer.valueOf(format))) {
                    if (hashMap.containsKey(Integer.valueOf(format))) {
                        Set set = (Set) P3.v.checkNotNull((Set) hashMap.get(Integer.valueOf(format)));
                        channelMasks2 = c7.getChannelMasks();
                        set.addAll(com.google.common.primitives.a.asList(channelMasks2));
                    } else {
                        Integer valueOf = Integer.valueOf(format);
                        channelMasks = c7.getChannelMasks();
                        hashMap.put(valueOf, new HashSet(com.google.common.primitives.a.asList(channelMasks)));
                    }
                }
            }
        }
        C0248s builder = ImmutableList.builder();
        for (Map.Entry entry : hashMap.entrySet()) {
            builder.add((Object) new AudioProfile(((Integer) entry.getKey()).intValue(), (Set<Integer>) entry.getValue()));
        }
        return builder.build();
    }

    @Deprecated
    public static AudioCapabilities getCapabilities(Context context) {
        return getCapabilities(context, AudioAttributes.DEFAULT, null);
    }

    @SuppressLint({"UnprotectedReceiver"})
    public static AudioCapabilities getCapabilitiesInternal(Context context, AudioAttributes audioAttributes, AudioDeviceInfo audioDeviceInfo) {
        return getCapabilitiesInternal(context, context.registerReceiver(null, new IntentFilter("android.media.action.HDMI_AUDIO_PLUG")), audioAttributes, audioDeviceInfo);
    }

    private static int getChannelConfigForPassthrough(int i2) {
        int i7 = Build.VERSION.SDK_INT;
        if (i7 <= 28) {
            if (i2 == 7) {
                i2 = 8;
            } else if (i2 == 3 || i2 == 4 || i2 == 5) {
                i2 = 6;
            }
        }
        if (i7 <= 26 && "fugu".equals(Build.DEVICE) && i2 == 1) {
            i2 = 2;
        }
        return Util.getAudioTrackChannelConfig(i2);
    }

    public static Uri getExternalSurroundSoundGlobalSettingUri() {
        if (deviceMaySetExternalSurroundSoundGlobalSetting()) {
            return Settings.Global.getUriFor(EXTERNAL_SURROUND_SOUND_KEY);
        }
        return null;
    }

    private static boolean isBluetoothConnected(AudioManager audioManager, AudioDeviceInfo audioDeviceInfo) {
        AudioDeviceInfo[] devices = audioDeviceInfo == null ? ((AudioManager) P3.v.checkNotNull(audioManager)).getDevices(2) : new AudioDeviceInfo[]{audioDeviceInfo};
        ImmutableSet<Integer> allBluetoothDeviceTypes = getAllBluetoothDeviceTypes();
        for (AudioDeviceInfo audioDeviceInfo2 : devices) {
            if (allBluetoothDeviceTypes.contains(Integer.valueOf(audioDeviceInfo2.getType()))) {
                return true;
            }
        }
        return false;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof AudioCapabilities)) {
            return false;
        }
        AudioCapabilities audioCapabilities = (AudioCapabilities) obj;
        return Util.contentEquals(this.encodingToAudioProfile, audioCapabilities.encodingToAudioProfile) && this.maxChannelCount == audioCapabilities.maxChannelCount;
    }

    @Deprecated
    public Pair<Integer, Integer> getEncodingAndChannelConfigForPassthrough(Format format) {
        return getEncodingAndChannelConfigForPassthrough(format, AudioAttributes.DEFAULT);
    }

    public int getMaxChannelCount() {
        return this.maxChannelCount;
    }

    public int hashCode() {
        return (Util.contentHashCode(this.encodingToAudioProfile) * 31) + this.maxChannelCount;
    }

    @Deprecated
    public boolean isPassthroughPlaybackSupported(Format format) {
        return isPassthroughPlaybackSupported(format, AudioAttributes.DEFAULT);
    }

    public boolean supportsEncoding(int i2) {
        return Util.contains(this.encodingToAudioProfile, i2);
    }

    public String toString() {
        return "AudioCapabilities[maxChannelCount=" + this.maxChannelCount + ", audioProfiles=" + this.encodingToAudioProfile + "]";
    }

    @Deprecated
    public AudioCapabilities(int[] iArr, int i2) {
        this(getAudioProfiles(iArr, i2));
    }

    public static AudioCapabilities getCapabilities(Context context, AudioAttributes audioAttributes, AudioDeviceInfo audioDeviceInfo) {
        return getCapabilitiesInternal(context, audioAttributes, audioDeviceInfo);
    }

    public Pair<Integer, Integer> getEncodingAndChannelConfigForPassthrough(Format format, AudioAttributes audioAttributes) {
        int encoding = MimeTypes.getEncoding((String) P3.v.checkNotNull(format.sampleMimeType), format.codecs);
        if (!ALL_SURROUND_ENCODINGS_AND_MAX_CHANNELS.containsKey(Integer.valueOf(encoding))) {
            return null;
        }
        if (encoding == 18 && !supportsEncoding(18)) {
            encoding = 6;
        } else if ((encoding == 8 && !supportsEncoding(8)) || (encoding == 30 && !supportsEncoding(30))) {
            encoding = 7;
        }
        if (!supportsEncoding(encoding)) {
            return null;
        }
        AudioProfile audioProfile = (AudioProfile) P3.v.checkNotNull(this.encodingToAudioProfile.get(encoding));
        int i2 = format.channelCount;
        if (i2 == -1 || encoding == 18) {
            int i7 = format.sampleRate;
            if (i7 == -1) {
                i7 = DEFAULT_SAMPLE_RATE_HZ;
            }
            i2 = audioProfile.getMaxSupportedChannelCountForPassthrough(i7, audioAttributes);
        } else if (!format.sampleMimeType.equals(MimeTypes.AUDIO_DTS_X) || Build.VERSION.SDK_INT >= 33) {
            if (!audioProfile.supportsChannelCount(i2)) {
                return null;
            }
        } else if (i2 > 10) {
            return null;
        }
        int channelConfigForPassthrough = getChannelConfigForPassthrough(i2);
        if (channelConfigForPassthrough == 0) {
            return null;
        }
        return Pair.create(Integer.valueOf(encoding), Integer.valueOf(channelConfigForPassthrough));
    }

    public boolean isPassthroughPlaybackSupported(Format format, AudioAttributes audioAttributes) {
        return getEncodingAndChannelConfigForPassthrough(format, audioAttributes) != null;
    }

    private AudioCapabilities(List<AudioProfile> list) {
        this.encodingToAudioProfile = new SparseArray<>();
        for (int i2 = 0; i2 < list.size(); i2++) {
            AudioProfile audioProfile = list.get(i2);
            this.encodingToAudioProfile.put(audioProfile.encoding, audioProfile);
        }
        int i7 = 0;
        for (int i8 = 0; i8 < this.encodingToAudioProfile.size(); i8++) {
            i7 = Math.max(i7, this.encodingToAudioProfile.valueAt(i8).maxChannelCount);
        }
        this.maxChannelCount = i7;
    }

    @SuppressLint({"InlinedApi"})
    public static AudioCapabilities getCapabilitiesInternal(Context context, Intent intent, AudioAttributes audioAttributes, AudioDeviceInfo audioDeviceInfo) {
        AudioManager audioManager = AudioManagerCompat.getAudioManager(context);
        if (audioDeviceInfo == null) {
            audioDeviceInfo = Build.VERSION.SDK_INT >= 33 ? Api33.getDefaultRoutedDeviceForAttributes(audioManager, audioAttributes) : null;
        }
        int i2 = Build.VERSION.SDK_INT;
        if (i2 >= 33 && (Util.isTv(context) || Util.isAutomotive(context))) {
            return Api33.getCapabilitiesInternalForDirectPlayback(audioManager, audioAttributes);
        }
        if (isBluetoothConnected(audioManager, audioDeviceInfo)) {
            return DEFAULT_AUDIO_CAPABILITIES;
        }
        z zVar = new z();
        zVar.add((Object) 2);
        if (i2 >= 29 && (Util.isTv(context) || Util.isAutomotive(context))) {
            zVar.addAll((Iterable<Object>) Api29.getDirectPlaybackSupportedEncodings(audioAttributes));
            return new AudioCapabilities(getAudioProfiles(com.google.common.primitives.a.toArray(zVar.build()), 10));
        }
        ContentResolver contentResolver = context.getContentResolver();
        boolean z6 = Settings.Global.getInt(contentResolver, FORCE_EXTERNAL_SURROUND_SOUND_KEY, 0) == 1;
        if ((z6 || deviceMaySetExternalSurroundSoundGlobalSetting()) && Settings.Global.getInt(contentResolver, EXTERNAL_SURROUND_SOUND_KEY, 0) == 1) {
            zVar.addAll((Iterable<Object>) EXTERNAL_SURROUND_SOUND_ENCODINGS);
        }
        if (intent != null && !z6 && intent.getIntExtra("android.media.extra.AUDIO_PLUG_STATE", 0) == 1) {
            int[] intArrayExtra = intent.getIntArrayExtra("android.media.extra.ENCODINGS");
            if (intArrayExtra != null) {
                zVar.addAll((Iterable<Object>) com.google.common.primitives.a.asList(intArrayExtra));
            }
            return new AudioCapabilities(getAudioProfiles(com.google.common.primitives.a.toArray(zVar.build()), intent.getIntExtra("android.media.extra.MAX_CHANNEL_COUNT", 10)));
        }
        return new AudioCapabilities(getAudioProfiles(com.google.common.primitives.a.toArray(zVar.build()), 10));
    }

    public static final class AudioProfile {
        public static final AudioProfile DEFAULT_AUDIO_PROFILE;
        private final ImmutableSet<Integer> channelMasks;
        public final int encoding;
        public final int maxChannelCount;

        static {
            DEFAULT_AUDIO_PROFILE = Build.VERSION.SDK_INT >= 33 ? new AudioProfile(2, getAllChannelMasksForMaxChannelCount(10)) : new AudioProfile(2, 10);
        }

        public AudioProfile(int i2, Set<Integer> set) {
            this.encoding = i2;
            ImmutableSet<Integer> copyOf = ImmutableSet.copyOf((Collection) set);
            this.channelMasks = copyOf;
            x0 it = copyOf.iterator();
            int i7 = 0;
            while (it.hasNext()) {
                i7 = Math.max(i7, Integer.bitCount(((Integer) it.next()).intValue()));
            }
            this.maxChannelCount = i7;
        }

        private static ImmutableSet<Integer> getAllChannelMasksForMaxChannelCount(int i2) {
            z zVar = new z();
            for (int i7 = 1; i7 <= i2; i7++) {
                zVar.add((Object) Integer.valueOf(Util.getAudioTrackChannelConfig(i7)));
            }
            return zVar.build();
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof AudioProfile)) {
                return false;
            }
            AudioProfile audioProfile = (AudioProfile) obj;
            return this.encoding == audioProfile.encoding && this.maxChannelCount == audioProfile.maxChannelCount && Objects.equals(this.channelMasks, audioProfile.channelMasks);
        }

        public int getMaxSupportedChannelCountForPassthrough(int i2, AudioAttributes audioAttributes) {
            return this.channelMasks != null ? this.maxChannelCount : Build.VERSION.SDK_INT >= 29 ? Api29.getMaxSupportedChannelCountForPassthrough(this.encoding, i2, audioAttributes) : ((Integer) P3.v.checkNotNull(AudioCapabilities.ALL_SURROUND_ENCODINGS_AND_MAX_CHANNELS.getOrDefault(Integer.valueOf(this.encoding), 0))).intValue();
        }

        public int hashCode() {
            int i2 = ((this.encoding * 31) + this.maxChannelCount) * 31;
            ImmutableSet<Integer> immutableSet = this.channelMasks;
            return i2 + (immutableSet == null ? 0 : immutableSet.hashCode());
        }

        public boolean supportsChannelCount(int i2) {
            if (this.channelMasks == null) {
                return i2 <= this.maxChannelCount;
            }
            int audioTrackChannelConfig = Util.getAudioTrackChannelConfig(i2);
            if (audioTrackChannelConfig == 0) {
                return false;
            }
            return this.channelMasks.contains(Integer.valueOf(audioTrackChannelConfig));
        }

        public String toString() {
            return "AudioProfile[format=" + this.encoding + ", maxChannelCount=" + this.maxChannelCount + ", channelMasks=" + this.channelMasks + "]";
        }

        public AudioProfile(int i2, int i7) {
            this.encoding = i2;
            this.maxChannelCount = i7;
            this.channelMasks = null;
        }
    }

    private static ImmutableList<AudioProfile> getAudioProfiles(int[] iArr, int i2) {
        C0248s builder = ImmutableList.builder();
        if (iArr == null) {
            iArr = new int[0];
        }
        for (int i7 : iArr) {
            builder.add((Object) new AudioProfile(i7, i2));
        }
        return builder.build();
    }
}
