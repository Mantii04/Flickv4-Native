package l2;

import com.bumptech.glide.load.ImageHeaderParser$ImageType;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.List;
import o2.InterfaceC1428b;

/* loaded from: classes.dex */
public abstract class l {
    public static int a(List list, j jVar) {
        int size = list.size();
        for (int i2 = 0; i2 < size; i2++) {
            int orientationAndRewind = jVar.getOrientationAndRewind((InterfaceC1222c) list.get(i2));
            if (orientationAndRewind != -1) {
                return orientationAndRewind;
            }
        }
        return -1;
    }

    public static ImageHeaderParser$ImageType b(List list, k kVar) {
        int size = list.size();
        for (int i2 = 0; i2 < size; i2++) {
            ImageHeaderParser$ImageType typeAndRewind = kVar.getTypeAndRewind((InterfaceC1222c) list.get(i2));
            if (typeAndRewind != ImageHeaderParser$ImageType.UNKNOWN) {
                return typeAndRewind;
            }
        }
        return ImageHeaderParser$ImageType.UNKNOWN;
    }

    public static int getOrientation(List<InterfaceC1222c> list, ByteBuffer byteBuffer, InterfaceC1428b interfaceC1428b) throws IOException {
        if (byteBuffer == null) {
            return -1;
        }
        return a(list, new C1226g(byteBuffer, interfaceC1428b));
    }

    public static ImageHeaderParser$ImageType getType(List<InterfaceC1222c> list, InputStream inputStream, InterfaceC1428b interfaceC1428b) throws IOException {
        if (inputStream == null) {
            return ImageHeaderParser$ImageType.UNKNOWN;
        }
        if (!inputStream.markSupported()) {
            inputStream = new com.bumptech.glide.load.resource.bitmap.a(inputStream, interfaceC1428b);
        }
        inputStream.mark(5242880);
        return b(list, new C1223d(inputStream));
    }

    public static int getOrientation(List<InterfaceC1222c> list, InputStream inputStream, InterfaceC1428b interfaceC1428b) throws IOException {
        if (inputStream == null) {
            return -1;
        }
        if (!inputStream.markSupported()) {
            inputStream = new com.bumptech.glide.load.resource.bitmap.a(inputStream, interfaceC1428b);
        }
        inputStream.mark(5242880);
        return a(list, new h(inputStream, interfaceC1428b));
    }

    public static int getOrientation(List<InterfaceC1222c> list, com.bumptech.glide.load.data.t tVar, InterfaceC1428b interfaceC1428b) throws IOException {
        return a(list, new i(tVar, interfaceC1428b));
    }

    public static ImageHeaderParser$ImageType getType(List<InterfaceC1222c> list, ByteBuffer byteBuffer) throws IOException {
        if (byteBuffer == null) {
            return ImageHeaderParser$ImageType.UNKNOWN;
        }
        return b(list, new C1224e(byteBuffer));
    }

    public static ImageHeaderParser$ImageType getType(List<InterfaceC1222c> list, com.bumptech.glide.load.data.t tVar, InterfaceC1428b interfaceC1428b) throws IOException {
        return b(list, new C1225f(tVar, interfaceC1428b));
    }
}
