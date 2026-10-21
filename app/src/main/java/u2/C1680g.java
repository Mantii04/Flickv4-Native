package u2;

import java.io.IOException;
import java.nio.ByteBuffer;
import n2.InterfaceC1391M;

/* renamed from: u2.g, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C1680g implements l2.r {

    /* renamed from: a, reason: collision with root package name */
    public final C1696x f20289a;

    public C1680g(C1696x c1696x) {
        this.f20289a = c1696x;
    }

    @Override // l2.r
    public InterfaceC1391M decode(ByteBuffer byteBuffer, int i2, int i7, l2.q qVar) throws IOException {
        return this.f20289a.decode(byteBuffer, i2, i7, qVar);
    }

    @Override // l2.r
    public boolean handles(ByteBuffer byteBuffer, l2.q qVar) {
        return this.f20289a.handles(byteBuffer);
    }
}
