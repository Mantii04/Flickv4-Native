package u2;

import com.bumptech.glide.load.ImageHeaderParser$ImageType;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import l2.InterfaceC1222c;
import o2.InterfaceC1428b;

/* renamed from: u2.B, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C1671B implements InterfaceC1222c {
    @Override // l2.InterfaceC1222c
    public int getOrientation(InputStream inputStream, InterfaceC1428b interfaceC1428b) throws IOException {
        int attributeInt = new f0.g(inputStream).getAttributeInt("Orientation", 1);
        if (attributeInt == 0) {
            return -1;
        }
        return attributeInt;
    }

    @Override // l2.InterfaceC1222c
    public ImageHeaderParser$ImageType getType(InputStream inputStream) {
        return ImageHeaderParser$ImageType.UNKNOWN;
    }

    @Override // l2.InterfaceC1222c
    public ImageHeaderParser$ImageType getType(ByteBuffer byteBuffer) {
        return ImageHeaderParser$ImageType.UNKNOWN;
    }

    @Override // l2.InterfaceC1222c
    public int getOrientation(ByteBuffer byteBuffer, InterfaceC1428b interfaceC1428b) throws IOException {
        return getOrientation(G2.c.toStream(byteBuffer), interfaceC1428b);
    }
}
