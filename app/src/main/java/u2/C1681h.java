package u2;

import android.graphics.ImageDecoder;
import java.io.IOException;
import java.nio.ByteBuffer;
import n2.InterfaceC1391M;

/* renamed from: u2.h, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C1681h implements l2.r {

    /* renamed from: a, reason: collision with root package name */
    public final C1677d f20290a = new C1677d();

    @Override // l2.r
    public InterfaceC1391M decode(ByteBuffer byteBuffer, int i2, int i7, l2.q qVar) throws IOException {
        ImageDecoder.Source createSource;
        createSource = ImageDecoder.createSource(byteBuffer);
        return this.f20290a.decode(createSource, i2, i7, qVar);
    }

    @Override // l2.r
    public boolean handles(ByteBuffer byteBuffer, l2.q qVar) throws IOException {
        return true;
    }
}
