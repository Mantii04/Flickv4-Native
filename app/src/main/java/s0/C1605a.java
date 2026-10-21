package s0;

import androidx.media3.common.util.ParsableByteArray;

/* renamed from: s0.a, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C1605a {

    /* renamed from: a, reason: collision with root package name */
    public final String f19903a;

    public C1605a(String str) {
        this.f19903a = str;
    }

    public static C1605a parse(ParsableByteArray parsableByteArray) {
        String str;
        parsableByteArray.skipBytes(2);
        int readUnsignedByte = parsableByteArray.readUnsignedByte();
        int i2 = readUnsignedByte >> 1;
        int readUnsignedByte2 = ((parsableByteArray.readUnsignedByte() >> 3) & 31) | ((readUnsignedByte & 1) << 5);
        if (i2 == 4 || i2 == 5 || i2 == 7 || i2 == 8) {
            str = "dvhe";
        } else if (i2 == 9) {
            str = "dvav";
        } else {
            if (i2 != 10) {
                return null;
            }
            str = "dav1";
        }
        StringBuilder o6 = b.c.o(str);
        o6.append(i2 < 10 ? ".0" : ".");
        o6.append(i2);
        o6.append(readUnsignedByte2 < 10 ? ".0" : ".");
        o6.append(readUnsignedByte2);
        return new C1605a(o6.toString());
    }
}
