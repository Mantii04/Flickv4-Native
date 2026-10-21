package y2;

import android.util.Log;
import com.bumptech.glide.load.ImageHeaderParser$ImageType;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.List;
import l2.InterfaceC1222c;
import l2.q;
import l2.r;
import n2.InterfaceC1391M;
import o2.InterfaceC1428b;

/* loaded from: classes.dex */
public final class n implements r {

    /* renamed from: a, reason: collision with root package name */
    public final List f21099a;

    /* renamed from: b, reason: collision with root package name */
    public final r f21100b;

    /* renamed from: c, reason: collision with root package name */
    public final InterfaceC1428b f21101c;

    public n(List<InterfaceC1222c> list, r rVar, InterfaceC1428b interfaceC1428b) {
        this.f21099a = list;
        this.f21100b = rVar;
        this.f21101c = interfaceC1428b;
    }

    @Override // l2.r
    public InterfaceC1391M decode(InputStream inputStream, int i2, int i7, q qVar) throws IOException {
        byte[] bArr;
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream(16384);
        try {
            byte[] bArr2 = new byte[16384];
            while (true) {
                int read = inputStream.read(bArr2);
                if (read == -1) {
                    break;
                }
                byteArrayOutputStream.write(bArr2, 0, read);
            }
            byteArrayOutputStream.flush();
            bArr = byteArrayOutputStream.toByteArray();
        } catch (IOException e3) {
            if (Log.isLoggable("StreamGifDecoder", 5)) {
                Log.w("StreamGifDecoder", "Error reading data from stream", e3);
            }
            bArr = null;
        }
        if (bArr == null) {
            return null;
        }
        return this.f21100b.decode(ByteBuffer.wrap(bArr), i2, i7, qVar);
    }

    @Override // l2.r
    public boolean handles(InputStream inputStream, q qVar) throws IOException {
        return !((Boolean) qVar.get(m.f21098b)).booleanValue() && l2.l.getType((List<InterfaceC1222c>) this.f21099a, inputStream, this.f21101c) == ImageHeaderParser$ImageType.GIF;
    }
}
