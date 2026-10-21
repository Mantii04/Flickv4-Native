package androidx.media3.exoplayer;

import android.annotation.SuppressLint;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.media.AudioManager;
import android.os.Looper;
import androidx.media3.common.MimeTypes;
import androidx.media3.common.audio.AudioManagerCompat;
import androidx.media3.common.util.BackgroundThreadStateHandler;
import androidx.media3.common.util.Clock;
import androidx.media3.common.util.Log;
import androidx.media3.exoplayer.StreamVolumeManager;

/* loaded from: classes.dex */
final class StreamVolumeManager {
    private static final String TAG = "StreamVolumeManager";
    private static final String VOLUME_CHANGED_ACTION = "android.media.VOLUME_CHANGED_ACTION";
    private final Context applicationContext;
    private AudioManager audioManager;
    private final Listener listener;
    private VolumeChangeReceiver receiver;
    private final BackgroundThreadStateHandler<StreamVolumeState> stateHandler;
    private int volumeBeforeMute;

    public interface Listener {
        void onStreamTypeChanged(int i2);

        void onStreamVolumeChanged(int i2, boolean z6);
    }

    public static final class StreamVolumeState {
        public final int maxVolume;
        public final int minVolume;
        public final boolean muted;
        public final int streamType;
        public final int volume;

        public StreamVolumeState(int i2, int i7, boolean z6, int i8, int i9) {
            this.streamType = i2;
            this.volume = i7;
            this.muted = z6;
            this.minVolume = i8;
            this.maxVolume = i9;
        }
    }

    public final class VolumeChangeReceiver extends BroadcastReceiver {
        private VolumeChangeReceiver() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onReceive$0() {
            if (StreamVolumeManager.this.receiver == null) {
                return;
            }
            StreamVolumeManager.this.stateHandler.setStateInBackground(StreamVolumeManager.this.generateState(((StreamVolumeState) StreamVolumeManager.this.stateHandler.get()).streamType));
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            StreamVolumeManager.this.stateHandler.runInBackground(new RunnableC0573c(this, 3));
        }
    }

    public StreamVolumeManager(Context context, Listener listener, int i2, Looper looper, Looper looper2, Clock clock) {
        this.applicationContext = context.getApplicationContext();
        this.listener = listener;
        BackgroundThreadStateHandler<StreamVolumeState> backgroundThreadStateHandler = new BackgroundThreadStateHandler<>(new StreamVolumeState(i2, 0, false, 0, 0), looper, looper2, clock, new C0589s(this, 10));
        this.stateHandler = backgroundThreadStateHandler;
        backgroundThreadStateHandler.runInBackground(new H(this, i2, 1));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public StreamVolumeState generateState(int i2) {
        P3.v.checkNotNull(this.audioManager);
        return new StreamVolumeState(i2, AudioManagerCompat.getStreamVolume(this.audioManager, i2), AudioManagerCompat.isStreamMute(this.audioManager, i2), AudioManagerCompat.getStreamMinVolume(this.audioManager, i2), AudioManagerCompat.getStreamMaxVolume(this.audioManager, i2));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ StreamVolumeState lambda$decreaseVolume$7(StreamVolumeState streamVolumeState) {
        int i2 = streamVolumeState.streamType;
        int i7 = streamVolumeState.volume;
        int i8 = streamVolumeState.minVolume;
        return new StreamVolumeState(i2, i7 > i8 ? i7 - 1 : i8, i7 <= 1, i8, streamVolumeState.maxVolume);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ StreamVolumeState lambda$decreaseVolume$8(int i2, StreamVolumeState streamVolumeState) {
        if (streamVolumeState.volume <= streamVolumeState.minVolume) {
            return streamVolumeState;
        }
        ((AudioManager) P3.v.checkNotNull(this.audioManager)).adjustStreamVolume(streamVolumeState.streamType, -1, i2);
        return generateState(streamVolumeState.streamType);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ StreamVolumeState lambda$increaseVolume$5(StreamVolumeState streamVolumeState) {
        int i2 = streamVolumeState.streamType;
        int i7 = streamVolumeState.volume;
        int i8 = streamVolumeState.maxVolume;
        return new StreamVolumeState(i2, i7 < i8 ? i7 + 1 : i8, false, streamVolumeState.minVolume, i8);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ StreamVolumeState lambda$increaseVolume$6(int i2, StreamVolumeState streamVolumeState) {
        if (streamVolumeState.volume >= streamVolumeState.maxVolume) {
            return streamVolumeState;
        }
        ((AudioManager) P3.v.checkNotNull(this.audioManager)).adjustStreamVolume(streamVolumeState.streamType, 1, i2);
        return generateState(streamVolumeState.streamType);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$0(int i2) {
        this.audioManager = (AudioManager) P3.v.checkNotNull((AudioManager) this.applicationContext.getSystemService(MimeTypes.BASE_TYPE_AUDIO));
        VolumeChangeReceiver volumeChangeReceiver = new VolumeChangeReceiver();
        try {
            this.applicationContext.registerReceiver(volumeChangeReceiver, new IntentFilter(VOLUME_CHANGED_ACTION));
            this.receiver = volumeChangeReceiver;
        } catch (RuntimeException e3) {
            Log.w(TAG, "Error registering stream volume receiver", e3);
        }
        this.stateHandler.setStateInBackground(generateState(i2));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ StreamVolumeState lambda$release$11(StreamVolumeState streamVolumeState) {
        return streamVolumeState;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ StreamVolumeState lambda$release$12(StreamVolumeState streamVolumeState) {
        VolumeChangeReceiver volumeChangeReceiver = this.receiver;
        if (volumeChangeReceiver != null) {
            try {
                this.applicationContext.unregisterReceiver(volumeChangeReceiver);
            } catch (RuntimeException e3) {
                Log.w(TAG, "Error unregistering stream volume receiver", e3);
            }
            this.receiver = null;
        }
        return streamVolumeState;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ StreamVolumeState lambda$setMuted$10(boolean z6, int i2, StreamVolumeState streamVolumeState) {
        if (streamVolumeState.muted == z6) {
            return streamVolumeState;
        }
        P3.v.checkNotNull(this.audioManager);
        this.audioManager.adjustStreamVolume(streamVolumeState.streamType, z6 ? -100 : 100, i2);
        return generateState(streamVolumeState.streamType);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ StreamVolumeState lambda$setMuted$9(boolean z6, StreamVolumeState streamVolumeState) {
        return new StreamVolumeState(streamVolumeState.streamType, streamVolumeState.muted == z6 ? streamVolumeState.volume : z6 ? 0 : this.volumeBeforeMute, z6, streamVolumeState.minVolume, streamVolumeState.maxVolume);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ StreamVolumeState lambda$setStreamType$1(int i2, StreamVolumeState streamVolumeState) {
        return new StreamVolumeState(i2, streamVolumeState.volume, streamVolumeState.muted, streamVolumeState.minVolume, streamVolumeState.maxVolume);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ StreamVolumeState lambda$setStreamType$2(int i2, StreamVolumeState streamVolumeState) {
        return streamVolumeState.streamType == i2 ? streamVolumeState : generateState(i2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ StreamVolumeState lambda$setVolume$3(int i2, StreamVolumeState streamVolumeState) {
        int i7 = streamVolumeState.streamType;
        int i8 = streamVolumeState.minVolume;
        return new StreamVolumeState(i7, (i2 < i8 || i2 > streamVolumeState.maxVolume) ? streamVolumeState.volume : i2, i2 == 0, i8, streamVolumeState.maxVolume);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ StreamVolumeState lambda$setVolume$4(int i2, int i7, StreamVolumeState streamVolumeState) {
        if (i2 == streamVolumeState.volume || i2 < streamVolumeState.minVolume || i2 > streamVolumeState.maxVolume) {
            return streamVolumeState;
        }
        ((AudioManager) P3.v.checkNotNull(this.audioManager)).setStreamVolume(streamVolumeState.streamType, i2, i7);
        return generateState(streamVolumeState.streamType);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onStreamVolumeStateChanged(StreamVolumeState streamVolumeState, StreamVolumeState streamVolumeState2) {
        boolean z6 = streamVolumeState.muted;
        if (!z6 && streamVolumeState2.muted) {
            this.volumeBeforeMute = streamVolumeState.volume;
        }
        int i2 = streamVolumeState.volume;
        int i7 = streamVolumeState2.volume;
        if (i2 != i7 || z6 != streamVolumeState2.muted) {
            this.listener.onStreamVolumeChanged(i7, streamVolumeState2.muted);
        }
        int i8 = streamVolumeState.streamType;
        int i9 = streamVolumeState2.streamType;
        if (i8 == i9 && streamVolumeState.minVolume == streamVolumeState2.minVolume && streamVolumeState.maxVolume == streamVolumeState2.maxVolume) {
            return;
        }
        this.listener.onStreamTypeChanged(i9);
    }

    @SuppressLint({"WrongConstant"})
    public void decreaseVolume(int i2) {
        this.stateHandler.updateStateAsync(new Z(2), new a0(this, i2, 1));
    }

    public int getMaxVolume() {
        return this.stateHandler.get().maxVolume;
    }

    public int getMinVolume() {
        return this.stateHandler.get().minVolume;
    }

    public int getVolume() {
        return this.stateHandler.get().volume;
    }

    @SuppressLint({"WrongConstant"})
    public void increaseVolume(int i2) {
        this.stateHandler.updateStateAsync(new Z(1), new a0(this, i2, 0));
    }

    public boolean isMuted() {
        return this.stateHandler.get().muted;
    }

    public void release() {
        this.stateHandler.updateStateAsync(new Z(0), new C0581k(this, 2));
    }

    @SuppressLint({"WrongConstant"})
    public void setMuted(final boolean z6, final int i2) {
        this.stateHandler.updateStateAsync(new P3.p() { // from class: androidx.media3.exoplayer.c0
            @Override // P3.p
            public final Object apply(Object obj) {
                StreamVolumeManager.StreamVolumeState lambda$setMuted$9;
                lambda$setMuted$9 = StreamVolumeManager.this.lambda$setMuted$9(z6, (StreamVolumeManager.StreamVolumeState) obj);
                return lambda$setMuted$9;
            }
        }, new P3.p() { // from class: androidx.media3.exoplayer.d0
            @Override // P3.p
            public final Object apply(Object obj) {
                StreamVolumeManager.StreamVolumeState lambda$setMuted$10;
                lambda$setMuted$10 = StreamVolumeManager.this.lambda$setMuted$10(z6, i2, (StreamVolumeManager.StreamVolumeState) obj);
                return lambda$setMuted$10;
            }
        });
    }

    public void setStreamType(int i2) {
        this.stateHandler.updateStateAsync(new C0594x(i2, 4), new a0(this, i2, 2));
    }

    @SuppressLint({"WrongConstant"})
    public void setVolume(final int i2, final int i7) {
        this.stateHandler.updateStateAsync(new C0594x(i2, 3), new P3.p() { // from class: androidx.media3.exoplayer.b0
            @Override // P3.p
            public final Object apply(Object obj) {
                StreamVolumeManager.StreamVolumeState lambda$setVolume$4;
                lambda$setVolume$4 = StreamVolumeManager.this.lambda$setVolume$4(i2, i7, (StreamVolumeManager.StreamVolumeState) obj);
                return lambda$setVolume$4;
            }
        });
    }
}
