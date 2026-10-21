package androidx.media3.exoplayer.audio;

import android.content.Context;
import android.media.AudioAttributes;
import android.media.AudioDeviceInfo;
import android.media.AudioFormat;
import android.media.AudioTrack;
import android.os.Build;
import android.os.Looper;
import android.util.Pair;
import androidx.media3.common.Format;
import androidx.media3.common.MimeTypes;
import androidx.media3.common.util.Clock;
import androidx.media3.common.util.ListenerSet;
import androidx.media3.common.util.Log;
import androidx.media3.common.util.UnstableApi;
import androidx.media3.common.util.Util;
import androidx.media3.exoplayer.audio.AudioCapabilitiesReceiver;
import androidx.media3.exoplayer.audio.AudioOutputProvider;
import androidx.media3.exoplayer.audio.AudioSink;
import androidx.media3.exoplayer.audio.AudioTrackAudioOutput;
import androidx.media3.exoplayer.audio.DefaultAudioSink;
import java.util.Objects;
import java.util.function.BiConsumer;

/* loaded from: classes.dex */
public final class AudioTrackAudioOutputProvider implements AudioOutputProvider {
    private static final String TAG = "ATAudioOutputProvider";

    @UnstableApi
    public static boolean failOnSpuriousAudioTimestamp = false;
    private AudioCapabilities audioCapabilities;
    private AudioCapabilitiesReceiver audioCapabilitiesReceiver;
    private final DefaultAudioSink.AudioOffloadSupportProvider audioOffloadSupportProvider;
    private final DefaultAudioSink.AudioTrackBufferSizeProvider audioTrackBufferSizeProvider;
    private final DefaultAudioSink.AudioTrackProvider audioTrackProvider;
    private final BiConsumer<AudioTrack.Builder, AudioOutputProvider.OutputConfig> builderModifier;
    private final CapabilityChangeListener capabilityChangeListener;
    private Clock clock;
    private final Context context;
    private Context contextWithDeviceId;
    private ListenerSet<AudioOutputProvider.Listener> listeners;
    private Looper playbackLooper;

    public static final class Builder {
        private AudioCapabilities audioCapabilities;
        private DefaultAudioSink.AudioOffloadSupportProvider audioOffloadSupportProvider;
        private BiConsumer<AudioTrack.Builder, AudioOutputProvider.OutputConfig> audioTrackBuilderModifier;
        private DefaultAudioSink.AudioTrackProvider audioTrackProvider;
        private DefaultAudioSink.AudioTrackBufferSizeProvider bufferSizeProvider;
        private final Context context;

        public Builder(Context context) {
            this.context = context != null ? context.getApplicationContext() : null;
            this.bufferSizeProvider = DefaultAudioSink.AudioTrackBufferSizeProvider.DEFAULT;
            if (context == null) {
                this.audioCapabilities = AudioCapabilities.DEFAULT_AUDIO_CAPABILITIES;
            }
        }

        public AudioTrackAudioOutputProvider build() {
            if (this.audioOffloadSupportProvider == null) {
                this.audioOffloadSupportProvider = new DefaultAudioOffloadSupportProvider(this.context);
            }
            return new AudioTrackAudioOutputProvider(this);
        }

        @UnstableApi
        public Builder setAudioCapabilities(AudioCapabilities audioCapabilities) {
            if (this.context == null) {
                this.audioCapabilities = audioCapabilities;
            }
            return this;
        }

        @UnstableApi
        public Builder setAudioOffloadSupportProvider(DefaultAudioSink.AudioOffloadSupportProvider audioOffloadSupportProvider) {
            this.audioOffloadSupportProvider = audioOffloadSupportProvider;
            return this;
        }

        @UnstableApi
        public Builder setAudioTrackBufferSizeProvider(DefaultAudioSink.AudioTrackBufferSizeProvider audioTrackBufferSizeProvider) {
            this.bufferSizeProvider = audioTrackBufferSizeProvider;
            return this;
        }

        public Builder setAudioTrackBuilderModifier(BiConsumer<AudioTrack.Builder, AudioOutputProvider.OutputConfig> biConsumer) {
            this.audioTrackBuilderModifier = biConsumer;
            return this;
        }

        @UnstableApi
        public Builder setAudioTrackProvider(DefaultAudioSink.AudioTrackProvider audioTrackProvider) {
            this.audioTrackProvider = audioTrackProvider;
            return this;
        }
    }

    public final class CapabilityChangeListener implements AudioTrackAudioOutput.CapabilityChangeListener {
        private CapabilityChangeListener() {
        }

        @Override // androidx.media3.exoplayer.audio.AudioTrackAudioOutput.CapabilityChangeListener
        public void onRecoverableWriteError() {
            if (AudioTrackAudioOutputProvider.this.audioCapabilitiesReceiver != null) {
                AudioTrackAudioOutputProvider audioTrackAudioOutputProvider = AudioTrackAudioOutputProvider.this;
                AudioCapabilities audioCapabilities = AudioCapabilities.DEFAULT_AUDIO_CAPABILITIES;
                audioTrackAudioOutputProvider.audioCapabilities = audioCapabilities;
                AudioTrackAudioOutputProvider.this.audioCapabilitiesReceiver.overrideCapabilities(audioCapabilities);
            }
        }

        @Override // androidx.media3.exoplayer.audio.AudioTrackAudioOutput.CapabilityChangeListener
        public void onRoutedDeviceChanged(AudioDeviceInfo audioDeviceInfo) {
            if (AudioTrackAudioOutputProvider.this.audioCapabilitiesReceiver != null) {
                AudioTrackAudioOutputProvider.this.audioCapabilitiesReceiver.setRoutedDevice(audioDeviceInfo);
            }
        }
    }

    private int getAudioOutputChannelConfig(int i2) {
        DefaultAudioSink.AudioTrackProvider audioTrackProvider = this.audioTrackProvider;
        return audioTrackProvider != null ? audioTrackProvider.getAudioTrackChannelConfig(i2) : Util.getAudioTrackChannelConfig(i2);
    }

    private AudioAttributes getAudioTrackAttributes(androidx.media3.common.AudioAttributes audioAttributes, boolean z6) {
        return z6 ? getAudioTrackTunnelingAttributes() : audioAttributes.getPlatformAudioAttributes();
    }

    private AudioSink.AudioTrackConfig getAudioTrackConfig(AudioOutputProvider.OutputConfig outputConfig) {
        return new AudioSink.AudioTrackConfig(outputConfig.encoding, outputConfig.sampleRate, outputConfig.channelMask, outputConfig.isTunneling, outputConfig.isOffload, outputConfig.bufferSize);
    }

    private int getAudioTrackMinBufferSize(int i2, int i7, int i8) {
        int minBufferSize = AudioTrack.getMinBufferSize(i2, i7, i8);
        P3.v.checkState(minBufferSize != -2);
        return minBufferSize;
    }

    private AudioAttributes getAudioTrackTunnelingAttributes() {
        return new AudioAttributes.Builder().setContentType(3).setFlags(16).setUsage(1).build();
    }

    private int getFormatSupportLevel(AudioOutputProvider.FormatConfig formatConfig) {
        Format format = formatConfig.format;
        if (!Objects.equals(format.sampleMimeType, MimeTypes.AUDIO_RAW)) {
            return this.audioCapabilities.isPassthroughPlaybackSupported(format, formatConfig.audioAttributes) ? 2 : 0;
        }
        int i2 = format.pcmEncoding;
        if (i2 == 2) {
            return 2;
        }
        if (!formatConfig.enableHighResolutionPcmOutput) {
            return 0;
        }
        if (Util.isEncodingLinearPcm(i2)) {
            return Build.VERSION.SDK_INT < Util.getApiLevelThatAudioFormatIntroducedAudioEncoding(format.pcmEncoding) ? 0 : 2;
        }
        Log.w(TAG, "Invalid PCM encoding: " + format.pcmEncoding);
        return 0;
    }

    private static String getLooperThreadName(Looper looper) {
        return looper == null ? "null" : looper.getThread().getName();
    }

    private void updateAudioCapabilitiesReceiver(AudioOutputProvider.FormatConfig formatConfig) {
        Context context;
        verifySinglePlaybackLooper();
        AudioCapabilitiesReceiver audioCapabilitiesReceiver = this.audioCapabilitiesReceiver;
        if (audioCapabilitiesReceiver == null && (context = this.context) != null) {
            AudioCapabilitiesReceiver audioCapabilitiesReceiver2 = new AudioCapabilitiesReceiver(context, new AudioCapabilitiesReceiver.Listener() { // from class: androidx.media3.exoplayer.audio.t
                @Override // androidx.media3.exoplayer.audio.AudioCapabilitiesReceiver.Listener
                public final void onAudioCapabilitiesChanged(AudioCapabilities audioCapabilities) {
                    AudioTrackAudioOutputProvider.this.onAudioCapabilitiesChanged(audioCapabilities);
                }
            }, formatConfig.audioAttributes, formatConfig.preferredDevice);
            this.audioCapabilitiesReceiver = audioCapabilitiesReceiver2;
            this.audioCapabilities = audioCapabilitiesReceiver2.register();
        } else if (audioCapabilitiesReceiver != null) {
            AudioDeviceInfo audioDeviceInfo = formatConfig.preferredDevice;
            if (audioDeviceInfo != null) {
                audioCapabilitiesReceiver.setRoutedDevice(audioDeviceInfo);
            }
            this.audioCapabilitiesReceiver.setAudioAttributes(formatConfig.audioAttributes);
        }
        P3.v.checkNotNull(this.audioCapabilities);
    }

    private void verifySinglePlaybackLooper() {
        if (this.context == null) {
            return;
        }
        Looper myLooper = Looper.myLooper();
        Looper looper = this.playbackLooper;
        P3.v.checkState(looper == null || looper == myLooper, "AudioTrackAudioOutputProvider accessed on multiple threads: %s and %s", getLooperThreadName(looper), getLooperThreadName(myLooper));
        this.playbackLooper = myLooper;
    }

    @Override // androidx.media3.exoplayer.audio.AudioOutputProvider
    public void addListener(AudioOutputProvider.Listener listener) {
        verifySinglePlaybackLooper();
        if (this.listeners == null) {
            ListenerSet<AudioOutputProvider.Listener> listenerSet = new ListenerSet<>(Thread.currentThread());
            this.listeners = listenerSet;
            listenerSet.setThrowsWhenUsingWrongThread(false);
        }
        this.listeners.add(listener);
    }

    @Override // androidx.media3.exoplayer.audio.AudioOutputProvider
    public AudioOutputProvider.FormatSupport getFormatSupport(AudioOutputProvider.FormatConfig formatConfig) {
        updateAudioCapabilitiesReceiver(formatConfig);
        AudioOffloadSupport audioOffloadSupport = this.audioOffloadSupportProvider.getAudioOffloadSupport(formatConfig.format, formatConfig.audioAttributes);
        return new AudioOutputProvider.FormatSupport.Builder().setFormatSupportLevel(getFormatSupportLevel(formatConfig)).setIsFormatSupportedForOffload(audioOffloadSupport.isFormatSupported).setIsGaplessSupportedForOffload(audioOffloadSupport.isGaplessSupported).setIsSpeedChangeSupportedForOffload(audioOffloadSupport.isSpeedChangeSupported).build();
    }

    @Override // androidx.media3.exoplayer.audio.AudioOutputProvider
    public AudioOutputProvider.OutputConfig getOutputConfig(AudioOutputProvider.FormatConfig formatConfig) throws AudioOutputProvider.ConfigurationException {
        int i2;
        boolean z6;
        int i7;
        int i8;
        int i9;
        int i10;
        boolean z7;
        Format format = formatConfig.format;
        updateAudioCapabilitiesReceiver(formatConfig);
        if (Objects.equals(format.sampleMimeType, MimeTypes.AUDIO_RAW)) {
            P3.v.checkArgument(Util.isEncodingLinearPcm(format.pcmEncoding));
            int i11 = format.pcmEncoding;
            i2 = format.sampleRate;
            i9 = getAudioOutputChannelConfig(format.channelCount);
            i10 = Util.getPcmFrameSize(i11, format.channelCount);
            z6 = formatConfig.enablePlaybackParameters;
            i7 = i11;
            z7 = false;
            i8 = 0;
        } else {
            i2 = format.sampleRate;
            AudioOffloadSupport audioOffloadSupport = formatConfig.enableOffload ? this.audioOffloadSupportProvider.getAudioOffloadSupport(format, formatConfig.audioAttributes) : AudioOffloadSupport.DEFAULT_UNSUPPORTED;
            if (formatConfig.enableOffload && audioOffloadSupport.isFormatSupported) {
                int encoding = MimeTypes.getEncoding((String) P3.v.checkNotNull(format.sampleMimeType), format.codecs);
                int audioOutputChannelConfig = getAudioOutputChannelConfig(format.channelCount);
                z7 = audioOffloadSupport.isGaplessSupported;
                z6 = true;
                i8 = 1;
                i7 = encoding;
                i9 = audioOutputChannelConfig;
                i10 = -1;
            } else {
                Pair<Integer, Integer> encodingAndChannelConfigForPassthrough = this.audioCapabilities.getEncodingAndChannelConfigForPassthrough(format, formatConfig.audioAttributes);
                if (encodingAndChannelConfigForPassthrough == null) {
                    throw new AudioOutputProvider.ConfigurationException("Unable to configure passthrough for: " + format);
                }
                int intValue = ((Integer) encodingAndChannelConfigForPassthrough.first).intValue();
                int intValue2 = ((Integer) encodingAndChannelConfigForPassthrough.second).intValue();
                z6 = formatConfig.enablePlaybackParameters;
                i7 = intValue;
                i8 = 2;
                i9 = intValue2;
                i10 = -1;
                z7 = false;
            }
        }
        int i12 = format.bitrate;
        if (Objects.equals(format.sampleMimeType, MimeTypes.AUDIO_DTS_EXPRESS) && i12 == -1) {
            i12 = 768000;
        }
        int i13 = i12;
        int i14 = formatConfig.preferredBufferSize;
        if (i14 == -1) {
            int i15 = i2;
            i14 = this.audioTrackBufferSizeProvider.getBufferSizeInBytes(getAudioTrackMinBufferSize(i2, i9, i7), i7, i8, i10 != -1 ? i10 : 1, i15, i13, z6 ? 8.0d : 1.0d);
            i2 = i15;
        }
        return new AudioOutputProvider.OutputConfig.Builder().setSampleRate(i2).setChannelMask(i9).setEncoding(i7).setBufferSize(i14).setAudioSessionId(formatConfig.audioSessionId).setAudioAttributes(formatConfig.audioAttributes).setIsOffload(i8 == 1).setIsTunneling(formatConfig.enableTunneling).setUsePlaybackParameters(z6).setUseOffloadGapless(z7).setVirtualDeviceId(formatConfig.virtualDeviceId).build();
    }

    public void onAudioCapabilitiesChanged(AudioCapabilities audioCapabilities) {
        verifySinglePlaybackLooper();
        AudioCapabilities audioCapabilities2 = this.audioCapabilities;
        if (audioCapabilities2 == null || audioCapabilities.equals(audioCapabilities2)) {
            return;
        }
        this.audioCapabilities = audioCapabilities;
        ListenerSet<AudioOutputProvider.Listener> listenerSet = this.listeners;
        if (listenerSet != null) {
            listenerSet.sendEvent(new J0.g(29));
        }
    }

    @Override // androidx.media3.exoplayer.audio.AudioOutputProvider
    public void release() {
        ListenerSet<AudioOutputProvider.Listener> listenerSet = this.listeners;
        if (listenerSet != null) {
            listenerSet.release();
        }
        AudioCapabilitiesReceiver audioCapabilitiesReceiver = this.audioCapabilitiesReceiver;
        if (audioCapabilitiesReceiver != null) {
            audioCapabilitiesReceiver.unregister();
        }
    }

    @Override // androidx.media3.exoplayer.audio.AudioOutputProvider
    public void removeListener(AudioOutputProvider.Listener listener) {
        ListenerSet<AudioOutputProvider.Listener> listenerSet = this.listeners;
        if (listenerSet != null) {
            listenerSet.remove(listener);
        }
    }

    @Override // androidx.media3.exoplayer.audio.AudioOutputProvider
    @UnstableApi
    public void setClock(Clock clock) {
        this.clock = clock;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private AudioTrackAudioOutputProvider(Builder builder) {
        this.context = builder.context;
        this.builderModifier = builder.audioTrackBuilderModifier;
        this.audioOffloadSupportProvider = (DefaultAudioSink.AudioOffloadSupportProvider) P3.v.checkNotNull(builder.audioOffloadSupportProvider);
        this.audioTrackBufferSizeProvider = builder.bufferSizeProvider;
        this.audioCapabilities = builder.audioCapabilities;
        this.audioTrackProvider = builder.audioTrackProvider;
        this.capabilityChangeListener = builder.context != null ? new CapabilityChangeListener() : null;
        this.clock = Clock.DEFAULT;
    }

    @Override // androidx.media3.exoplayer.audio.AudioOutputProvider
    public AudioTrackAudioOutput getAudioOutput(AudioOutputProvider.OutputConfig outputConfig) throws AudioOutputProvider.InitializationException {
        Context context;
        AudioTrack build;
        Context createDeviceContext;
        int deviceId;
        try {
            int i2 = outputConfig.audioSessionId;
            if (outputConfig.virtualDeviceId == -1 || this.context == null || Build.VERSION.SDK_INT < 34) {
                context = null;
            } else {
                Context context2 = this.contextWithDeviceId;
                if (context2 != null) {
                    deviceId = context2.getDeviceId();
                    if (deviceId != outputConfig.virtualDeviceId) {
                    }
                    context = this.contextWithDeviceId;
                    i2 = 0;
                }
                createDeviceContext = this.context.createDeviceContext(outputConfig.virtualDeviceId);
                this.contextWithDeviceId = createDeviceContext;
                context = this.contextWithDeviceId;
                i2 = 0;
            }
            if (this.audioTrackProvider != null) {
                build = this.audioTrackProvider.getAudioTrack(getAudioTrackConfig(outputConfig), outputConfig.audioAttributes, i2, context);
            } else {
                AudioTrack.Builder sessionId = new AudioTrack.Builder().setAudioAttributes(getAudioTrackAttributes(outputConfig.audioAttributes, outputConfig.isTunneling)).setAudioFormat(new AudioFormat.Builder().setSampleRate(outputConfig.sampleRate).setChannelMask(outputConfig.channelMask).setEncoding(outputConfig.encoding).build()).setTransferMode(1).setBufferSizeInBytes(outputConfig.bufferSize).setSessionId(i2);
                int i7 = Build.VERSION.SDK_INT;
                if (i7 >= 29) {
                    sessionId.setOffloadedPlayback(outputConfig.isOffload);
                }
                if (i7 >= 34 && context != null) {
                    sessionId.setContext(context);
                }
                BiConsumer<AudioTrack.Builder, AudioOutputProvider.OutputConfig> biConsumer = this.builderModifier;
                if (biConsumer != null && i7 >= 24) {
                    biConsumer.accept(sessionId, outputConfig);
                }
                build = sessionId.build();
            }
            if (build.getState() == 1) {
                return new AudioTrackAudioOutput(build, outputConfig, this.capabilityChangeListener, this.clock);
            }
            try {
                build.release();
            } catch (Exception unused) {
            }
            throw new AudioOutputProvider.InitializationException();
        } catch (IllegalArgumentException e3) {
            e = e3;
            throw new AudioOutputProvider.InitializationException(e);
        } catch (UnsupportedOperationException e7) {
            e = e7;
            throw new AudioOutputProvider.InitializationException(e);
        }
    }
}
