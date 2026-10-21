package v0;

import android.util.Base64;
import androidx.media3.common.Metadata;
import androidx.media3.common.ParserException;
import androidx.media3.common.util.Log;
import androidx.media3.common.util.ParsableByteArray;
import androidx.media3.common.util.Util;
import com.google.common.collect.ImmutableList;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

/* loaded from: classes.dex */
public abstract class x0 {
    public static int[] getVorbisToAndroidChannelLayoutMapping(int i2) {
        if (i2 == 3) {
            return new int[]{0, 2, 1};
        }
        if (i2 == 5) {
            return new int[]{0, 2, 1, 3, 4};
        }
        if (i2 == 6) {
            return new int[]{0, 2, 1, 5, 3, 4};
        }
        if (i2 == 7) {
            return new int[]{0, 2, 1, 6, 5, 3, 4};
        }
        if (i2 != 8) {
            return null;
        }
        return new int[]{0, 2, 1, 7, 5, 6, 3, 4};
    }

    public static int iLog(int i2) {
        int i7 = 0;
        while (i2 > 0) {
            i7++;
            i2 >>>= 1;
        }
        return i7;
    }

    public static Metadata parseVorbisComments(List<String> list) {
        ArrayList arrayList = new ArrayList();
        for (int i2 = 0; i2 < list.size(); i2++) {
            String str = list.get(i2);
            String[] splitAtFirst = Util.splitAtFirst(str, "=");
            if (splitAtFirst.length != 2) {
                A.i.z("Failed to parse Vorbis comment: ", str, "VorbisUtil");
            } else if (splitAtFirst[0].equals("METADATA_BLOCK_PICTURE")) {
                try {
                    arrayList.add(H0.a.fromPictureBlock(new ParsableByteArray(Base64.decode(splitAtFirst[1], 0))));
                } catch (RuntimeException e3) {
                    Log.w("VorbisUtil", "Failed to parse vorbis picture", e3);
                }
            } else {
                arrayList.add(new M0.a(splitAtFirst[0], splitAtFirst[1]));
            }
        }
        if (arrayList.isEmpty()) {
            return null;
        }
        return new Metadata(arrayList);
    }

    public static ImmutableList<byte[]> parseVorbisCsdFromEsdsInitializationData(byte[] bArr) {
        ParsableByteArray parsableByteArray = new ParsableByteArray(bArr);
        parsableByteArray.skipBytes(1);
        int i2 = 0;
        while (parsableByteArray.bytesLeft() > 0 && parsableByteArray.peekUnsignedByte() == 255) {
            i2 += 255;
            parsableByteArray.skipBytes(1);
        }
        int readUnsignedByte = parsableByteArray.readUnsignedByte() + i2;
        int i7 = 0;
        while (parsableByteArray.bytesLeft() > 0 && parsableByteArray.peekUnsignedByte() == 255) {
            i7 += 255;
            parsableByteArray.skipBytes(1);
        }
        int readUnsignedByte2 = parsableByteArray.readUnsignedByte() + i7;
        byte[] bArr2 = new byte[readUnsignedByte];
        int position = parsableByteArray.getPosition();
        System.arraycopy(bArr, position, bArr2, 0, readUnsignedByte);
        int i8 = position + readUnsignedByte + readUnsignedByte2;
        int length = bArr.length - i8;
        byte[] bArr3 = new byte[length];
        System.arraycopy(bArr, i8, bArr3, 0, length);
        return ImmutableList.of(bArr2, bArr3);
    }

    public static u0 readVorbisCommentHeader(ParsableByteArray parsableByteArray) throws ParserException {
        return readVorbisCommentHeader(parsableByteArray, true, true);
    }

    public static w0 readVorbisIdentificationHeader(ParsableByteArray parsableByteArray) throws ParserException {
        verifyVorbisHeaderCapturePattern(1, parsableByteArray, false);
        int readLittleEndianUnsignedIntToInt = parsableByteArray.readLittleEndianUnsignedIntToInt();
        int readUnsignedByte = parsableByteArray.readUnsignedByte();
        int readLittleEndianUnsignedIntToInt2 = parsableByteArray.readLittleEndianUnsignedIntToInt();
        int readLittleEndianInt = parsableByteArray.readLittleEndianInt();
        if (readLittleEndianInt <= 0) {
            readLittleEndianInt = -1;
        }
        int readLittleEndianInt2 = parsableByteArray.readLittleEndianInt();
        if (readLittleEndianInt2 <= 0) {
            readLittleEndianInt2 = -1;
        }
        int readLittleEndianInt3 = parsableByteArray.readLittleEndianInt();
        if (readLittleEndianInt3 <= 0) {
            readLittleEndianInt3 = -1;
        }
        int readUnsignedByte2 = parsableByteArray.readUnsignedByte();
        return new w0(readLittleEndianUnsignedIntToInt, readUnsignedByte, readLittleEndianUnsignedIntToInt2, readLittleEndianInt, readLittleEndianInt2, readLittleEndianInt3, (int) Math.pow(2.0d, readUnsignedByte2 & 15), (int) Math.pow(2.0d, (readUnsignedByte2 & 240) >> 4), (parsableByteArray.readUnsignedByte() & 1) > 0, Arrays.copyOf(parsableByteArray.getData(), parsableByteArray.limit()));
    }

    public static v0[] readVorbisModes(ParsableByteArray parsableByteArray, int i2) throws ParserException {
        int i7;
        int i8 = 5;
        verifyVorbisHeaderCapturePattern(5, parsableByteArray, false);
        int i9 = 1;
        int readUnsignedByte = parsableByteArray.readUnsignedByte() + 1;
        t0 t0Var = new t0(parsableByteArray.getData());
        t0Var.skipBits(parsableByteArray.getPosition() * 8);
        for (int i10 = 0; i10 < readUnsignedByte; i10++) {
            if (t0Var.readBits(24) != 5653314) {
                throw ParserException.createForMalformedContainer("expected code book to start with [0x56, 0x43, 0x42] at " + t0Var.getPosition(), null);
            }
            int readBits = t0Var.readBits(16);
            int readBits2 = t0Var.readBits(24);
            if (t0Var.readBit()) {
                t0Var.skipBits(5);
                for (int i11 = 0; i11 < readBits2; i11 += t0Var.readBits(iLog(readBits2 - i11))) {
                }
            } else {
                boolean readBit = t0Var.readBit();
                for (int i12 = 0; i12 < readBits2; i12++) {
                    if (!readBit) {
                        t0Var.skipBits(5);
                    } else if (t0Var.readBit()) {
                        t0Var.skipBits(5);
                    }
                }
            }
            int readBits3 = t0Var.readBits(4);
            if (readBits3 > 2) {
                throw ParserException.createForMalformedContainer("lookup type greater than 2 not decodable: " + readBits3, null);
            }
            if (readBits3 == 1 || readBits3 == 2) {
                t0Var.skipBits(32);
                t0Var.skipBits(32);
                int readBits4 = t0Var.readBits(4) + 1;
                t0Var.skipBits(1);
                t0Var.skipBits((int) ((readBits3 == 1 ? readBits != 0 ? (long) Math.floor(Math.pow(readBits2, 1.0d / readBits)) : 0L : readBits * readBits2) * readBits4));
            }
        }
        int i13 = 6;
        int readBits5 = t0Var.readBits(6) + 1;
        for (int i14 = 0; i14 < readBits5; i14++) {
            if (t0Var.readBits(16) != 0) {
                throw ParserException.createForMalformedContainer("placeholder of time domain transforms not zeroed out", null);
            }
        }
        int readBits6 = t0Var.readBits(6) + 1;
        int i15 = 0;
        while (true) {
            int i16 = 3;
            if (i15 >= readBits6) {
                int i17 = i13;
                int i18 = i9;
                int readBits7 = t0Var.readBits(i17) + 1;
                int i19 = 0;
                while (i19 < readBits7) {
                    if (t0Var.readBits(16) > 2) {
                        throw ParserException.createForMalformedContainer("residueType greater than 2 is not decodable", null);
                    }
                    t0Var.skipBits(24);
                    t0Var.skipBits(24);
                    t0Var.skipBits(24);
                    int readBits8 = t0Var.readBits(i17) + 1;
                    t0Var.skipBits(8);
                    int[] iArr = new int[readBits8];
                    for (int i20 = 0; i20 < readBits8; i20++) {
                        iArr[i20] = ((t0Var.readBit() ? t0Var.readBits(5) : 0) * 8) + t0Var.readBits(3);
                    }
                    for (int i21 = 0; i21 < readBits8; i21++) {
                        for (int i22 = 0; i22 < 8; i22++) {
                            if ((iArr[i21] & (i18 << i22)) != 0) {
                                t0Var.skipBits(8);
                            }
                        }
                    }
                    i19++;
                    i17 = 6;
                }
                int readBits9 = t0Var.readBits(i17) + 1;
                int i23 = 0;
                while (i23 < readBits9) {
                    int readBits10 = t0Var.readBits(16);
                    if (readBits10 != 0) {
                        Log.e("VorbisUtil", "mapping type other than 0 not supported: " + readBits10);
                    } else {
                        int readBits11 = t0Var.readBit() ? t0Var.readBits(4) + 1 : i18;
                        if (t0Var.readBit()) {
                            int readBits12 = t0Var.readBits(8) + 1;
                            for (int i24 = 0; i24 < readBits12; i24++) {
                                int i25 = i2 - 1;
                                t0Var.skipBits(iLog(i25));
                                t0Var.skipBits(iLog(i25));
                            }
                        }
                        if (t0Var.readBits(2) != 0) {
                            throw ParserException.createForMalformedContainer("to reserved bits must be zero after mapping coupling steps", null);
                        }
                        if (readBits11 > i18) {
                            for (int i26 = 0; i26 < i2; i26++) {
                                t0Var.skipBits(4);
                            }
                        }
                        for (int i27 = 0; i27 < readBits11; i27++) {
                            t0Var.skipBits(8);
                            t0Var.skipBits(8);
                            t0Var.skipBits(8);
                        }
                    }
                    i23++;
                    i18 = 1;
                }
                int readBits13 = t0Var.readBits(6) + 1;
                v0[] v0VarArr = new v0[readBits13];
                for (int i28 = 0; i28 < readBits13; i28++) {
                    v0VarArr[i28] = new v0(t0Var.readBit(), t0Var.readBits(16), t0Var.readBits(16), t0Var.readBits(8));
                }
                if (t0Var.readBit()) {
                    return v0VarArr;
                }
                throw ParserException.createForMalformedContainer("framing bit after modes not set as expected", null);
            }
            int readBits14 = t0Var.readBits(16);
            if (readBits14 == 0) {
                i7 = i9;
                t0Var.skipBits(8);
                t0Var.skipBits(16);
                t0Var.skipBits(16);
                t0Var.skipBits(6);
                t0Var.skipBits(8);
                int readBits15 = t0Var.readBits(4) + 1;
                for (int i29 = 0; i29 < readBits15; i29++) {
                    t0Var.skipBits(8);
                }
            } else {
                if (readBits14 != i9) {
                    throw ParserException.createForMalformedContainer("floor type greater than 1 not decodable: " + readBits14, null);
                }
                int readBits16 = t0Var.readBits(i8);
                int[] iArr2 = new int[readBits16];
                i7 = i9;
                int i30 = -1;
                for (int i31 = 0; i31 < readBits16; i31++) {
                    int readBits17 = t0Var.readBits(4);
                    iArr2[i31] = readBits17;
                    if (readBits17 > i30) {
                        i30 = readBits17;
                    }
                }
                int i32 = i30 + 1;
                int[] iArr3 = new int[i32];
                int i33 = 0;
                while (i33 < i32) {
                    iArr3[i33] = t0Var.readBits(i16) + 1;
                    int readBits18 = t0Var.readBits(2);
                    if (readBits18 > 0) {
                        t0Var.skipBits(8);
                    }
                    for (int i34 = 0; i34 < (i7 << readBits18); i34++) {
                        t0Var.skipBits(8);
                    }
                    i33++;
                    i16 = 3;
                }
                t0Var.skipBits(2);
                int readBits19 = t0Var.readBits(4);
                int i35 = 0;
                int i36 = 0;
                for (int i37 = 0; i37 < readBits16; i37++) {
                    i35 += iArr3[iArr2[i37]];
                    while (i36 < i35) {
                        t0Var.skipBits(readBits19);
                        i36++;
                    }
                }
            }
            i15++;
            i9 = i7;
            i8 = 5;
            i13 = 6;
        }
    }

    public static boolean verifyVorbisHeaderCapturePattern(int i2, ParsableByteArray parsableByteArray, boolean z6) throws ParserException {
        if (parsableByteArray.bytesLeft() < 7) {
            if (z6) {
                return false;
            }
            throw ParserException.createForMalformedContainer("too short header: " + parsableByteArray.bytesLeft(), null);
        }
        if (parsableByteArray.readUnsignedByte() != i2) {
            if (z6) {
                return false;
            }
            throw ParserException.createForMalformedContainer("expected header type " + Integer.toHexString(i2), null);
        }
        if (parsableByteArray.readUnsignedByte() == 118 && parsableByteArray.readUnsignedByte() == 111 && parsableByteArray.readUnsignedByte() == 114 && parsableByteArray.readUnsignedByte() == 98 && parsableByteArray.readUnsignedByte() == 105 && parsableByteArray.readUnsignedByte() == 115) {
            return true;
        }
        if (z6) {
            return false;
        }
        throw ParserException.createForMalformedContainer("expected characters 'vorbis'", null);
    }

    public static u0 readVorbisCommentHeader(ParsableByteArray parsableByteArray, boolean z6, boolean z7) throws ParserException {
        if (z6) {
            verifyVorbisHeaderCapturePattern(3, parsableByteArray, false);
        }
        String readString = parsableByteArray.readString((int) parsableByteArray.readLittleEndianUnsignedInt());
        int length = readString.length();
        long readLittleEndianUnsignedInt = parsableByteArray.readLittleEndianUnsignedInt();
        String[] strArr = new String[(int) readLittleEndianUnsignedInt];
        int i2 = length + 15;
        for (int i7 = 0; i7 < readLittleEndianUnsignedInt; i7++) {
            String readString2 = parsableByteArray.readString((int) parsableByteArray.readLittleEndianUnsignedInt());
            strArr[i7] = readString2;
            i2 = i2 + 4 + readString2.length();
        }
        if (z7 && (parsableByteArray.readUnsignedByte() & 1) == 0) {
            throw ParserException.createForMalformedContainer("framing bit expected to be set", null);
        }
        return new u0(readString, strArr, i2 + 1);
    }
}
