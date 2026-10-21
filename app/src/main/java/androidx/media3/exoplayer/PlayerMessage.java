package androidx.media3.exoplayer;

import android.os.Looper;
import androidx.media3.common.IllegalSeekPositionException;
import androidx.media3.common.Timeline;
import androidx.media3.common.util.Clock;
import androidx.media3.common.util.UnstableApi;
import java.util.concurrent.TimeoutException;

@UnstableApi
/* loaded from: classes.dex */
public final class PlayerMessage {
    private final Clock clock;
    private boolean isCanceled;
    private boolean isDelivered;
    private boolean isProcessed;
    private boolean isSent;
    private Looper looper;
    private int mediaItemIndex;
    private Object payload;
    private final Sender sender;
    private final Target target;
    private final Timeline timeline;
    private int type;
    private long positionMs = androidx.media3.common.C.TIME_UNSET;
    private boolean deleteAfterDelivery = true;

    public interface Sender {
        void sendMessage(PlayerMessage playerMessage);
    }

    public interface Target {
        void handleMessage(int i2, Object obj) throws ExoPlaybackException;
    }

    public PlayerMessage(Sender sender, Target target, Timeline timeline, int i2, Clock clock, Looper looper) {
        this.sender = sender;
        this.target = target;
        this.timeline = timeline;
        this.looper = looper;
        this.clock = clock;
        this.mediaItemIndex = i2;
    }

    public synchronized boolean blockUntilDelivered() throws InterruptedException {
        try {
            P3.v.checkState(this.isSent);
            P3.v.checkState(this.looper.getThread() != Thread.currentThread());
            while (!this.isProcessed) {
                wait();
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.isDelivered;
    }

    public synchronized PlayerMessage cancel() {
        P3.v.checkState(this.isSent);
        this.isCanceled = true;
        markAsProcessed(false);
        return this;
    }

    public boolean getDeleteAfterDelivery() {
        return this.deleteAfterDelivery;
    }

    public Looper getLooper() {
        return this.looper;
    }

    public int getMediaItemIndex() {
        return this.mediaItemIndex;
    }

    public Object getPayload() {
        return this.payload;
    }

    public long getPositionMs() {
        return this.positionMs;
    }

    public Target getTarget() {
        return this.target;
    }

    public Timeline getTimeline() {
        return this.timeline;
    }

    public int getType() {
        return this.type;
    }

    public synchronized boolean isCanceled() {
        return this.isCanceled;
    }

    public synchronized void markAsProcessed(boolean z6) {
        this.isDelivered = z6 | this.isDelivered;
        this.isProcessed = true;
        notifyAll();
    }

    public PlayerMessage send() {
        P3.v.checkState(!this.isSent);
        if (this.positionMs == androidx.media3.common.C.TIME_UNSET) {
            P3.v.checkArgument(this.deleteAfterDelivery);
        }
        this.isSent = true;
        this.sender.sendMessage(this);
        return this;
    }

    public PlayerMessage setDeleteAfterDelivery(boolean z6) {
        P3.v.checkState(!this.isSent);
        this.deleteAfterDelivery = z6;
        return this;
    }

    public PlayerMessage setLooper(Looper looper) {
        P3.v.checkState(!this.isSent);
        this.looper = looper;
        return this;
    }

    public PlayerMessage setPayload(Object obj) {
        P3.v.checkState(!this.isSent);
        this.payload = obj;
        return this;
    }

    public PlayerMessage setPosition(long j7) {
        P3.v.checkState(!this.isSent);
        this.positionMs = j7;
        return this;
    }

    public PlayerMessage setType(int i2) {
        P3.v.checkState(!this.isSent);
        this.type = i2;
        return this;
    }

    public PlayerMessage setPosition(int i2, long j7) {
        P3.v.checkState(!this.isSent);
        P3.v.checkArgument(j7 != androidx.media3.common.C.TIME_UNSET);
        if (i2 >= 0 && (this.timeline.isEmpty() || i2 < this.timeline.getWindowCount())) {
            this.mediaItemIndex = i2;
            this.positionMs = j7;
            return this;
        }
        throw new IllegalSeekPositionException(this.timeline, i2, j7);
    }

    public synchronized boolean blockUntilDelivered(long j7) throws InterruptedException, TimeoutException {
        boolean z6;
        try {
            P3.v.checkState(this.isSent);
            P3.v.checkState(this.looper.getThread() != Thread.currentThread());
            long elapsedRealtime = this.clock.elapsedRealtime() + j7;
            while (true) {
                z6 = this.isProcessed;
                if (z6 || j7 <= 0) {
                    break;
                }
                this.clock.onThreadBlocked();
                wait(j7);
                j7 = elapsedRealtime - this.clock.elapsedRealtime();
            }
            if (!z6) {
                throw new TimeoutException("Message delivery timed out.");
            }
        } catch (Throwable th) {
            throw th;
        }
        return this.isDelivered;
    }
}
