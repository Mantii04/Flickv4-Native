package F0;

import E0.d;
import androidx.media3.common.Metadata;
import androidx.media3.common.util.ParsableBitArray;
import java.nio.ByteBuffer;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;

/* loaded from: classes.dex */
public final class b extends d {
    @Override // E0.d
    public Metadata decode(E0.b bVar, ByteBuffer byteBuffer) {
        if (byteBuffer.get() != 116) {
            return null;
        }
        ParsableBitArray parsableBitArray = new ParsableBitArray(byteBuffer.array(), byteBuffer.limit());
        parsableBitArray.skipBits(12);
        int bytePosition = (parsableBitArray.getBytePosition() + parsableBitArray.readBits(12)) - 4;
        parsableBitArray.skipBits(44);
        parsableBitArray.skipBytes(parsableBitArray.readBits(12));
        parsableBitArray.skipBits(16);
        ArrayList arrayList = new ArrayList();
        while (parsableBitArray.getBytePosition() < bytePosition) {
            parsableBitArray.skipBits(48);
            int readBits = parsableBitArray.readBits(8);
            parsableBitArray.skipBits(4);
            int bytePosition2 = parsableBitArray.getBytePosition() + parsableBitArray.readBits(12);
            String str = null;
            String str2 = null;
            while (parsableBitArray.getBytePosition() < bytePosition2) {
                int readBits2 = parsableBitArray.readBits(8);
                int readBits3 = parsableBitArray.readBits(8);
                int bytePosition3 = parsableBitArray.getBytePosition() + readBits3;
                if (readBits2 == 2) {
                    int readBits4 = parsableBitArray.readBits(16);
                    parsableBitArray.skipBits(8);
                    if (readBits4 == 3) {
                        while (parsableBitArray.getBytePosition() < bytePosition3) {
                            str = parsableBitArray.readBytesAsString(parsableBitArray.readBits(8), StandardCharsets.US_ASCII);
                            int readBits5 = parsableBitArray.readBits(8);
                            for (int i2 = 0; i2 < readBits5; i2++) {
                                parsableBitArray.skipBytes(parsableBitArray.readBits(8));
                            }
                        }
                    }
                } else if (readBits2 == 21) {
                    str2 = parsableBitArray.readBytesAsString(readBits3, StandardCharsets.US_ASCII);
                }
                parsableBitArray.setPosition(bytePosition3 * 8);
            }
            parsableBitArray.setPosition(bytePosition2 * 8);
            if (str != null && str2 != null) {
                arrayList.add(new a(readBits, str.concat(str2)));
            }
        }
        if (arrayList.isEmpty()) {
            return null;
        }
        return new Metadata(arrayList);
    }
}
