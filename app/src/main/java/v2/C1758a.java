package v2;

import com.bumptech.glide.load.data.f;
import com.bumptech.glide.load.data.g;
import java.nio.ByteBuffer;

/* renamed from: v2.a, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C1758a implements f {
    @Override // com.bumptech.glide.load.data.f
    public Class<ByteBuffer> getDataClass() {
        return ByteBuffer.class;
    }

    @Override // com.bumptech.glide.load.data.f
    public g build(ByteBuffer byteBuffer) {
        return new C1759b(byteBuffer);
    }
}
