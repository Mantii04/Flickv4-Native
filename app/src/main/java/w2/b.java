package w2;

import android.graphics.ImageDecoder;
import android.os.Build;
import com.bumptech.glide.load.ImageHeaderParser$ImageType;
import java.io.IOException;
import java.nio.ByteBuffer;
import l2.l;
import l2.q;
import l2.r;
import n2.InterfaceC1391M;

/* loaded from: classes.dex */
public final class b implements r {

    /* renamed from: a, reason: collision with root package name */
    public final d f20672a;

    public b(d dVar) {
        this.f20672a = dVar;
    }

    @Override // l2.r
    public boolean handles(ByteBuffer byteBuffer, q qVar) throws IOException {
        ImageHeaderParser$ImageType type = l.getType(this.f20672a.f20674a, byteBuffer);
        if (type != ImageHeaderParser$ImageType.ANIMATED_WEBP) {
            return Build.VERSION.SDK_INT >= 31 && type == ImageHeaderParser$ImageType.ANIMATED_AVIF;
        }
        return true;
    }

    @Override // l2.r
    public InterfaceC1391M decode(ByteBuffer byteBuffer, int i2, int i7, q qVar) throws IOException {
        ImageDecoder.Source createSource;
        createSource = ImageDecoder.createSource(byteBuffer);
        return d.a(createSource, i2, i7, qVar);
    }
}
