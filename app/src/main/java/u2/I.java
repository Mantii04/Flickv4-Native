package u2;

import android.graphics.ImageDecoder;
import java.io.IOException;
import java.io.InputStream;
import n2.InterfaceC1391M;

/* loaded from: classes.dex */
public final class I implements l2.r {

    /* renamed from: a, reason: collision with root package name */
    public final C1677d f20263a = new C1677d();

    @Override // l2.r
    public InterfaceC1391M decode(InputStream inputStream, int i2, int i7, l2.q qVar) throws IOException {
        ImageDecoder.Source createSource;
        createSource = ImageDecoder.createSource(G2.c.fromStream(inputStream));
        return this.f20263a.decode(createSource, i2, i7, qVar);
    }

    @Override // l2.r
    public boolean handles(InputStream inputStream, l2.q qVar) throws IOException {
        return true;
    }
}
