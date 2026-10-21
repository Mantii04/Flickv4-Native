package u2;

import com.bumptech.glide.load.resource.bitmap.DefaultImageHeaderParser$Reader$EndOfFileException;
import java.io.IOException;
import java.io.InputStream;

/* renamed from: u2.m, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C1686m implements InterfaceC1685l {

    /* renamed from: a, reason: collision with root package name */
    public final InputStream f20294a;

    public C1686m(InputStream inputStream) {
        this.f20294a = inputStream;
    }

    @Override // u2.InterfaceC1685l
    public int getUInt16() throws IOException {
        return (getUInt8() << 8) | getUInt8();
    }

    @Override // u2.InterfaceC1685l
    public short getUInt8() throws IOException {
        int read = this.f20294a.read();
        if (read != -1) {
            return (short) read;
        }
        throw new DefaultImageHeaderParser$Reader$EndOfFileException();
    }

    @Override // u2.InterfaceC1685l
    public int read(byte[] bArr, int i2) throws IOException {
        int i7 = 0;
        int i8 = 0;
        while (i7 < i2 && (i8 = this.f20294a.read(bArr, i7, i2 - i7)) != -1) {
            i7 += i8;
        }
        if (i7 == 0 && i8 == -1) {
            throw new DefaultImageHeaderParser$Reader$EndOfFileException();
        }
        return i7;
    }

    @Override // u2.InterfaceC1685l
    public long skip(long j7) throws IOException {
        if (j7 < 0) {
            return 0L;
        }
        long j8 = j7;
        while (j8 > 0) {
            InputStream inputStream = this.f20294a;
            long skip = inputStream.skip(j8);
            if (skip > 0) {
                j8 -= skip;
            } else {
                if (inputStream.read() == -1) {
                    break;
                }
                j8--;
            }
        }
        return j7 - j8;
    }
}
