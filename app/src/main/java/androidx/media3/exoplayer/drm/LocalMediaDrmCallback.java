package androidx.media3.exoplayer.drm;

import P3.v;
import androidx.media3.common.util.UnstableApi;
import androidx.media3.exoplayer.drm.ExoMediaDrm;
import androidx.media3.exoplayer.drm.MediaDrmCallback;
import java.util.UUID;

@UnstableApi
/* loaded from: classes.dex */
public final class LocalMediaDrmCallback implements MediaDrmCallback {
    private final MediaDrmCallback.Response keyResponse;

    public LocalMediaDrmCallback(byte[] bArr) {
        this.keyResponse = new MediaDrmCallback.Response((byte[]) v.checkNotNull(bArr));
    }

    @Override // androidx.media3.exoplayer.drm.MediaDrmCallback
    public MediaDrmCallback.Response executeKeyRequest(UUID uuid, ExoMediaDrm.KeyRequest keyRequest) {
        return this.keyResponse;
    }

    @Override // androidx.media3.exoplayer.drm.MediaDrmCallback
    public MediaDrmCallback.Response executeProvisionRequest(UUID uuid, ExoMediaDrm.ProvisionRequest provisionRequest) {
        throw new UnsupportedOperationException();
    }
}
