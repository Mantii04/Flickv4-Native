package androidx.media3.common.audio;

import androidx.media3.common.audio.AudioProcessor;

/* loaded from: classes.dex */
public abstract /* synthetic */ class e {
    public static void a(AudioProcessor audioProcessor) {
        throw new IllegalStateException("AudioProcessor must implement at least one #flush() overload.");
    }

    public static void b(AudioProcessor audioProcessor, AudioProcessor.StreamMetadata streamMetadata) {
        audioProcessor.flush();
    }

    public static long c(AudioProcessor audioProcessor, long j7) {
        return j7;
    }
}
