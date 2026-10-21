package androidx.media3.exoplayer.source;

import V3.F;
import android.net.Uri;
import androidx.media3.common.util.UnstableApi;

@UnstableApi
/* loaded from: classes.dex */
public interface ExternalLoader {

    public static final class LoadRequest {
        public final Uri uri;

        public LoadRequest(Uri uri) {
            this.uri = uri;
        }
    }

    F load(LoadRequest loadRequest);
}
