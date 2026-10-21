package androidx.media3.exoplayer.hls;

import P3.v;
import android.net.Uri;
import java.util.LinkedHashMap;
import java.util.Map;

/* loaded from: classes.dex */
final class FullSegmentEncryptionKeyCache {
    private final LinkedHashMap<Uri, byte[]> backingMap;

    public FullSegmentEncryptionKeyCache(final int i2) {
        this.backingMap = new LinkedHashMap<Uri, byte[]>(i2 + 1, 1.0f, false) { // from class: androidx.media3.exoplayer.hls.FullSegmentEncryptionKeyCache.1
            @Override // java.util.LinkedHashMap
            public boolean removeEldestEntry(Map.Entry<Uri, byte[]> entry) {
                return size() > i2;
            }
        };
    }

    public boolean containsUri(Uri uri) {
        return this.backingMap.containsKey(v.checkNotNull(uri));
    }

    public byte[] get(Uri uri) {
        if (uri == null) {
            return null;
        }
        return this.backingMap.get(uri);
    }

    public byte[] put(Uri uri, byte[] bArr) {
        return this.backingMap.put((Uri) v.checkNotNull(uri), (byte[]) v.checkNotNull(bArr));
    }

    public byte[] remove(Uri uri) {
        return this.backingMap.remove(v.checkNotNull(uri));
    }
}
