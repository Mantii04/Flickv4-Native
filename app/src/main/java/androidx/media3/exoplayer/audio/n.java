package androidx.media3.exoplayer.audio;

import android.media.AudioRouting;
import android.media.MediaCodec;
import java.util.Comparator;
import java.util.PriorityQueue;

/* loaded from: classes.dex */
public abstract /* synthetic */ class n {
    public static /* bridge */ /* synthetic */ AudioRouting.OnRoutingChangedListener h(Object obj) {
        return (AudioRouting.OnRoutingChangedListener) obj;
    }

    public static /* synthetic */ MediaCodec.CryptoInfo.Pattern i(int i2, int i7) {
        return new MediaCodec.CryptoInfo.Pattern(i2, i7);
    }

    public static /* synthetic */ PriorityQueue o(Comparator comparator) {
        return new PriorityQueue(comparator);
    }

    public static /* synthetic */ void r() {
    }
}
