package d1;

import androidx.media3.common.util.ParsableByteArray;
import java.io.IOException;
import v0.D;

/* loaded from: classes.dex */
public final class f {

    /* renamed from: a, reason: collision with root package name */
    public final int f13523a;

    /* renamed from: b, reason: collision with root package name */
    public final long f13524b;

    public f(int i2, long j7) {
        this.f13523a = i2;
        this.f13524b = j7;
    }

    public static f peek(D d7, ParsableByteArray parsableByteArray) throws IOException {
        d7.peekFully(parsableByteArray.getData(), 0, 8);
        parsableByteArray.setPosition(0);
        return new f(parsableByteArray.readInt(), parsableByteArray.readLittleEndianUnsignedInt());
    }
}
