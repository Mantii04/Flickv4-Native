package w2;

import android.graphics.ImageDecoder;
import android.os.Build;
import com.bumptech.glide.load.ImageHeaderParser$ImageType;
import java.io.IOException;
import java.io.InputStream;
import java.util.List;
import l2.InterfaceC1222c;
import l2.l;
import l2.q;
import l2.r;
import n2.InterfaceC1391M;

/* loaded from: classes.dex */
public final class c implements r {

    /* renamed from: a, reason: collision with root package name */
    public final d f20673a;

    public c(d dVar) {
        this.f20673a = dVar;
    }

    @Override // l2.r
    public boolean handles(InputStream inputStream, q qVar) throws IOException {
        d dVar = this.f20673a;
        ImageHeaderParser$ImageType type = l.getType((List<InterfaceC1222c>) dVar.f20674a, inputStream, dVar.f20675b);
        if (type != ImageHeaderParser$ImageType.ANIMATED_WEBP) {
            return Build.VERSION.SDK_INT >= 31 && type == ImageHeaderParser$ImageType.ANIMATED_AVIF;
        }
        return true;
    }

    @Override // l2.r
    public InterfaceC1391M decode(InputStream inputStream, int i2, int i7, q qVar) throws IOException {
        ImageDecoder.Source createSource;
        createSource = ImageDecoder.createSource(G2.c.fromStream(inputStream));
        return d.a(createSource, i2, i7, qVar);
    }
}
