package v0;

import android.net.Uri;
import java.util.List;
import java.util.Map;

/* loaded from: classes.dex */
public interface I {

    /* renamed from: g, reason: collision with root package name */
    public static final androidx.media3.exoplayer.source.chunk.a f20372g = new androidx.media3.exoplayer.source.chunk.a(12);

    C[] createExtractors();

    C[] createExtractors(Uri uri, Map<String, List<String>> map);

    I experimentalSetCodecsToParseWithinGopSampleDependencies(int i2);

    @Deprecated
    I experimentalSetTextTrackTranscodingEnabled(boolean z6);

    I setSubtitleParserFactory(S0.q qVar);
}
