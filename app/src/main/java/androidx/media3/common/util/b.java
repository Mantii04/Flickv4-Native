package androidx.media3.common.util;

import V3.F;
import android.net.Uri;
import androidx.media3.common.MediaMetadata;

/* loaded from: classes.dex */
public abstract /* synthetic */ class b {
    public static F a(BitmapLoader bitmapLoader, MediaMetadata mediaMetadata) {
        byte[] bArr = mediaMetadata.artworkData;
        if (bArr != null) {
            return bitmapLoader.decodeBitmap(bArr);
        }
        Uri uri = mediaMetadata.artworkUri;
        if (uri != null) {
            return bitmapLoader.loadBitmap(uri);
        }
        return null;
    }
}
