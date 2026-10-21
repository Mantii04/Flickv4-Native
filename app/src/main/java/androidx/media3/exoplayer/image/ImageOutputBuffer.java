package androidx.media3.exoplayer.image;

import android.graphics.Bitmap;
import androidx.media3.common.util.UnstableApi;
import u0.AbstractC1667h;

@UnstableApi
/* loaded from: classes.dex */
public abstract class ImageOutputBuffer extends AbstractC1667h {
    public Bitmap bitmap;

    @Override // u0.AbstractC1667h, u0.AbstractC1660a
    public void clear() {
        this.bitmap = null;
        super.clear();
    }
}
