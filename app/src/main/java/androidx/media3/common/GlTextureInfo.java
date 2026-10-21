package androidx.media3.common;

import androidx.media3.common.util.GlUtil;
import androidx.media3.common.util.UnstableApi;

@UnstableApi
/* loaded from: classes.dex */
public final class GlTextureInfo {
    public static final GlTextureInfo UNSET = new GlTextureInfo(-1, -1, -1, -1, -1);
    public final int fboId;
    public final int height;
    public final int rboId;
    public final int texId;
    public final int width;

    public GlTextureInfo(int i2, int i7, int i8, int i9, int i10) {
        this.texId = i2;
        this.fboId = i7;
        this.rboId = i8;
        this.width = i9;
        this.height = i10;
    }

    public void release() throws GlUtil.GlException {
        int i2 = this.texId;
        if (i2 != -1) {
            GlUtil.deleteTexture(i2);
        }
        int i7 = this.fboId;
        if (i7 != -1) {
            GlUtil.deleteFbo(i7);
        }
        int i8 = this.rboId;
        if (i8 != -1) {
            GlUtil.deleteRbo(i8);
        }
    }
}
