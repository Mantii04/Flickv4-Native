package v0;

import androidx.media3.common.util.Log;
import androidx.media3.common.util.ParsableByteArray;

/* renamed from: v0.q, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public abstract class AbstractC1733q {
    public static void consume(long j7, ParsableByteArray parsableByteArray, r0[] r0VarArr) {
        int i2;
        while (true) {
            if (parsableByteArray.bytesLeft() <= 1) {
                return;
            }
            int i7 = 0;
            while (true) {
                if (parsableByteArray.bytesLeft() == 0) {
                    i2 = -1;
                    break;
                }
                int readUnsignedByte = parsableByteArray.readUnsignedByte();
                i7 += readUnsignedByte;
                if (readUnsignedByte != 255) {
                    i2 = i7;
                    break;
                }
            }
            int i8 = 0;
            while (true) {
                if (parsableByteArray.bytesLeft() == 0) {
                    i8 = -1;
                    break;
                }
                int readUnsignedByte2 = parsableByteArray.readUnsignedByte();
                i8 += readUnsignedByte2;
                if (readUnsignedByte2 != 255) {
                    break;
                }
            }
            int position = parsableByteArray.getPosition() + i8;
            if (i8 == -1 || i8 > parsableByteArray.bytesLeft()) {
                Log.w("CeaUtil", "Skipping remainder of malformed SEI NAL unit.");
                position = parsableByteArray.limit();
            } else if (i2 == 4 && i8 >= 8) {
                int readUnsignedByte3 = parsableByteArray.readUnsignedByte();
                int readUnsignedShort = parsableByteArray.readUnsignedShort();
                int readInt = readUnsignedShort == 49 ? parsableByteArray.readInt() : 0;
                int readUnsignedByte4 = parsableByteArray.readUnsignedByte();
                if (readUnsignedShort == 47) {
                    parsableByteArray.skipBytes(1);
                }
                boolean z6 = readUnsignedByte3 == 181 && (readUnsignedShort == 49 || readUnsignedShort == 47) && readUnsignedByte4 == 3;
                if (readUnsignedShort == 49) {
                    z6 &= readInt == 1195456820;
                }
                if (z6) {
                    consumeCcData(j7, parsableByteArray, r0VarArr);
                }
            }
            parsableByteArray.setPosition(position);
        }
    }

    public static void consumeCcData(long j7, ParsableByteArray parsableByteArray, r0[] r0VarArr) {
        int readUnsignedByte = parsableByteArray.readUnsignedByte();
        if ((readUnsignedByte & 64) != 0) {
            parsableByteArray.skipBytes(1);
            int i2 = (readUnsignedByte & 31) * 3;
            int position = parsableByteArray.getPosition();
            for (r0 r0Var : r0VarArr) {
                parsableByteArray.setPosition(position);
                r0Var.sampleData(parsableByteArray, i2);
                P3.v.checkState(j7 != androidx.media3.common.C.TIME_UNSET);
                r0Var.sampleMetadata(j7, 1, i2, 0, null);
            }
        }
    }
}
