package v2;

import com.bumptech.glide.load.data.g;
import java.nio.ByteBuffer;

/* renamed from: v2.b, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C1759b implements g {

    /* renamed from: a, reason: collision with root package name */
    public final ByteBuffer f20623a;

    public C1759b(ByteBuffer byteBuffer) {
        this.f20623a = byteBuffer;
    }

    @Override // com.bumptech.glide.load.data.g
    public ByteBuffer rewindAndGet() {
        ByteBuffer byteBuffer = this.f20623a;
        byteBuffer.position(0);
        return byteBuffer;
    }

    @Override // com.bumptech.glide.load.data.g
    public void cleanup() {
    }
}
