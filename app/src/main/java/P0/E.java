package P0;

import androidx.media3.common.util.Log;
import androidx.media3.common.util.ParsableByteArray;
import java.nio.ByteBuffer;
import java.util.UUID;
import okhttp3.internal.http2.Http2Connection;

/* loaded from: classes.dex */
public abstract class E {
    public static byte[] buildPsshAtom(UUID uuid, byte[] bArr) {
        return buildPsshAtom(uuid, null, bArr);
    }

    public static boolean isPsshAtom(byte[] bArr) {
        return parsePsshAtom(bArr) != null;
    }

    public static D parsePsshAtom(byte[] bArr) {
        UUID[] uuidArr;
        ParsableByteArray parsableByteArray = new ParsableByteArray(bArr);
        if (parsableByteArray.limit() < 32) {
            return null;
        }
        parsableByteArray.setPosition(0);
        int bytesLeft = parsableByteArray.bytesLeft();
        int readInt = parsableByteArray.readInt();
        if (readInt != bytesLeft) {
            Log.w("PsshAtomUtil", "Advertised atom size (" + readInt + ") does not match buffer size: " + bytesLeft);
            return null;
        }
        int readInt2 = parsableByteArray.readInt();
        if (readInt2 != 1886614376) {
            A.i.v(readInt2, "Atom type is not pssh: ", "PsshAtomUtil");
            return null;
        }
        int parseFullBoxVersion = AbstractC0225n.parseFullBoxVersion(parsableByteArray.readInt());
        if (parseFullBoxVersion > 1) {
            A.i.v(parseFullBoxVersion, "Unsupported pssh version: ", "PsshAtomUtil");
            return null;
        }
        UUID uuid = new UUID(parsableByteArray.readLong(), parsableByteArray.readLong());
        if (parseFullBoxVersion == 1) {
            int readUnsignedIntToInt = parsableByteArray.readUnsignedIntToInt();
            uuidArr = new UUID[readUnsignedIntToInt];
            for (int i2 = 0; i2 < readUnsignedIntToInt; i2++) {
                uuidArr[i2] = new UUID(parsableByteArray.readLong(), parsableByteArray.readLong());
            }
        } else {
            uuidArr = null;
        }
        int readUnsignedIntToInt2 = parsableByteArray.readUnsignedIntToInt();
        int bytesLeft2 = parsableByteArray.bytesLeft();
        if (readUnsignedIntToInt2 == bytesLeft2) {
            byte[] bArr2 = new byte[readUnsignedIntToInt2];
            parsableByteArray.readBytes(bArr2, 0, readUnsignedIntToInt2);
            return new D(uuid, parseFullBoxVersion, bArr2, uuidArr);
        }
        Log.w("PsshAtomUtil", "Atom data size (" + readUnsignedIntToInt2 + ") does not match the bytes left: " + bytesLeft2);
        return null;
    }

    public static byte[] parseSchemeSpecificData(byte[] bArr, UUID uuid) {
        D parsePsshAtom = parsePsshAtom(bArr);
        if (parsePsshAtom == null) {
            return null;
        }
        UUID uuid2 = parsePsshAtom.f2498a;
        if (uuid.equals(uuid2)) {
            return parsePsshAtom.f2500c;
        }
        Log.w("PsshAtomUtil", "UUID mismatch. Expected: " + uuid + ", got: " + uuid2 + ".");
        return null;
    }

    public static UUID parseUuid(byte[] bArr) {
        D parsePsshAtom = parsePsshAtom(bArr);
        if (parsePsshAtom == null) {
            return null;
        }
        return parsePsshAtom.f2498a;
    }

    public static int parseVersion(byte[] bArr) {
        D parsePsshAtom = parsePsshAtom(bArr);
        if (parsePsshAtom == null) {
            return -1;
        }
        return parsePsshAtom.f2499b;
    }

    public static byte[] buildPsshAtom(UUID uuid, UUID[] uuidArr, byte[] bArr) {
        int length = (bArr != null ? bArr.length : 0) + 32;
        if (uuidArr != null) {
            length += (uuidArr.length * 16) + 4;
        }
        ByteBuffer allocate = ByteBuffer.allocate(length);
        allocate.putInt(length);
        allocate.putInt(1886614376);
        allocate.putInt(uuidArr != null ? Http2Connection.OKHTTP_CLIENT_WINDOW_SIZE : 0);
        allocate.putLong(uuid.getMostSignificantBits());
        allocate.putLong(uuid.getLeastSignificantBits());
        if (uuidArr != null) {
            allocate.putInt(uuidArr.length);
            for (UUID uuid2 : uuidArr) {
                allocate.putLong(uuid2.getMostSignificantBits());
                allocate.putLong(uuid2.getLeastSignificantBits());
            }
        }
        if (bArr == null || bArr.length == 0) {
            allocate.putInt(0);
        } else {
            allocate.putInt(bArr.length);
            allocate.put(bArr);
        }
        return allocate.array();
    }
}
