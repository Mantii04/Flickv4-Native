package androidx.media3.common.audio;

import B4.AbstractC0052o;
import P3.v;
import android.media.AudioFocusRequest;
import android.media.AudioManager;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import androidx.media3.common.AudioAttributes;
import androidx.media3.common.audio.AudioFocusRequestCompat;
import androidx.media3.common.util.UnstableApi;
import androidx.media3.common.util.Util;
import java.util.Objects;

@UnstableApi
/* loaded from: classes.dex */
public final class AudioFocusRequestCompat {
    private final AudioAttributes audioAttributes;
    private final Handler focusChangeHandler;
    private final int focusGain;
    private final Object frameworkAudioFocusRequest;
    private final AudioManager.OnAudioFocusChangeListener onAudioFocusChangeListener;
    private final boolean pauseOnDuck;

    public static final class Builder {
        private AudioAttributes audioAttributes;
        private Handler focusChangeHandler;
        private int focusGain;
        private AudioManager.OnAudioFocusChangeListener onAudioFocusChangeListener;
        private boolean pauseOnDuck;

        private static boolean isValidFocusGain(int i2) {
            return i2 == 1 || i2 == 2 || i2 == 3 || i2 == 4;
        }

        public AudioFocusRequestCompat build() {
            AudioManager.OnAudioFocusChangeListener onAudioFocusChangeListener = this.onAudioFocusChangeListener;
            if (onAudioFocusChangeListener != null) {
                return new AudioFocusRequestCompat(this.focusGain, onAudioFocusChangeListener, (Handler) v.checkNotNull(this.focusChangeHandler), this.audioAttributes, this.pauseOnDuck);
            }
            throw new IllegalStateException("Can't build an AudioFocusRequestCompat instance without a listener");
        }

        public Builder setAudioAttributes(AudioAttributes audioAttributes) {
            v.checkNotNull(audioAttributes);
            this.audioAttributes = audioAttributes;
            return this;
        }

        public Builder setFocusGain(int i2) {
            v.checkArgument(isValidFocusGain(i2));
            this.focusGain = i2;
            return this;
        }

        public Builder setOnAudioFocusChangeListener(AudioManager.OnAudioFocusChangeListener onAudioFocusChangeListener) {
            return setOnAudioFocusChangeListener(onAudioFocusChangeListener, new Handler(Looper.getMainLooper()));
        }

        public Builder setWillPauseWhenDucked(boolean z6) {
            this.pauseOnDuck = z6;
            return this;
        }

        public Builder(int i2) {
            this.audioAttributes = AudioAttributes.DEFAULT;
            this.focusGain = i2;
        }

        public Builder setOnAudioFocusChangeListener(AudioManager.OnAudioFocusChangeListener onAudioFocusChangeListener, Handler handler) {
            v.checkNotNull(onAudioFocusChangeListener);
            v.checkNotNull(handler);
            this.onAudioFocusChangeListener = onAudioFocusChangeListener;
            this.focusChangeHandler = handler;
            return this;
        }

        private Builder(AudioFocusRequestCompat audioFocusRequestCompat) {
            this.focusGain = audioFocusRequestCompat.getFocusGain();
            this.onAudioFocusChangeListener = audioFocusRequestCompat.getOnAudioFocusChangeListener();
            this.focusChangeHandler = audioFocusRequestCompat.getFocusChangeHandler();
            this.audioAttributes = audioFocusRequestCompat.getAudioAttributes();
            this.pauseOnDuck = audioFocusRequestCompat.willPauseWhenDucked();
        }
    }

    public static class OnAudioFocusChangeListenerHandlerCompat implements AudioManager.OnAudioFocusChangeListener {
        private final Handler handler;
        private final AudioManager.OnAudioFocusChangeListener listener;

        public OnAudioFocusChangeListenerHandlerCompat(AudioManager.OnAudioFocusChangeListener onAudioFocusChangeListener, Handler handler) {
            this.listener = onAudioFocusChangeListener;
            this.handler = Util.createHandler(handler.getLooper(), null);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onAudioFocusChange$0(int i2) {
            this.listener.onAudioFocusChange(i2);
        }

        @Override // android.media.AudioManager.OnAudioFocusChangeListener
        public void onAudioFocusChange(final int i2) {
            Util.postOrRun(this.handler, new Runnable() { // from class: androidx.media3.common.audio.d
                @Override // java.lang.Runnable
                public final void run() {
                    AudioFocusRequestCompat.OnAudioFocusChangeListenerHandlerCompat.this.lambda$onAudioFocusChange$0(i2);
                }
            });
        }
    }

    public AudioFocusRequestCompat(int i2, AudioManager.OnAudioFocusChangeListener onAudioFocusChangeListener, Handler handler, AudioAttributes audioAttributes, boolean z6) {
        AudioFocusRequest.Builder audioAttributes2;
        AudioFocusRequest.Builder willPauseWhenDucked;
        AudioFocusRequest.Builder onAudioFocusChangeListener2;
        AudioFocusRequest build;
        this.focusGain = i2;
        this.focusChangeHandler = handler;
        this.audioAttributes = audioAttributes;
        this.pauseOnDuck = z6;
        int i7 = Build.VERSION.SDK_INT;
        if (i7 < 26) {
            this.onAudioFocusChangeListener = new OnAudioFocusChangeListenerHandlerCompat(onAudioFocusChangeListener, handler);
        } else {
            this.onAudioFocusChangeListener = onAudioFocusChangeListener;
        }
        if (i7 < 26) {
            this.frameworkAudioFocusRequest = null;
            return;
        }
        audioAttributes2 = AbstractC0052o.g(i2).setAudioAttributes(audioAttributes.getPlatformAudioAttributes());
        willPauseWhenDucked = audioAttributes2.setWillPauseWhenDucked(z6);
        onAudioFocusChangeListener2 = willPauseWhenDucked.setOnAudioFocusChangeListener(onAudioFocusChangeListener, handler);
        build = onAudioFocusChangeListener2.build();
        this.frameworkAudioFocusRequest = build;
    }

    public Builder buildUpon() {
        return new Builder();
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof AudioFocusRequestCompat)) {
            return false;
        }
        AudioFocusRequestCompat audioFocusRequestCompat = (AudioFocusRequestCompat) obj;
        return this.focusGain == audioFocusRequestCompat.focusGain && this.pauseOnDuck == audioFocusRequestCompat.pauseOnDuck && Objects.equals(this.onAudioFocusChangeListener, audioFocusRequestCompat.onAudioFocusChangeListener) && Objects.equals(this.focusChangeHandler, audioFocusRequestCompat.focusChangeHandler) && Objects.equals(this.audioAttributes, audioFocusRequestCompat.audioAttributes);
    }

    public AudioAttributes getAudioAttributes() {
        return this.audioAttributes;
    }

    public AudioFocusRequest getAudioFocusRequest() {
        return AbstractC0052o.l(v.checkNotNull(this.frameworkAudioFocusRequest));
    }

    public Handler getFocusChangeHandler() {
        return this.focusChangeHandler;
    }

    public int getFocusGain() {
        return this.focusGain;
    }

    public AudioManager.OnAudioFocusChangeListener getOnAudioFocusChangeListener() {
        return this.onAudioFocusChangeListener;
    }

    public int hashCode() {
        return Objects.hash(Integer.valueOf(this.focusGain), this.onAudioFocusChangeListener, this.focusChangeHandler, this.audioAttributes, Boolean.valueOf(this.pauseOnDuck));
    }

    public boolean willPauseWhenDucked() {
        return this.pauseOnDuck;
    }
}
