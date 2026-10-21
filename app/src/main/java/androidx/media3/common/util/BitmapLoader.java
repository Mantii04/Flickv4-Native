package androidx.media3.common.util;

import V3.F;
import android.net.Uri;
import androidx.media3.common.MediaMetadata;

@UnstableApi
/* loaded from: classes.dex */
public interface BitmapLoader {
    F decodeBitmap(byte[] bArr);

    F loadBitmap(Uri uri);

    F loadBitmapFromMetadata(MediaMetadata mediaMetadata);

    boolean supportsMimeType(String str);
}
