package N0;

import androidx.media3.common.util.ParsableByteArray;
import java.io.IOException;
import v0.D;

/* loaded from: classes.dex */
public final class i {

    /* renamed from: a, reason: collision with root package name */
    public final ParsableByteArray f2285a = new ParsableByteArray(8);

    /* renamed from: b, reason: collision with root package name */
    public int f2286b;

    public final long a(D d7) {
        ParsableByteArray parsableByteArray = this.f2285a;
        int i2 = 0;
        d7.peekFully(parsableByteArray.getData(), 0, 1);
        int i7 = parsableByteArray.getData()[0] & 255;
        if (i7 == 0) {
            return Long.MIN_VALUE;
        }
        int i8 = 128;
        int i9 = 0;
        while ((i7 & i8) == 0) {
            i8 >>= 1;
            i9++;
        }
        int i10 = i7 & (~i8);
        d7.peekFully(parsableByteArray.getData(), 1, i9);
        while (i2 < i9) {
            i2++;
            i10 = (parsableByteArray.getData()[i2] & 255) + (i10 << 8);
        }
        this.f2286b = i9 + 1 + this.f2286b;
        return i10;
    }

    public boolean sniff(D d7) throws IOException {
        long length = d7.getLength();
        long j7 = 1024;
        if (length != -1 && length <= 1024) {
            j7 = length;
        }
        int i2 = (int) j7;
        ParsableByteArray parsableByteArray = this.f2285a;
        d7.peekFully(parsableByteArray.getData(), 0, 4);
        this.f2286b = 4;
        for (long readUnsignedInt = parsableByteArray.readUnsignedInt(); readUnsignedInt != 440786851; readUnsignedInt = ((readUnsignedInt << 8) & (-256)) | (parsableByteArray.getData()[0] & 255)) {
            int i7 = this.f2286b + 1;
            this.f2286b = i7;
            if (i7 == i2) {
                return false;
            }
            d7.peekFully(parsableByteArray.getData(), 0, 1);
        }
        long a7 = a(d7);
        long j8 = this.f2286b;
        if (a7 != Long.MIN_VALUE && (length == -1 || j8 + a7 < length)) {
            while (true) {
                int i8 = this.f2286b;
                long j9 = j8 + a7;
                if (i8 < j9) {
                    if (a(d7) == Long.MIN_VALUE) {
                        return false;
                    }
                    long a8 = a(d7);
                    if (a8 < 0 || a8 > 2147483647L) {
                        break;
                    }
                    if (a8 != 0) {
                        int i9 = (int) a8;
                        d7.advancePeekPosition(i9);
                        this.f2286b += i9;
                    }
                } else if (i8 == j9) {
                    return true;
                }
            }
            return false;
        }
        return false;
    }
}
