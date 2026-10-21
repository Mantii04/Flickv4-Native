package u2;

import android.media.MediaExtractor;
import android.media.MediaMetadataRetriever;
import java.io.IOException;
import java.nio.ByteBuffer;

/* loaded from: classes.dex */
public final class X implements Y {
    @Override // u2.Y
    public void initializeExtractor(MediaExtractor mediaExtractor, ByteBuffer byteBuffer) throws IOException {
        mediaExtractor.setDataSource(new W(byteBuffer));
    }

    @Override // u2.Y
    public void initializeRetriever(MediaMetadataRetriever mediaMetadataRetriever, ByteBuffer byteBuffer) {
        mediaMetadataRetriever.setDataSource(new W(byteBuffer));
    }
}
