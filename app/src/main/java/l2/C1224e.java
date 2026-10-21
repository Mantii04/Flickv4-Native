package l2;

import com.bumptech.glide.load.ImageHeaderParser$ImageType;
import java.io.IOException;
import java.nio.ByteBuffer;

/* renamed from: l2.e, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C1224e implements k {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ ByteBuffer f18113a;

    public C1224e(ByteBuffer byteBuffer) {
        this.f18113a = byteBuffer;
    }

    @Override // l2.k
    public ImageHeaderParser$ImageType getTypeAndRewind(InterfaceC1222c interfaceC1222c) throws IOException {
        ByteBuffer byteBuffer = this.f18113a;
        try {
            return interfaceC1222c.getType(byteBuffer);
        } finally {
            G2.c.rewind(byteBuffer);
        }
    }
}
