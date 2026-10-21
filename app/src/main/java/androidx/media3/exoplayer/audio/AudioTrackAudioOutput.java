package androidx.media3.exoplayer.audio;

import B4.RunnableC0061y;
import android.media.AudioDeviceInfo;
import android.media.AudioRouting;
import android.media.AudioTrack;
import android.media.AudioTrack$StreamEventCallback;
import android.media.PlaybackParams;
import android.media.metrics.LogSessionId;
import android.os.Build;
import android.os.Handler;
import androidx.media3.common.PlaybackParameters;
import androidx.media3.common.util.BackgroundExecutor;
import androidx.media3.common.util.Clock;
import androidx.media3.common.util.ListenerSet;
import androidx.media3.common.util.Log;
import androidx.media3.common.util.UnstableApi;
import androidx.media3.common.util.Util;
import androidx.media3.exoplayer.analytics.PlayerId;
import androidx.media3.exoplayer.audio.AudioOutput;
import androidx.media3.exoplayer.audio.AudioOutputProvider;
import androidx.media3.exoplayer.audio.AudioTrackAudioOutput;
import androidx.media3.exoplayer.audio.AudioTrackPositionTracker;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.Objects;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;

/* loaded from: classes.dex */
public final class AudioTrackAudioOutput implements AudioOutput {
    private static final int AUDIO_TRACK_VOLUME_RAMP_TIME_MS = 20;
    private static final int ERROR_NATIVE_DEAD_OBJECT = -32;
    private static final String TAG = "AudioTrackAudioOutput";
    private static int pendingReleaseCount;
    private static ScheduledExecutorService releaseExecutor;
    private static final Object releaseExecutorLock = new Object();
    private final AudioTrack audioTrack;
    private final AudioTrackPositionTracker audioTrackPositionTracker;
    private ByteBuffer avSyncHeader;
    private int bytesUntilNextAvSync;
    private final CapabilityChangeListener capabilityChangeListener;
    private final AudioOutputProvider.OutputConfig config;
    private int framesPerEncodedSample;
    private boolean hasBeenStopped;
    private boolean hasData;
    private final boolean isOutputPcm;
    private long lastTunnelingAvSyncPresentationTimeUs;
    private int lastUnderrunCount;
    private final ListenerSet<AudioOutput.Listener> listeners;
    private final StreamEventCallbackV29 offloadStreamEventCallbackV29;
    private OnRoutingChangedListenerApi24 onRoutingChangedListener;
    private final int pcmFrameSize;
    private long writtenEncodedFrames;
    private long writtenPcmBytes;

    public interface CapabilityChangeListener {
        void onRecoverableWriteError();

        void onRoutedDeviceChanged(AudioDeviceInfo audioDeviceInfo);
    }

    @UnstableApi
    public static final class InvalidAudioTrackTimestampException extends RuntimeException {
        private InvalidAudioTrackTimestampException(String str) {
            super(str);
        }
    }

    public static final class OnRoutingChangedListenerApi24 {
        private final AudioTrack audioTrack;
        private final CapabilityChangeListener capabilityChangeListener;
        private AudioRouting.OnRoutingChangedListener listener;
        private final Handler playbackThreadHandler;

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onRoutingChanged$0(AudioDeviceInfo audioDeviceInfo) {
            if (this.listener == null) {
                return;
            }
            this.capabilityChangeListener.onRoutedDeviceChanged(audioDeviceInfo);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onRoutingChanged$1(AudioRouting audioRouting) {
            AudioDeviceInfo routedDevice;
            routedDevice = audioRouting.getRoutedDevice();
            if (routedDevice != null) {
                this.playbackThreadHandler.post(new q(0, this, routedDevice));
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void onRoutingChanged(AudioRouting audioRouting) {
            if (this.listener == null) {
                return;
            }
            BackgroundExecutor.get().execute(new q(1, this, audioRouting));
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void release() {
            this.audioTrack.removeOnRoutingChangedListener(n.h(P3.v.checkNotNull(this.listener)));
            this.listener = null;
        }

        /* JADX WARN: Type inference failed for: r0v0, types: [android.media.AudioRouting$OnRoutingChangedListener, androidx.media3.exoplayer.audio.p] */
        private OnRoutingChangedListenerApi24(AudioTrack audioTrack, CapabilityChangeListener capabilityChangeListener) {
            this.audioTrack = audioTrack;
            this.capabilityChangeListener = capabilityChangeListener;
            Handler createHandlerForCurrentLooper = Util.createHandlerForCurrentLooper();
            this.playbackThreadHandler = createHandlerForCurrentLooper;
            ?? r02 = new AudioRouting.OnRoutingChangedListener() { // from class: androidx.media3.exoplayer.audio.p
                @Override // android.media.AudioRouting.OnRoutingChangedListener
                public final void onRoutingChanged(AudioRouting audioRouting) {
                    AudioTrackAudioOutput.OnRoutingChangedListenerApi24.this.onRoutingChanged(audioRouting);
                }
            };
            this.listener = r02;
            audioTrack.addOnRoutingChangedListener((AudioRouting.OnRoutingChangedListener) r02, createHandlerForCurrentLooper);
        }
    }

    public final class PositionTrackerListener implements AudioTrackPositionTracker.Listener {
        private PositionTrackerListener() {
        }

        @Override // androidx.media3.exoplayer.audio.AudioTrackPositionTracker.Listener
        public void onInvalidLatency(long j7) {
            Log.w(AudioTrackAudioOutput.TAG, "Ignoring impossibly large audio latency: " + j7);
        }

        @Override // androidx.media3.exoplayer.audio.AudioTrackPositionTracker.Listener
        public void onPositionAdvancing(final long j7) {
            AudioTrackAudioOutput.this.listeners.sendEvent(new ListenerSet.Event() { // from class: androidx.media3.exoplayer.audio.r
                @Override // androidx.media3.common.util.ListenerSet.Event
                public final void invoke(Object obj) {
                    ((AudioOutput.Listener) obj).onPositionAdvancing(j7);
                }
            });
        }

        @Override // androidx.media3.exoplayer.audio.AudioTrackPositionTracker.Listener
        public void onPositionFramesMismatch(long j7, long j8, long j9, long j10) {
            StringBuilder r6 = A.i.r(j7, "Spurious audio timestamp (frame position mismatch): ", ", ");
            r6.append(j8);
            r6.append(", ");
            r6.append(j9);
            r6.append(", ");
            r6.append(j10);
            r6.append(", ");
            r6.append(AudioTrackAudioOutput.this.getWrittenFrames());
            String sb = r6.toString();
            if (AudioTrackAudioOutputProvider.failOnSpuriousAudioTimestamp) {
                throw new InvalidAudioTrackTimestampException(sb);
            }
            Log.w(AudioTrackAudioOutput.TAG, sb);
        }

        @Override // androidx.media3.exoplayer.audio.AudioTrackPositionTracker.Listener
        public void onSystemTimeUsMismatch(long j7, long j8, long j9, long j10) {
            StringBuilder r6 = A.i.r(j7, "Spurious audio timestamp (system clock mismatch): ", ", ");
            r6.append(j8);
            r6.append(", ");
            r6.append(j9);
            r6.append(", ");
            r6.append(j10);
            r6.append(", ");
            r6.append(AudioTrackAudioOutput.this.getWrittenFrames());
            String sb = r6.toString();
            if (AudioTrackAudioOutputProvider.failOnSpuriousAudioTimestamp) {
                throw new InvalidAudioTrackTimestampException(sb);
            }
            Log.w(AudioTrackAudioOutput.TAG, sb);
        }
    }

    public final class StreamEventCallbackV29 {
        private final AudioTrack$StreamEventCallback callback;
        private final Handler handler;

        /* JADX INFO: Access modifiers changed from: private */
        public void unregister() {
            AudioTrackAudioOutput.this.audioTrack.unregisterStreamEventCallback(this.callback);
            this.handler.removeCallbacksAndMessages(null);
        }

        private StreamEventCallbackV29() {
            Handler createHandlerForCurrentLooper = Util.createHandlerForCurrentLooper();
            this.handler = createHandlerForCurrentLooper;
            AudioTrack$StreamEventCallback audioTrack$StreamEventCallback = new AudioTrack$StreamEventCallback() { // from class: androidx.media3.exoplayer.audio.AudioTrackAudioOutput.StreamEventCallbackV29.1
                public void onDataRequest(AudioTrack audioTrack, int i2) {
                    AudioTrackAudioOutput.this.listeners.sendEvent(new J0.g(27));
                }

                public void onPresentationEnded(AudioTrack audioTrack) {
                    AudioTrackAudioOutput.this.listeners.sendEvent(new J0.g(28));
                }

                public void onTearDown(AudioTrack audioTrack) {
                    AudioTrackAudioOutput.this.listeners.sendEvent(new J0.g(27));
                }
            };
            this.callback = audioTrack$StreamEventCallback;
            AudioTrack audioTrack = AudioTrackAudioOutput.this.audioTrack;
            Objects.requireNonNull(createHandlerForCurrentLooper);
            audioTrack.registerStreamEventCallback(new androidx.media3.common.util.e(createHandlerForCurrentLooper), audioTrack$StreamEventCallback);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @UnstableApi
    public AudioTrackAudioOutput(AudioTrack audioTrack, AudioOutputProvider.OutputConfig outputConfig, CapabilityChangeListener capabilityChangeListener, Clock clock) {
        this.audioTrack = audioTrack;
        this.config = outputConfig;
        this.capabilityChangeListener = capabilityChangeListener;
        ListenerSet<AudioOutput.Listener> listenerSet = new ListenerSet<>(Thread.currentThread());
        this.listeners = listenerSet;
        listenerSet.setThrowsWhenUsingWrongThread(false);
        boolean isEncodingLinearPcm = Util.isEncodingLinearPcm(outputConfig.encoding);
        this.isOutputPcm = isEncodingLinearPcm;
        if (isEncodingLinearPcm) {
            this.pcmFrameSize = Util.getPcmFrameSize(outputConfig.encoding, Integer.bitCount(outputConfig.channelMask));
        } else {
            this.pcmFrameSize = -1;
        }
        Object[] objArr = 0;
        Object[] objArr2 = 0;
        this.audioTrackPositionTracker = new AudioTrackPositionTracker(new PositionTrackerListener(), clock, audioTrack, outputConfig.encoding, this.pcmFrameSize, outputConfig.bufferSize);
        if (Build.VERSION.SDK_INT >= 24 && capabilityChangeListener != null) {
            this.onRoutingChangedListener = new OnRoutingChangedListenerApi24(audioTrack, capabilityChangeListener);
        }
        this.offloadStreamEventCallbackV29 = isOffloadedPlayback() ? new StreamEventCallbackV29() : null;
    }

    private int getAudioOutputUnderrunCount(long j7) {
        int underrunCount;
        if (Build.VERSION.SDK_INT >= 24) {
            underrunCount = this.audioTrack.getUnderrunCount();
            return underrunCount;
        }
        boolean z6 = this.hasData;
        boolean z7 = j7 > Util.durationUsToSampleCount(getPositionUs(), getSampleRate());
        this.hasData = z7;
        return (!z6 || z7 || this.audioTrack.getPlayState() == 1) ? this.lastUnderrunCount : this.lastUnderrunCount + 1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public long getWrittenFrames() {
        return this.isOutputPcm ? Util.ceilDivide(this.writtenPcmBytes, this.pcmFrameSize) : this.writtenEncodedFrames;
    }

    private boolean hasPendingAudioTrackUnderruns(long j7) {
        int audioOutputUnderrunCount = getAudioOutputUnderrunCount(j7);
        boolean z6 = audioOutputUnderrunCount > this.lastUnderrunCount;
        this.lastUnderrunCount = audioOutputUnderrunCount;
        return z6;
    }

    private static boolean isAudioTrackDeadObject(int i2) {
        return (Build.VERSION.SDK_INT >= 24 && i2 == -6) || i2 == ERROR_NATIVE_DEAD_OBJECT;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$releaseAudioTrackAsync$0(ListenerSet listenerSet) {
        listenerSet.sendEvent(new J0.g(26));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$releaseAudioTrackAsync$1(AudioTrack audioTrack, Handler handler, ListenerSet listenerSet) {
        try {
            audioTrack.flush();
            audioTrack.release();
            if (handler.getLooper().getThread().isAlive()) {
                handler.post(new o(listenerSet, 0));
            }
            synchronized (releaseExecutorLock) {
                try {
                    int i2 = pendingReleaseCount - 1;
                    pendingReleaseCount = i2;
                    if (i2 == 0) {
                        ((ScheduledExecutorService) P3.v.checkNotNull(releaseExecutor)).shutdown();
                        releaseExecutor = null;
                    }
                } finally {
                }
            }
        } catch (Throwable th) {
            if (handler.getLooper().getThread().isAlive()) {
                handler.post(new o(listenerSet, 0));
            }
            synchronized (releaseExecutorLock) {
                try {
                    int i7 = pendingReleaseCount - 1;
                    pendingReleaseCount = i7;
                    if (i7 == 0) {
                        ((ScheduledExecutorService) P3.v.checkNotNull(releaseExecutor)).shutdown();
                        releaseExecutor = null;
                    }
                    throw th;
                } finally {
                }
            }
        }
    }

    private void maybeReportUnderrun() {
        if (hasPendingAudioTrackUnderruns(getWrittenFrames())) {
            this.listeners.sendEvent(new J0.g(25));
        }
    }

    private static void releaseAudioTrackAsync(AudioTrack audioTrack, ListenerSet<AudioOutput.Listener> listenerSet) {
        Handler createHandlerForCurrentLooper = Util.createHandlerForCurrentLooper();
        synchronized (releaseExecutorLock) {
            try {
                if (releaseExecutor == null) {
                    releaseExecutor = Util.newSingleThreadScheduledExecutor("ExoPlayer:AudioTrackReleaseThread");
                }
                pendingReleaseCount++;
                releaseExecutor.schedule(new RunnableC0061y(audioTrack, createHandlerForCurrentLooper, listenerSet, 5), 20L, TimeUnit.MILLISECONDS);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    private int writeWithAvSync(AudioTrack audioTrack, ByteBuffer byteBuffer, long j7) {
        int remaining = byteBuffer.remaining();
        if (Build.VERSION.SDK_INT >= 26) {
            return audioTrack.write(byteBuffer, remaining, 1, j7 * 1000);
        }
        if (this.avSyncHeader == null) {
            ByteBuffer allocate = ByteBuffer.allocate(16);
            this.avSyncHeader = allocate;
            allocate.order(ByteOrder.BIG_ENDIAN);
            this.avSyncHeader.putInt(1431633921);
        }
        if (this.bytesUntilNextAvSync == 0) {
            this.avSyncHeader.putInt(4, remaining);
            this.avSyncHeader.putLong(8, j7 * 1000);
            this.avSyncHeader.position(0);
            this.bytesUntilNextAvSync = remaining;
        }
        int remaining2 = this.avSyncHeader.remaining();
        if (remaining2 > 0) {
            int write = audioTrack.write(this.avSyncHeader, remaining2, 1);
            if (write < 0) {
                this.bytesUntilNextAvSync = 0;
                return write;
            }
            if (write < remaining2) {
                return 0;
            }
        }
        int write2 = audioTrack.write(byteBuffer, remaining, 1);
        if (write2 < 0) {
            this.bytesUntilNextAvSync = 0;
            return write2;
        }
        this.bytesUntilNextAvSync -= write2;
        return write2;
    }

    @Override // androidx.media3.exoplayer.audio.AudioOutput
    public void addListener(AudioOutput.Listener listener) {
        this.listeners.add(listener);
    }

    @Override // androidx.media3.exoplayer.audio.AudioOutput
    public void attachAuxEffect(int i2) {
        this.audioTrack.attachAuxEffect(i2);
    }

    @Override // androidx.media3.exoplayer.audio.AudioOutput
    public void flush() {
        this.avSyncHeader = null;
        this.bytesUntilNextAvSync = 0;
        this.writtenPcmBytes = 0L;
        this.writtenEncodedFrames = 0L;
        this.hasBeenStopped = false;
        this.framesPerEncodedSample = 0;
        this.audioTrack.flush();
        this.audioTrackPositionTracker.reset();
    }

    @Override // androidx.media3.exoplayer.audio.AudioOutput
    public int getAudioSessionId() {
        return this.audioTrack.getAudioSessionId();
    }

    public AudioTrack getAudioTrack() {
        return this.audioTrack;
    }

    @Override // androidx.media3.exoplayer.audio.AudioOutput
    public long getBufferSizeInFrames() {
        return this.audioTrack.getBufferSizeInFrames();
    }

    @Override // androidx.media3.exoplayer.audio.AudioOutput
    public PlaybackParameters getPlaybackParameters() {
        PlaybackParams playbackParams = this.audioTrack.getPlaybackParams();
        return new PlaybackParameters(playbackParams.getSpeed(), playbackParams.getPitch());
    }

    @Override // androidx.media3.exoplayer.audio.AudioOutput
    public long getPositionUs() {
        return this.audioTrackPositionTracker.getCurrentPositionUs();
    }

    @Override // androidx.media3.exoplayer.audio.AudioOutput
    public int getSampleRate() {
        return this.audioTrack.getSampleRate();
    }

    @Override // androidx.media3.exoplayer.audio.AudioOutput
    public boolean isOffloadedPlayback() {
        boolean isOffloadedPlayback;
        if (Build.VERSION.SDK_INT < 29) {
            return false;
        }
        isOffloadedPlayback = this.audioTrack.isOffloadedPlayback();
        return isOffloadedPlayback;
    }

    @Override // androidx.media3.exoplayer.audio.AudioOutput
    public boolean isStalled() {
        return this.audioTrackPositionTracker.isStalled(getWrittenFrames());
    }

    @Override // androidx.media3.exoplayer.audio.AudioOutput
    public void pause() {
        this.audioTrackPositionTracker.pause();
        if (!this.hasBeenStopped || isOffloadedPlayback()) {
            this.audioTrack.pause();
        }
    }

    @Override // androidx.media3.exoplayer.audio.AudioOutput
    public void play() {
        this.audioTrackPositionTracker.start();
        if (!this.hasBeenStopped || isOffloadedPlayback()) {
            this.audioTrack.play();
        }
    }

    @Override // androidx.media3.exoplayer.audio.AudioOutput
    public void release() {
        OnRoutingChangedListenerApi24 onRoutingChangedListenerApi24;
        if (this.audioTrackPositionTracker.isPlaying()) {
            this.audioTrack.pause();
        }
        int i2 = Build.VERSION.SDK_INT;
        if (i2 >= 29 && isOffloadedPlayback()) {
            ((StreamEventCallbackV29) P3.v.checkNotNull(this.offloadStreamEventCallbackV29)).unregister();
        }
        if (i2 >= 24 && (onRoutingChangedListenerApi24 = this.onRoutingChangedListener) != null) {
            onRoutingChangedListenerApi24.release();
            this.onRoutingChangedListener = null;
        }
        releaseAudioTrackAsync(this.audioTrack, this.listeners);
    }

    @Override // androidx.media3.exoplayer.audio.AudioOutput
    public void removeListener(AudioOutput.Listener listener) {
        this.listeners.remove(listener);
    }

    @Override // androidx.media3.exoplayer.audio.AudioOutput
    public void setAuxEffectSendLevel(float f3) {
        this.audioTrack.setAuxEffectSendLevel(f3);
    }

    @Override // androidx.media3.exoplayer.audio.AudioOutput
    public void setOffloadDelayPadding(int i2, int i7) {
        if (Build.VERSION.SDK_INT < 29) {
            return;
        }
        this.audioTrack.setOffloadDelayPadding(i2, i7);
    }

    @Override // androidx.media3.exoplayer.audio.AudioOutput
    public void setOffloadEndOfStream() {
        if (Build.VERSION.SDK_INT >= 29 && this.audioTrack.getPlayState() == 3) {
            this.audioTrack.setOffloadEndOfStream();
            this.audioTrackPositionTracker.expectRawPlaybackHeadReset();
        }
    }

    @Override // androidx.media3.exoplayer.audio.AudioOutput
    public void setPlaybackParameters(PlaybackParameters playbackParameters) {
        try {
            this.audioTrack.setPlaybackParams(new PlaybackParams().allowDefaults().setSpeed(playbackParameters.speed).setPitch(playbackParameters.pitch).setAudioFallbackMode(2));
        } catch (IllegalArgumentException e3) {
            Log.w(TAG, "Failed to set playback params", e3);
        }
        this.audioTrackPositionTracker.setAudioTrackPlaybackSpeed(this.audioTrack.getPlaybackParams().getSpeed());
    }

    @Override // androidx.media3.exoplayer.audio.AudioOutput
    @UnstableApi
    public void setPlayerId(PlayerId playerId) {
        boolean equals;
        LogSessionId unused;
        if (Build.VERSION.SDK_INT < 31) {
            return;
        }
        LogSessionId logSessionId = playerId.getLogSessionId();
        unused = LogSessionId.LOG_SESSION_ID_NONE;
        equals = logSessionId.equals(LogSessionId.LOG_SESSION_ID_NONE);
        if (equals) {
            return;
        }
        this.audioTrack.setLogSessionId(logSessionId);
    }

    @Override // androidx.media3.exoplayer.audio.AudioOutput
    public void setPreferredDevice(AudioDeviceInfo audioDeviceInfo) {
        this.audioTrack.setPreferredDevice(audioDeviceInfo);
    }

    @Override // androidx.media3.exoplayer.audio.AudioOutput
    public void setVolume(float f3) {
        this.audioTrack.setVolume(f3);
    }

    @Override // androidx.media3.exoplayer.audio.AudioOutput
    public void stop() {
        if (this.hasBeenStopped) {
            return;
        }
        this.hasBeenStopped = true;
        this.audioTrackPositionTracker.handleEndOfStream(getWrittenFrames());
        this.audioTrack.stop();
        this.bytesUntilNextAvSync = 0;
    }

    @Override // androidx.media3.exoplayer.audio.AudioOutput
    public boolean write(ByteBuffer byteBuffer, int i2, long j7) throws AudioOutput.WriteException {
        int write;
        CapabilityChangeListener capabilityChangeListener;
        if (!this.isOutputPcm && this.framesPerEncodedSample == 0) {
            this.framesPerEncodedSample = DefaultAudioSink.getFramesPerEncodedSample(this.config.encoding, byteBuffer);
        }
        maybeReportUnderrun();
        int remaining = byteBuffer.remaining();
        if (this.config.isTunneling) {
            if (j7 == Long.MIN_VALUE) {
                j7 = this.lastTunnelingAvSyncPresentationTimeUs;
            } else {
                this.lastTunnelingAvSyncPresentationTimeUs = j7;
            }
            write = writeWithAvSync(this.audioTrack, byteBuffer, j7);
        } else {
            write = this.audioTrack.write(byteBuffer, byteBuffer.remaining(), 1);
        }
        if (write < 0) {
            boolean isAudioTrackDeadObject = isAudioTrackDeadObject(write);
            if (isAudioTrackDeadObject && (capabilityChangeListener = this.capabilityChangeListener) != null) {
                capabilityChangeListener.onRecoverableWriteError();
            }
            throw new AudioOutput.WriteException(write, isAudioTrackDeadObject);
        }
        boolean z6 = write == remaining;
        if (this.isOutputPcm) {
            this.writtenPcmBytes += write;
            return z6;
        }
        if (z6) {
            this.writtenEncodedFrames = (this.framesPerEncodedSample * i2) + this.writtenEncodedFrames;
        }
        return z6;
    }
}
