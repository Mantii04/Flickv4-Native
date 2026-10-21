package u2;

import java.nio.ByteBuffer;
import java.security.MessageDigest;

/* loaded from: classes.dex */
public final class T implements l2.o {

    /* renamed from: a, reason: collision with root package name */
    public final ByteBuffer f20276a = ByteBuffer.allocate(8);

    @Override // l2.o
    public void update(byte[] bArr, Long l7, MessageDigest messageDigest) {
        messageDigest.update(bArr);
        synchronized (this.f20276a) {
            this.f20276a.position(0);
            messageDigest.update(this.f20276a.putLong(l7.longValue()).array());
        }
    }
}
