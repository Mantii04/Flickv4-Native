package androidx.media3.exoplayer.audio;

import androidx.media3.common.util.Util;
import androidx.media3.exoplayer.audio.DefaultAudioSink;

/* loaded from: classes.dex */
public abstract /* synthetic */ class v {
    public static int a(DefaultAudioSink.AudioTrackProvider audioTrackProvider, int i2) {
        return Util.getAudioTrackChannelConfig(i2);
    }
}
