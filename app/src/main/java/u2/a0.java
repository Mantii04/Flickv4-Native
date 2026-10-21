package u2;

import android.media.MediaExtractor;
import android.media.MediaMetadataRetriever;
import android.os.ParcelFileDescriptor;
import java.io.IOException;

/* loaded from: classes.dex */
public final class a0 implements Y {
    @Override // u2.Y
    public void initializeExtractor(MediaExtractor mediaExtractor, ParcelFileDescriptor parcelFileDescriptor) throws IOException {
        mediaExtractor.setDataSource(parcelFileDescriptor.getFileDescriptor());
    }

    @Override // u2.Y
    public void initializeRetriever(MediaMetadataRetriever mediaMetadataRetriever, ParcelFileDescriptor parcelFileDescriptor) {
        mediaMetadataRetriever.setDataSource(parcelFileDescriptor.getFileDescriptor());
    }
}
