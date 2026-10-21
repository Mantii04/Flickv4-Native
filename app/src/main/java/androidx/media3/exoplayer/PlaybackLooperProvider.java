package androidx.media3.exoplayer;

import android.os.HandlerThread;
import android.os.Looper;

/* loaded from: classes.dex */
public final class PlaybackLooperProvider {
    private HandlerThread internalPlaybackThread;
    private final Object lock;
    private Looper playbackLooper;
    private int referenceCount;

    public PlaybackLooperProvider() {
        this(null);
    }

    public Looper obtainLooper() {
        Looper looper;
        synchronized (this.lock) {
            try {
                if (this.playbackLooper == null) {
                    P3.v.checkState(this.referenceCount == 0 && this.internalPlaybackThread == null);
                    HandlerThread handlerThread = new HandlerThread("ExoPlayer:Playback", -16);
                    this.internalPlaybackThread = handlerThread;
                    handlerThread.start();
                    this.playbackLooper = this.internalPlaybackThread.getLooper();
                }
                this.referenceCount++;
                looper = this.playbackLooper;
            } catch (Throwable th) {
                throw th;
            }
        }
        return looper;
    }

    public void releaseLooper() {
        HandlerThread handlerThread;
        synchronized (this.lock) {
            try {
                P3.v.checkState(this.referenceCount > 0);
                int i2 = this.referenceCount - 1;
                this.referenceCount = i2;
                if (i2 == 0 && (handlerThread = this.internalPlaybackThread) != null) {
                    handlerThread.quit();
                    this.internalPlaybackThread = null;
                    this.playbackLooper = null;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public PlaybackLooperProvider(Looper looper) {
        this.lock = new Object();
        this.playbackLooper = looper;
        this.internalPlaybackThread = null;
        this.referenceCount = 0;
    }
}
