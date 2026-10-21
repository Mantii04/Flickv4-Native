package l2;

import com.bumptech.glide.load.ImageHeaderParser$ImageType;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import o2.InterfaceC1428b;

/* renamed from: l2.c, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public interface InterfaceC1222c {
    int getOrientation(InputStream inputStream, InterfaceC1428b interfaceC1428b) throws IOException;

    int getOrientation(ByteBuffer byteBuffer, InterfaceC1428b interfaceC1428b) throws IOException;

    ImageHeaderParser$ImageType getType(InputStream inputStream) throws IOException;

    ImageHeaderParser$ImageType getType(ByteBuffer byteBuffer) throws IOException;
}
