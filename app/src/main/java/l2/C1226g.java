package l2;

import java.io.IOException;
import java.nio.ByteBuffer;
import o2.InterfaceC1428b;

/* renamed from: l2.g, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C1226g implements j {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ ByteBuffer f18116a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ InterfaceC1428b f18117b;

    public C1226g(ByteBuffer byteBuffer, InterfaceC1428b interfaceC1428b) {
        this.f18116a = byteBuffer;
        this.f18117b = interfaceC1428b;
    }

    @Override // l2.j
    public int getOrientationAndRewind(InterfaceC1222c interfaceC1222c) throws IOException {
        ByteBuffer byteBuffer = this.f18116a;
        try {
            return interfaceC1222c.getOrientation(byteBuffer, this.f18117b);
        } finally {
            G2.c.rewind(byteBuffer);
        }
    }
}
