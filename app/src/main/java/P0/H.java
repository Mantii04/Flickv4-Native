package P0;

import androidx.media3.common.Metadata;
import androidx.media3.common.util.ParsableByteArray;

/* loaded from: classes.dex */
public abstract class H {
    public static Metadata parseSmta(ParsableByteArray parsableByteArray, int i2) {
        int readUnsignedFixedPoint1616;
        parsableByteArray.skipBytes(12);
        while (parsableByteArray.getPosition() < i2) {
            int position = parsableByteArray.getPosition();
            int readInt = parsableByteArray.readInt();
            if (parsableByteArray.readInt() == 1935766900) {
                if (readInt < 16) {
                    return null;
                }
                parsableByteArray.skipBytes(4);
                int i7 = -1;
                int i8 = 0;
                for (int i9 = 0; i9 < 2; i9++) {
                    int readUnsignedByte = parsableByteArray.readUnsignedByte();
                    int readUnsignedByte2 = parsableByteArray.readUnsignedByte();
                    if (readUnsignedByte == 0) {
                        i7 = readUnsignedByte2;
                    } else if (readUnsignedByte == 1) {
                        i8 = readUnsignedByte2;
                    }
                }
                if (i7 == 12) {
                    readUnsignedFixedPoint1616 = 240;
                } else if (i7 == 13) {
                    readUnsignedFixedPoint1616 = 120;
                } else {
                    if (i7 == 21 && parsableByteArray.bytesLeft() >= 8 && parsableByteArray.getPosition() + 8 <= i2) {
                        int readInt2 = parsableByteArray.readInt();
                        int readInt3 = parsableByteArray.readInt();
                        if (readInt2 >= 12 && readInt3 == 1936877170) {
                            readUnsignedFixedPoint1616 = parsableByteArray.readUnsignedFixedPoint1616();
                        }
                    }
                    readUnsignedFixedPoint1616 = -2147483647;
                }
                if (readUnsignedFixedPoint1616 == -2147483647) {
                    return null;
                }
                return new Metadata(new K0.d(readUnsignedFixedPoint1616, i8));
            }
            parsableByteArray.setPosition(position + readInt);
        }
        return null;
    }
}
