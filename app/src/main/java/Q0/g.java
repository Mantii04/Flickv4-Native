package Q0;

import P3.v;
import androidx.media3.common.ParserException;
import androidx.media3.common.util.ParsableByteArray;
import java.io.IOException;
import v0.D;
import v0.G;

/* loaded from: classes.dex */
public final class g {

    /* renamed from: a, reason: collision with root package name */
    public int f2770a;

    /* renamed from: b, reason: collision with root package name */
    public long f2771b;

    /* renamed from: c, reason: collision with root package name */
    public int f2772c;

    /* renamed from: d, reason: collision with root package name */
    public int f2773d;

    /* renamed from: e, reason: collision with root package name */
    public int f2774e;

    /* renamed from: f, reason: collision with root package name */
    public final int[] f2775f = new int[255];

    /* renamed from: g, reason: collision with root package name */
    public final ParsableByteArray f2776g = new ParsableByteArray(255);

    public boolean populate(D d7, boolean z6) throws IOException {
        reset();
        ParsableByteArray parsableByteArray = this.f2776g;
        parsableByteArray.reset(27);
        if (G.peekFullyQuietly(d7, parsableByteArray.getData(), 0, 27, z6) && parsableByteArray.readUnsignedInt() == 1332176723) {
            if (parsableByteArray.readUnsignedByte() == 0) {
                this.f2770a = parsableByteArray.readUnsignedByte();
                this.f2771b = parsableByteArray.readLittleEndianLong();
                parsableByteArray.readLittleEndianUnsignedInt();
                parsableByteArray.readLittleEndianUnsignedInt();
                parsableByteArray.readLittleEndianUnsignedInt();
                int readUnsignedByte = parsableByteArray.readUnsignedByte();
                this.f2772c = readUnsignedByte;
                this.f2773d = readUnsignedByte + 27;
                parsableByteArray.reset(readUnsignedByte);
                if (G.peekFullyQuietly(d7, parsableByteArray.getData(), 0, this.f2772c, z6)) {
                    for (int i2 = 0; i2 < this.f2772c; i2++) {
                        int readUnsignedByte2 = parsableByteArray.readUnsignedByte();
                        this.f2775f[i2] = readUnsignedByte2;
                        this.f2774e += readUnsignedByte2;
                    }
                    return true;
                }
            } else if (!z6) {
                throw ParserException.createForUnsupportedContainerFeature("unsupported bit stream revision");
            }
        }
        return false;
    }

    public void reset() {
        this.f2770a = 0;
        this.f2771b = 0L;
        this.f2772c = 0;
        this.f2773d = 0;
        this.f2774e = 0;
    }

    public boolean skipToNextPage(D d7) throws IOException {
        return skipToNextPage(d7, -1L);
    }

    public boolean skipToNextPage(D d7, long j7) throws IOException {
        v.checkArgument(d7.getPosition() == d7.getPeekPosition());
        ParsableByteArray parsableByteArray = this.f2776g;
        parsableByteArray.reset(4);
        while (true) {
            if ((j7 == -1 || d7.getPosition() + 4 < j7) && G.peekFullyQuietly(d7, parsableByteArray.getData(), 0, 4, true)) {
                parsableByteArray.setPosition(0);
                if (parsableByteArray.readUnsignedInt() == 1332176723) {
                    d7.resetPeekPosition();
                    return true;
                }
                d7.skipFully(1);
            }
        }
        do {
            if (j7 != -1 && d7.getPosition() >= j7) {
                break;
            }
        } while (d7.skip(1) != -1);
        return false;
    }
}
