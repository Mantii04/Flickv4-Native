package androidx.media3.exoplayer;

import android.content.Context;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import androidx.media3.common.util.Log;
import androidx.media3.common.util.UnstableApi;
import androidx.media3.exoplayer.audio.AudioRendererEventListener;
import androidx.media3.exoplayer.audio.AudioSink;
import androidx.media3.exoplayer.audio.DefaultAudioSink;
import androidx.media3.exoplayer.image.BitmapFactoryImageDecoder;
import androidx.media3.exoplayer.image.ImageDecoder;
import androidx.media3.exoplayer.image.ImageRenderer;
import androidx.media3.exoplayer.mediacodec.DefaultMediaCodecAdapterFactory;
import androidx.media3.exoplayer.mediacodec.MediaCodecAdapter;
import androidx.media3.exoplayer.mediacodec.MediaCodecSelector;
import androidx.media3.exoplayer.metadata.MetadataOutput;
import androidx.media3.exoplayer.metadata.MetadataRenderer;
import androidx.media3.exoplayer.text.TextOutput;
import androidx.media3.exoplayer.text.TextRenderer;
import androidx.media3.exoplayer.video.MediaCodecVideoRenderer;
import androidx.media3.exoplayer.video.VideoRendererEventListener;
import androidx.media3.exoplayer.video.spherical.CameraMotionRenderer;
import java.lang.annotation.Documented;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
import java.lang.reflect.Constructor;
import java.util.ArrayList;

@UnstableApi
/* loaded from: classes.dex */
public class DefaultRenderersFactory implements RenderersFactory {
    public static final long DEFAULT_ALLOWED_VIDEO_JOINING_TIME_MS = 5000;
    public static final int EXTENSION_RENDERER_MODE_OFF = 0;
    public static final int EXTENSION_RENDERER_MODE_ON = 1;
    public static final int EXTENSION_RENDERER_MODE_PREFER = 2;
    public static final int MAX_DROPPED_VIDEO_FRAME_COUNT_TO_NOTIFY = 50;
    private static final String TAG = "DefaultRenderersFactory";
    private final DefaultMediaCodecAdapterFactory codecAdapterFactory;
    private final Context context;
    private boolean enableAudioOutputPlaybackParameters;
    private boolean enableDecoderFallback;
    private boolean enableFloatOutput;
    private boolean enableMediaCodecBufferDecodeOnlyFlag;
    private boolean enableMediaCodecVideoRendererPrewarming;
    private boolean parseAv1SampleDependencies;
    private int extensionRendererMode = 0;
    private long allowedVideoJoiningTimeMs = 5000;
    private MediaCodecSelector mediaCodecSelector = MediaCodecSelector.DEFAULT;
    private long lateThresholdToDropDecoderInputUs = androidx.media3.common.C.TIME_UNSET;

    @Target({ElementType.TYPE_USE})
    @Documented
    @Retention(RetentionPolicy.SOURCE)
    public @interface ExtensionRendererMode {
    }

    public DefaultRenderersFactory(Context context) {
        this.context = context;
        this.codecAdapterFactory = new DefaultMediaCodecAdapterFactory(context);
    }

    /* JADX WARN: Can't wrap try/catch for region: R(14:12|13|14|(9:(2:15|16)|28|29|30|31|32|34|35|37)|17|18|19|20|21|22|23|24|25|26) */
    /* JADX WARN: Can't wrap try/catch for region: R(15:(5:6|7|8|9|10)|(5:12|13|14|15|16)|17|18|19|(2:20|21)|22|23|24|(2:25|26)|28|29|30|(2:31|32)|(3:34|35|37)) */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void buildAudioRenderers(android.content.Context r21, int r22, androidx.media3.exoplayer.mediacodec.MediaCodecSelector r23, boolean r24, androidx.media3.exoplayer.audio.AudioSink r25, android.os.Handler r26, androidx.media3.exoplayer.audio.AudioRendererEventListener r27, java.util.ArrayList<androidx.media3.exoplayer.Renderer> r28) {
        /*
            Method dump skipped, instructions count: 394
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.media3.exoplayer.DefaultRenderersFactory.buildAudioRenderers(android.content.Context, int, androidx.media3.exoplayer.mediacodec.MediaCodecSelector, boolean, androidx.media3.exoplayer.audio.AudioSink, android.os.Handler, androidx.media3.exoplayer.audio.AudioRendererEventListener, java.util.ArrayList):void");
    }

    public AudioSink buildAudioSink(Context context, boolean z6, boolean z7) {
        return new DefaultAudioSink.Builder(context).setEnableFloatOutput(z6).setEnableAudioOutputPlaybackParameters(z7).build();
    }

    public void buildCameraMotionRenderers(Context context, int i2, ArrayList<Renderer> arrayList) {
        arrayList.add(new CameraMotionRenderer());
    }

    @Deprecated
    public void buildImageRenderers(ArrayList<Renderer> arrayList) {
        arrayList.add(new ImageRenderer(getImageDecoderFactory(this.context), null));
    }

    public void buildMetadataRenderers(Context context, MetadataOutput metadataOutput, Looper looper, int i2, ArrayList<Renderer> arrayList) {
        arrayList.add(new MetadataRenderer(metadataOutput, looper));
        arrayList.add(new MetadataRenderer(metadataOutput, looper));
    }

    public void buildMiscellaneousRenderers(Context context, Handler handler, int i2, ArrayList<Renderer> arrayList) {
    }

    public Renderer buildSecondaryVideoRenderer(Renderer renderer, Context context, int i2, MediaCodecSelector mediaCodecSelector, boolean z6, Handler handler, VideoRendererEventListener videoRendererEventListener, long j7) {
        if (!this.enableMediaCodecVideoRendererPrewarming || renderer.getClass() != MediaCodecVideoRenderer.class) {
            return null;
        }
        MediaCodecVideoRenderer.Builder experimentalSetLateThresholdToDropDecoderInputUs = new MediaCodecVideoRenderer.Builder(context).setCodecAdapterFactory(getCodecAdapterFactory()).setMediaCodecSelector(mediaCodecSelector).setAllowedJoiningTimeMs(j7).setEnableDecoderFallback(z6).setEventHandler(handler).setEventListener(videoRendererEventListener).setMaxDroppedFramesToNotify(50).experimentalSetParseAv1SampleDependencies(this.parseAv1SampleDependencies).experimentalSetLateThresholdToDropDecoderInputUs(this.lateThresholdToDropDecoderInputUs);
        if (Build.VERSION.SDK_INT >= 34) {
            experimentalSetLateThresholdToDropDecoderInputUs = experimentalSetLateThresholdToDropDecoderInputUs.experimentalSetEnableMediaCodecBufferDecodeOnlyFlag(this.enableMediaCodecBufferDecodeOnlyFlag);
        }
        return experimentalSetLateThresholdToDropDecoderInputUs.build();
    }

    public void buildTextRenderers(Context context, TextOutput textOutput, Looper looper, int i2, ArrayList<Renderer> arrayList) {
        arrayList.add(new TextRenderer(textOutput, looper));
    }

    public void buildVideoRenderers(Context context, int i2, MediaCodecSelector mediaCodecSelector, boolean z6, Handler handler, VideoRendererEventListener videoRendererEventListener, long j7, ArrayList<Renderer> arrayList) {
        String str;
        int i7;
        char c7;
        int i8;
        Class<?> cls = Integer.TYPE;
        Class<?> cls2 = Long.TYPE;
        MediaCodecVideoRenderer.Builder experimentalSetLateThresholdToDropDecoderInputUs = new MediaCodecVideoRenderer.Builder(context).setCodecAdapterFactory(getCodecAdapterFactory()).setMediaCodecSelector(mediaCodecSelector).setAllowedJoiningTimeMs(j7).setEnableDecoderFallback(z6).setEventHandler(handler).setEventListener(videoRendererEventListener).setMaxDroppedFramesToNotify(50).experimentalSetParseAv1SampleDependencies(this.parseAv1SampleDependencies).experimentalSetLateThresholdToDropDecoderInputUs(this.lateThresholdToDropDecoderInputUs);
        if (Build.VERSION.SDK_INT >= 34) {
            experimentalSetLateThresholdToDropDecoderInputUs = experimentalSetLateThresholdToDropDecoderInputUs.experimentalSetEnableMediaCodecBufferDecodeOnlyFlag(this.enableMediaCodecBufferDecodeOnlyFlag);
        }
        arrayList.add(experimentalSetLateThresholdToDropDecoderInputUs.build());
        if (i2 == 0) {
            return;
        }
        int size = arrayList.size();
        if (i2 == 2) {
            size--;
        }
        try {
            try {
                i7 = size + 1;
                try {
                    arrayList.add(size, (Renderer) Class.forName("androidx.media3.decoder.vp9.LibvpxVideoRenderer").getConstructor(cls2, Handler.class, VideoRendererEventListener.class, cls).newInstance(Long.valueOf(j7), handler, videoRendererEventListener, 50));
                    str = TAG;
                    try {
                        Log.i(str, "Loaded LibvpxVideoRenderer.");
                    } catch (ClassNotFoundException unused) {
                        size = i7;
                        i7 = size;
                        try {
                            c7 = 1;
                            try {
                                i8 = i7 + 1;
                            } catch (ClassNotFoundException unused2) {
                            }
                        } catch (ClassNotFoundException unused3) {
                            c7 = 1;
                        }
                        try {
                            arrayList.add(i7, (Renderer) Class.forName("androidx.media3.decoder.av1.Libdav1dVideoRenderer").getConstructor(cls2, Handler.class, VideoRendererEventListener.class, cls).newInstance(Long.valueOf(j7), handler, videoRendererEventListener, 50));
                            Log.i(str, "Loaded Libdav1dVideoRenderer.");
                        } catch (ClassNotFoundException unused4) {
                            i7 = i8;
                            i8 = i7;
                            Class<?> cls3 = Class.forName("androidx.media3.decoder.ffmpeg.ExperimentalFfmpegVideoRenderer");
                            Class<?>[] clsArr = new Class[4];
                            clsArr[0] = cls2;
                            clsArr[c7] = Handler.class;
                            clsArr[2] = VideoRendererEventListener.class;
                            clsArr[3] = cls;
                            Constructor<?> constructor = cls3.getConstructor(clsArr);
                            Object[] objArr = new Object[4];
                            objArr[0] = Long.valueOf(j7);
                            objArr[c7] = handler;
                            objArr[2] = videoRendererEventListener;
                            objArr[3] = 50;
                            arrayList.add(i8, (Renderer) constructor.newInstance(objArr));
                            Log.i(str, "Loaded FfmpegVideoRenderer.");
                        }
                        Class<?> cls32 = Class.forName("androidx.media3.decoder.ffmpeg.ExperimentalFfmpegVideoRenderer");
                        Class<?>[] clsArr2 = new Class[4];
                        clsArr2[0] = cls2;
                        clsArr2[c7] = Handler.class;
                        clsArr2[2] = VideoRendererEventListener.class;
                        clsArr2[3] = cls;
                        Constructor<?> constructor2 = cls32.getConstructor(clsArr2);
                        Object[] objArr2 = new Object[4];
                        objArr2[0] = Long.valueOf(j7);
                        objArr2[c7] = handler;
                        objArr2[2] = videoRendererEventListener;
                        objArr2[3] = 50;
                        arrayList.add(i8, (Renderer) constructor2.newInstance(objArr2));
                        Log.i(str, "Loaded FfmpegVideoRenderer.");
                    }
                } catch (ClassNotFoundException unused5) {
                    str = TAG;
                }
            } catch (Exception e3) {
                throw new IllegalStateException("Error instantiating VP9 extension", e3);
            }
        } catch (ClassNotFoundException unused6) {
            str = TAG;
        }
        try {
            c7 = 1;
            i8 = i7 + 1;
            arrayList.add(i7, (Renderer) Class.forName("androidx.media3.decoder.av1.Libdav1dVideoRenderer").getConstructor(cls2, Handler.class, VideoRendererEventListener.class, cls).newInstance(Long.valueOf(j7), handler, videoRendererEventListener, 50));
            Log.i(str, "Loaded Libdav1dVideoRenderer.");
            try {
                Class<?> cls322 = Class.forName("androidx.media3.decoder.ffmpeg.ExperimentalFfmpegVideoRenderer");
                Class<?>[] clsArr22 = new Class[4];
                clsArr22[0] = cls2;
                clsArr22[c7] = Handler.class;
                clsArr22[2] = VideoRendererEventListener.class;
                clsArr22[3] = cls;
                Constructor<?> constructor22 = cls322.getConstructor(clsArr22);
                Object[] objArr22 = new Object[4];
                objArr22[0] = Long.valueOf(j7);
                objArr22[c7] = handler;
                objArr22[2] = videoRendererEventListener;
                objArr22[3] = 50;
                arrayList.add(i8, (Renderer) constructor22.newInstance(objArr22));
                Log.i(str, "Loaded FfmpegVideoRenderer.");
            } catch (ClassNotFoundException unused7) {
            } catch (Exception e7) {
                throw new IllegalStateException("Error instantiating FFmpeg extension", e7);
            }
        } catch (Exception e8) {
            throw new IllegalStateException("Error instantiating AV1 extension", e8);
        }
    }

    @Override // androidx.media3.exoplayer.RenderersFactory
    public Renderer[] createRenderers(Handler handler, VideoRendererEventListener videoRendererEventListener, AudioRendererEventListener audioRendererEventListener, TextOutput textOutput, MetadataOutput metadataOutput) {
        Handler handler2;
        ArrayList<Renderer> arrayList = new ArrayList<>();
        buildVideoRenderers(this.context, this.extensionRendererMode, this.mediaCodecSelector, this.enableDecoderFallback, handler, videoRendererEventListener, this.allowedVideoJoiningTimeMs, arrayList);
        AudioSink buildAudioSink = buildAudioSink(this.context, this.enableFloatOutput, this.enableAudioOutputPlaybackParameters);
        if (buildAudioSink != null) {
            handler2 = handler;
            buildAudioRenderers(this.context, this.extensionRendererMode, this.mediaCodecSelector, this.enableDecoderFallback, buildAudioSink, handler2, audioRendererEventListener, arrayList);
        } else {
            handler2 = handler;
        }
        buildTextRenderers(this.context, textOutput, handler2.getLooper(), this.extensionRendererMode, arrayList);
        buildMetadataRenderers(this.context, metadataOutput, handler2.getLooper(), this.extensionRendererMode, arrayList);
        buildCameraMotionRenderers(this.context, this.extensionRendererMode, arrayList);
        buildImageRenderers(this.context, arrayList);
        buildMiscellaneousRenderers(this.context, handler2, this.extensionRendererMode, arrayList);
        return (Renderer[]) arrayList.toArray(new Renderer[0]);
    }

    @Override // androidx.media3.exoplayer.RenderersFactory
    public Renderer createSecondaryRenderer(Renderer renderer, Handler handler, VideoRendererEventListener videoRendererEventListener, AudioRendererEventListener audioRendererEventListener, TextOutput textOutput, MetadataOutput metadataOutput) {
        if (renderer.getTrackType() == 2) {
            return buildSecondaryVideoRenderer(renderer, this.context, this.extensionRendererMode, this.mediaCodecSelector, this.enableDecoderFallback, handler, videoRendererEventListener, this.allowedVideoJoiningTimeMs);
        }
        return null;
    }

    public DefaultRenderersFactory experimentalSetEnableMediaCodecBufferDecodeOnlyFlag(boolean z6) {
        this.enableMediaCodecBufferDecodeOnlyFlag = z6;
        return this;
    }

    public final DefaultRenderersFactory experimentalSetEnableMediaCodecVideoRendererPrewarming(boolean z6) {
        this.enableMediaCodecVideoRendererPrewarming = z6;
        return this;
    }

    public final DefaultRenderersFactory experimentalSetLateThresholdToDropDecoderInputUs(long j7) {
        this.lateThresholdToDropDecoderInputUs = j7;
        return this;
    }

    public final DefaultRenderersFactory experimentalSetMediaCodecAsyncCryptoFlagEnabled(boolean z6) {
        this.codecAdapterFactory.experimentalSetAsyncCryptoFlagEnabled(z6);
        return this;
    }

    public final DefaultRenderersFactory experimentalSetParseAv1SampleDependencies(boolean z6) {
        this.parseAv1SampleDependencies = z6;
        return this;
    }

    public final DefaultRenderersFactory forceDisableMediaCodecAsynchronousQueueing() {
        this.codecAdapterFactory.forceDisableAsynchronous();
        return this;
    }

    public final DefaultRenderersFactory forceEnableMediaCodecAsynchronousQueueing() {
        this.codecAdapterFactory.forceEnableAsynchronous();
        return this;
    }

    public MediaCodecAdapter.Factory getCodecAdapterFactory() {
        return this.codecAdapterFactory;
    }

    public ImageDecoder.Factory getImageDecoderFactory(Context context) {
        return new BitmapFactoryImageDecoder.Factory(context);
    }

    public final DefaultRenderersFactory setAllowedVideoJoiningTimeMs(long j7) {
        this.allowedVideoJoiningTimeMs = j7;
        return this;
    }

    public final DefaultRenderersFactory setEnableAudioFloatOutput(boolean z6) {
        this.enableFloatOutput = z6;
        return this;
    }

    public final DefaultRenderersFactory setEnableAudioOutputPlaybackParameters(boolean z6) {
        this.enableAudioOutputPlaybackParameters = z6;
        return this;
    }

    @Deprecated
    public final DefaultRenderersFactory setEnableAudioTrackPlaybackParams(boolean z6) {
        return setEnableAudioOutputPlaybackParameters(z6);
    }

    public final DefaultRenderersFactory setEnableDecoderFallback(boolean z6) {
        this.enableDecoderFallback = z6;
        return this;
    }

    public final DefaultRenderersFactory setExtensionRendererMode(int i2) {
        this.extensionRendererMode = i2;
        return this;
    }

    public final DefaultRenderersFactory setMediaCodecSelector(MediaCodecSelector mediaCodecSelector) {
        this.mediaCodecSelector = mediaCodecSelector;
        return this;
    }

    public void buildImageRenderers(Context context, ArrayList<Renderer> arrayList) {
        buildImageRenderers(arrayList);
    }
}
