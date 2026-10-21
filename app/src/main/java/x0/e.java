package x0;

import androidx.media3.common.util.ParsableByteArray;

/* loaded from: classes.dex */
public final class e implements InterfaceC1796a {

    /* renamed from: a, reason: collision with root package name */
    public final int f20743a;

    /* renamed from: b, reason: collision with root package name */
    public final int f20744b;

    /* renamed from: c, reason: collision with root package name */
    public final int f20745c;

    public e(int i2, int i7, int i8) {
        this.f20743a = i2;
        this.f20744b = i7;
        this.f20745c = i8;
    }

    public static e parseFrom(ParsableByteArray parsableByteArray) {
        int readLittleEndianInt = parsableByteArray.readLittleEndianInt();
        parsableByteArray.skipBytes(8);
        int readLittleEndianInt2 = parsableByteArray.readLittleEndianInt();
        int readLittleEndianInt3 = parsableByteArray.readLittleEndianInt();
        parsableByteArray.skipBytes(4);
        parsableByteArray.readLittleEndianInt();
        parsableByteArray.skipBytes(12);
        return new e(readLittleEndianInt, readLittleEndianInt2, readLittleEndianInt3);
    }

    @Override // x0.InterfaceC1796a
    public int getType() {
        return 1751742049;
    }

    public boolean hasIndex() {
        return (this.f20744b & 16) == 16;
    }
}
