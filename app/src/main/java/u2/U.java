package u2;

import java.nio.ByteBuffer;
import java.security.MessageDigest;

/* loaded from: classes.dex */
public final class U implements l2.o {

    /* renamed from: a, reason: collision with root package name */
    public final ByteBuffer f20277a = ByteBuffer.allocate(4);

    @Override // l2.o
    public void update(byte[] bArr, Integer num, MessageDigest messageDigest) {
        if (num == null) {
            return;
        }
        messageDigest.update(bArr);
        synchronized (this.f20277a) {
            this.f20277a.position(0);
            messageDigest.update(this.f20277a.putInt(num.intValue()).array());
        }
    }
}
