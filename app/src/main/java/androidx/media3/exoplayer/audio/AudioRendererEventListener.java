package androidx.media3.exoplayer.audio;

import B4.RunnableC0061y;
import android.os.Handler;
import androidx.media3.common.Format;
import androidx.media3.common.util.UnstableApi;
import androidx.media3.common.util.Util;
import androidx.media3.exoplayer.CodecParameters;
import androidx.media3.exoplayer.DecoderCounters;
import androidx.media3.exoplayer.DecoderReuseEvaluation;
import androidx.media3.exoplayer.audio.AudioRendererEventListener;
import androidx.media3.exoplayer.audio.AudioSink;

@UnstableApi
/* loaded from: classes.dex */
public interface AudioRendererEventListener {

    public static final class EventDispatcher {
        private final Handler handler;
        private final AudioRendererEventListener listener;

        public EventDispatcher(Handler handler, AudioRendererEventListener audioRendererEventListener) {
            this.handler = audioRendererEventListener != null ? (Handler) P3.v.checkNotNull(handler) : null;
            this.listener = audioRendererEventListener;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$audioCodecError$9(Exception exc) {
            ((AudioRendererEventListener) Util.castNonNull(this.listener)).onAudioCodecError(exc);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$audioCodecParametersChanged$13(CodecParameters codecParameters) {
            ((AudioRendererEventListener) Util.castNonNull(this.listener)).onAudioCodecParametersChanged(codecParameters);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$audioSessionIdChanged$12(int i2) {
            ((AudioRendererEventListener) Util.castNonNull(this.listener)).onAudioSessionIdChanged(i2);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$audioSinkError$8(Exception exc) {
            ((AudioRendererEventListener) Util.castNonNull(this.listener)).onAudioSinkError(exc);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$audioTrackInitialized$10(AudioSink.AudioTrackConfig audioTrackConfig) {
            ((AudioRendererEventListener) Util.castNonNull(this.listener)).onAudioTrackInitialized(audioTrackConfig);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$audioTrackReleased$11(AudioSink.AudioTrackConfig audioTrackConfig) {
            ((AudioRendererEventListener) Util.castNonNull(this.listener)).onAudioTrackReleased(audioTrackConfig);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$decoderInitialized$1(String str, long j7, long j8) {
            ((AudioRendererEventListener) Util.castNonNull(this.listener)).onAudioDecoderInitialized(str, j7, j8);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$decoderReleased$5(String str) {
            ((AudioRendererEventListener) Util.castNonNull(this.listener)).onAudioDecoderReleased(str);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$disabled$6(DecoderCounters decoderCounters) {
            decoderCounters.ensureUpdated();
            ((AudioRendererEventListener) Util.castNonNull(this.listener)).onAudioDisabled(decoderCounters);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$enabled$0(DecoderCounters decoderCounters) {
            ((AudioRendererEventListener) Util.castNonNull(this.listener)).onAudioEnabled(decoderCounters);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$inputFormatChanged$2(Format format, DecoderReuseEvaluation decoderReuseEvaluation) {
            ((AudioRendererEventListener) Util.castNonNull(this.listener)).onAudioInputFormatChanged(format, decoderReuseEvaluation);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$positionAdvancing$3(long j7) {
            ((AudioRendererEventListener) Util.castNonNull(this.listener)).onAudioPositionAdvancing(j7);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$skipSilenceEnabledChanged$7(boolean z6) {
            ((AudioRendererEventListener) Util.castNonNull(this.listener)).onSkipSilenceEnabledChanged(z6);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$underrun$4(int i2, long j7, long j8) {
            ((AudioRendererEventListener) Util.castNonNull(this.listener)).onAudioUnderrun(i2, j7, j8);
        }

        public void audioCodecError(Exception exc) {
            Handler handler = this.handler;
            if (handler != null) {
                handler.post(new h(this, exc, 0));
            }
        }

        public void audioCodecParametersChanged(CodecParameters codecParameters) {
            Handler handler = this.handler;
            if (handler != null) {
                handler.post(new q(2, this, codecParameters));
            }
        }

        public void audioSessionIdChanged(int i2) {
            Handler handler = this.handler;
            if (handler != null) {
                handler.post(new C.q(this, i2, 4));
            }
        }

        public void audioSinkError(Exception exc) {
            Handler handler = this.handler;
            if (handler != null) {
                handler.post(new h(this, exc, 1));
            }
        }

        public void audioTrackInitialized(AudioSink.AudioTrackConfig audioTrackConfig) {
            Handler handler = this.handler;
            if (handler != null) {
                handler.post(new g(this, audioTrackConfig, 0));
            }
        }

        public void audioTrackReleased(AudioSink.AudioTrackConfig audioTrackConfig) {
            Handler handler = this.handler;
            if (handler != null) {
                handler.post(new g(this, audioTrackConfig, 1));
            }
        }

        public void decoderInitialized(String str, long j7, long j8) {
            Handler handler = this.handler;
            if (handler != null) {
                handler.post(new j(this, str, j7, j8, 0));
            }
        }

        public void decoderReleased(String str) {
            Handler handler = this.handler;
            if (handler != null) {
                handler.post(new q(3, this, str));
            }
        }

        public void disabled(DecoderCounters decoderCounters) {
            decoderCounters.ensureUpdated();
            Handler handler = this.handler;
            if (handler != null) {
                handler.post(new d(this, decoderCounters, 1));
            }
        }

        public void enabled(DecoderCounters decoderCounters) {
            Handler handler = this.handler;
            if (handler != null) {
                handler.post(new d(this, decoderCounters, 0));
            }
        }

        public void inputFormatChanged(Format format, DecoderReuseEvaluation decoderReuseEvaluation) {
            Handler handler = this.handler;
            if (handler != null) {
                handler.post(new RunnableC0061y(this, format, decoderReuseEvaluation, 4));
            }
        }

        public void positionAdvancing(long j7) {
            Handler handler = this.handler;
            if (handler != null) {
                handler.post(new e(this, j7, 0));
            }
        }

        public void skipSilenceEnabledChanged(boolean z6) {
            Handler handler = this.handler;
            if (handler != null) {
                handler.post(new i(0, this, z6));
            }
        }

        public void underrun(final int i2, final long j7, final long j8) {
            Handler handler = this.handler;
            if (handler != null) {
                handler.post(new Runnable() { // from class: androidx.media3.exoplayer.audio.f
                    @Override // java.lang.Runnable
                    public final void run() {
                        AudioRendererEventListener.EventDispatcher.this.lambda$underrun$4(i2, j7, j8);
                    }
                });
            }
        }
    }

    void onAudioCodecError(Exception exc);

    void onAudioCodecParametersChanged(CodecParameters codecParameters);

    void onAudioDecoderInitialized(String str, long j7, long j8);

    void onAudioDecoderReleased(String str);

    void onAudioDisabled(DecoderCounters decoderCounters);

    void onAudioEnabled(DecoderCounters decoderCounters);

    void onAudioInputFormatChanged(Format format, DecoderReuseEvaluation decoderReuseEvaluation);

    void onAudioPositionAdvancing(long j7);

    void onAudioSessionIdChanged(int i2);

    void onAudioSinkError(Exception exc);

    void onAudioTrackInitialized(AudioSink.AudioTrackConfig audioTrackConfig);

    void onAudioTrackReleased(AudioSink.AudioTrackConfig audioTrackConfig);

    void onAudioUnderrun(int i2, long j7, long j8);

    void onSkipSilenceEnabledChanged(boolean z6);
}
