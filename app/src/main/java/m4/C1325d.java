package m4;

import java.io.IOException;

/* renamed from: m4.d, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C1325d extends L {
    @Override // m4.L
    public boolean canHandleRequest(I i2) {
        return true;
    }

    @Override // m4.L
    public K load(I i2, int i7) throws IOException {
        throw new IllegalStateException("Unrecognized type of request: " + i2);
    }
}
