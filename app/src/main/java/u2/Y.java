package u2;

import android.media.MediaExtractor;
import android.media.MediaMetadataRetriever;
import java.io.IOException;

/* loaded from: classes.dex */
public interface Y {
    void initializeExtractor(MediaExtractor mediaExtractor, Object obj) throws IOException;

    void initializeRetriever(MediaMetadataRetriever mediaMetadataRetriever, Object obj);
}
