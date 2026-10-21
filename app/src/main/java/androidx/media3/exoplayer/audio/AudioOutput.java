package androidx.media3.exoplayer.audio;

import android.media.AudioDeviceInfo;
import androidx.media3.common.PlaybackParameters;
import androidx.media3.common.util.UnstableApi;
import androidx.media3.exoplayer.analytics.PlayerId;
import java.nio.ByteBuffer;

/* loaded from: classes.dex */
public interface AudioOutput {

    public interface Listener {
        void onOffloadDataRequest();

        void onOffloadPresentationEnded();

        void onPositionAdvancing(long j7);

        void onReleased();

        void onUnderrun();
    }

    public static final class WriteException extends Exception {
        public final int errorCode;
        public final boolean isRecoverable;

        public WriteException(int i2, boolean z6) {
            super(A.i.f(i2, "AudioOutput write failed: "));
            this.isRecoverable = z6;
            this.errorCode = i2;
        }
    }

    void addListener(Listener listener);

    void attachAuxEffect(int i2);

    void flush();

    int getAudioSessionId();

    long getBufferSizeInFrames();

    PlaybackParameters getPlaybackParameters();

    long getPositionUs();

    int getSampleRate();

    boolean isOffloadedPlayback();

    boolean isStalled();

    void pause();

    void play();

    void release();

    void removeListener(Listener listener);

    void setAuxEffectSendLevel(float f3);

    void setOffloadDelayPadding(int i2, int i7);

    void setOffloadEndOfStream();

    void setPlaybackParameters(PlaybackParameters playbackParameters);

    @UnstableApi
    void setPlayerId(PlayerId playerId);

    void setPreferredDevice(AudioDeviceInfo audioDeviceInfo);

    void setVolume(float f3);

    void stop();

    boolean write(ByteBuffer byteBuffer, int i2, long j7) throws WriteException;
}
