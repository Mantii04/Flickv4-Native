package x0;

import androidx.media3.common.util.Log;
import androidx.media3.common.util.ParsableByteArray;
import androidx.media3.common.util.Util;

/* loaded from: classes.dex */
public final class f implements InterfaceC1796a {

    /* renamed from: a, reason: collision with root package name */
    public final int f20746a;

    /* renamed from: b, reason: collision with root package name */
    public final int f20747b;

    /* renamed from: c, reason: collision with root package name */
    public final int f20748c;

    /* renamed from: d, reason: collision with root package name */
    public final int f20749d;

    /* renamed from: e, reason: collision with root package name */
    public final int f20750e;

    /* renamed from: f, reason: collision with root package name */
    public final int f20751f;

    public f(int i2, int i7, int i8, int i9, int i10, int i11) {
        this.f20746a = i2;
        this.f20747b = i7;
        this.f20748c = i8;
        this.f20749d = i9;
        this.f20750e = i10;
        this.f20751f = i11;
    }

    public static f parseFrom(ParsableByteArray parsableByteArray) {
        int readLittleEndianInt = parsableByteArray.readLittleEndianInt();
        parsableByteArray.skipBytes(12);
        parsableByteArray.readLittleEndianInt();
        int readLittleEndianInt2 = parsableByteArray.readLittleEndianInt();
        int readLittleEndianInt3 = parsableByteArray.readLittleEndianInt();
        parsableByteArray.skipBytes(4);
        int readLittleEndianInt4 = parsableByteArray.readLittleEndianInt();
        int readLittleEndianInt5 = parsableByteArray.readLittleEndianInt();
        parsableByteArray.skipBytes(4);
        return new f(readLittleEndianInt, readLittleEndianInt2, readLittleEndianInt3, readLittleEndianInt4, readLittleEndianInt5, parsableByteArray.readLittleEndianInt());
    }

    public long getDurationUs() {
        return Util.scaleLargeTimestamp(this.f20749d, this.f20747b * 1000000, this.f20748c);
    }

    public int getTrackType() {
        int i2 = this.f20746a;
        if (i2 == 1935960438) {
            return 2;
        }
        if (i2 == 1935963489) {
            return 1;
        }
        if (i2 == 1937012852) {
            return 3;
        }
        Log.w("AviStreamHeaderChunk", "Found unsupported streamType fourCC: " + Integer.toHexString(i2));
        return -1;
    }

    @Override // x0.InterfaceC1796a
    public int getType() {
        return 1752331379;
    }
}
