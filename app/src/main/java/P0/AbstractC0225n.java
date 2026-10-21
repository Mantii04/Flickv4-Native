package P0;

import android.util.Pair;
import androidx.media3.common.DrmInitData;
import androidx.media3.common.Metadata;
import androidx.media3.common.MimeTypes;
import androidx.media3.common.ParserException;
import androidx.media3.common.util.ParsableByteArray;
import androidx.media3.common.util.Util;
import java.util.ArrayList;
import java.util.List;
import s0.C1606b;
import s0.C1608d;
import s0.C1609e;
import s0.C1611g;
import s0.C1612h;
import v0.U;

/* renamed from: P0.n, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public abstract class AbstractC0225n {

    /* renamed from: a, reason: collision with root package name */
    public static final byte[] f2600a = Util.getUtf8Bytes("OpusHead");

    public static C0215d a(int i2, ParsableByteArray parsableByteArray) {
        parsableByteArray.setPosition(i2 + 12);
        parsableByteArray.skipBytes(1);
        b(parsableByteArray);
        parsableByteArray.skipBytes(2);
        int readUnsignedByte = parsableByteArray.readUnsignedByte();
        if ((readUnsignedByte & 128) != 0) {
            parsableByteArray.skipBytes(2);
        }
        if ((readUnsignedByte & 64) != 0) {
            parsableByteArray.skipBytes(parsableByteArray.readUnsignedByte());
        }
        if ((readUnsignedByte & 32) != 0) {
            parsableByteArray.skipBytes(2);
        }
        parsableByteArray.skipBytes(1);
        b(parsableByteArray);
        String mimeTypeFromMp4ObjectType = MimeTypes.getMimeTypeFromMp4ObjectType(parsableByteArray.readUnsignedByte());
        if (MimeTypes.AUDIO_MPEG.equals(mimeTypeFromMp4ObjectType) || MimeTypes.AUDIO_DTS.equals(mimeTypeFromMp4ObjectType) || MimeTypes.AUDIO_DTS_HD.equals(mimeTypeFromMp4ObjectType)) {
            return new C0215d(mimeTypeFromMp4ObjectType, null, -1L, -1L);
        }
        parsableByteArray.skipBytes(4);
        long readUnsignedInt = parsableByteArray.readUnsignedInt();
        long readUnsignedInt2 = parsableByteArray.readUnsignedInt();
        parsableByteArray.skipBytes(1);
        int b7 = b(parsableByteArray);
        long j7 = readUnsignedInt2;
        byte[] bArr = new byte[b7];
        parsableByteArray.readBytes(bArr, 0, b7);
        if (j7 <= 0) {
            j7 = -1;
        }
        return new C0215d(mimeTypeFromMp4ObjectType, bArr, j7, readUnsignedInt > 0 ? readUnsignedInt : -1L);
    }

    public static int b(ParsableByteArray parsableByteArray) {
        int readUnsignedByte = parsableByteArray.readUnsignedByte();
        int i2 = readUnsignedByte & 127;
        while ((readUnsignedByte & 128) == 128) {
            readUnsignedByte = parsableByteArray.readUnsignedByte();
            i2 = (i2 << 7) | (readUnsignedByte & 127);
        }
        return i2;
    }

    public static Pair c(ParsableByteArray parsableByteArray, int i2, int i7) {
        Integer num;
        K k7;
        Pair create;
        int i8;
        int i9;
        Integer num2;
        boolean z6;
        int position = parsableByteArray.getPosition();
        while (position - i2 < i7) {
            parsableByteArray.setPosition(position);
            int readInt = parsableByteArray.readInt();
            v0.G.checkContainerInput(readInt > 0, "childAtomSize must be positive");
            if (parsableByteArray.readInt() == 1936289382) {
                int i10 = position + 8;
                int i11 = 0;
                int i12 = -1;
                Integer num3 = null;
                String str = null;
                while (i10 - position < readInt) {
                    parsableByteArray.setPosition(i10);
                    int readInt2 = parsableByteArray.readInt();
                    int readInt3 = parsableByteArray.readInt();
                    if (readInt3 == 1718775137) {
                        num3 = Integer.valueOf(parsableByteArray.readInt());
                    } else if (readInt3 == 1935894637) {
                        parsableByteArray.skipBytes(4);
                        str = parsableByteArray.readString(4);
                    } else if (readInt3 == 1935894633) {
                        i12 = i10;
                        i11 = readInt2;
                    }
                    i10 += readInt2;
                }
                byte[] bArr = null;
                if (androidx.media3.common.C.CENC_TYPE_cenc.equals(str) || androidx.media3.common.C.CENC_TYPE_cbc1.equals(str) || androidx.media3.common.C.CENC_TYPE_cens.equals(str) || androidx.media3.common.C.CENC_TYPE_cbcs.equals(str)) {
                    v0.G.checkContainerInput(num3 != null, "frma atom is mandatory");
                    v0.G.checkContainerInput(i12 != -1, "schi atom is mandatory");
                    int i13 = i12 + 8;
                    while (true) {
                        if (i13 - i12 >= i11) {
                            num = num3;
                            k7 = null;
                            break;
                        }
                        parsableByteArray.setPosition(i13);
                        int readInt4 = parsableByteArray.readInt();
                        if (parsableByteArray.readInt() == 1952804451) {
                            int parseFullBoxVersion = parseFullBoxVersion(parsableByteArray.readInt());
                            parsableByteArray.skipBytes(1);
                            if (parseFullBoxVersion == 0) {
                                parsableByteArray.skipBytes(1);
                                i9 = 0;
                                i8 = 0;
                            } else {
                                int readUnsignedByte = parsableByteArray.readUnsignedByte();
                                i8 = readUnsignedByte & 15;
                                i9 = (readUnsignedByte & 240) >> 4;
                            }
                            if (parsableByteArray.readUnsignedByte() == 1) {
                                num2 = num3;
                                z6 = true;
                            } else {
                                num2 = num3;
                                z6 = false;
                            }
                            int readUnsignedByte2 = parsableByteArray.readUnsignedByte();
                            byte[] bArr2 = new byte[16];
                            parsableByteArray.readBytes(bArr2, 0, 16);
                            if (z6 && readUnsignedByte2 == 0) {
                                int readUnsignedByte3 = parsableByteArray.readUnsignedByte();
                                byte[] bArr3 = new byte[readUnsignedByte3];
                                parsableByteArray.readBytes(bArr3, 0, readUnsignedByte3);
                                bArr = bArr3;
                            }
                            num = num2;
                            k7 = new K(z6, str, readUnsignedByte2, bArr2, i9, i8, bArr);
                        } else {
                            i13 += readInt4;
                        }
                    }
                    v0.G.checkContainerInput(k7 != null, "tenc atom is mandatory");
                    create = Pair.create(num, (K) Util.castNonNull(k7));
                } else {
                    create = null;
                }
                if (create != null) {
                    return create;
                }
            }
            position += readInt;
        }
        return null;
    }

    /* JADX WARN: Removed duplicated region for block: B:226:0x0471  */
    /* JADX WARN: Removed duplicated region for block: B:228:0x0488  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void d(androidx.media3.common.util.ParsableByteArray r45, int r46, int r47, int r48, int r49, java.lang.String r50, int r51, androidx.media3.common.DrmInitData r52, P0.C0220i r53, int r54) {
        /*
            Method dump skipped, instructions count: 2469
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: P0.AbstractC0225n.d(androidx.media3.common.util.ParsableByteArray, int, int, int, int, java.lang.String, int, androidx.media3.common.DrmInitData, P0.i, int):void");
    }

    public static void maybeSkipRemainingMetaBoxHeaderBytes(ParsableByteArray parsableByteArray) {
        int position = parsableByteArray.getPosition();
        parsableByteArray.skipBytes(4);
        if (parsableByteArray.readInt() != 1751411826) {
            position += 4;
        }
        parsableByteArray.setPosition(position);
    }

    public static int parseFullBoxFlags(int i2) {
        return i2 & 16777215;
    }

    public static int parseFullBoxVersion(int i2) {
        return (i2 >> 24) & 255;
    }

    public static Metadata parseMdtaFromMeta(C1608d c1608d) {
        C1609e leafBoxOfType = c1608d.getLeafBoxOfType(1751411826);
        C1609e leafBoxOfType2 = c1608d.getLeafBoxOfType(1801812339);
        C1609e leafBoxOfType3 = c1608d.getLeafBoxOfType(1768715124);
        if (leafBoxOfType == null || leafBoxOfType2 == null || leafBoxOfType3 == null) {
            return null;
        }
        ParsableByteArray parsableByteArray = leafBoxOfType.f19912b;
        parsableByteArray.setPosition(16);
        if (parsableByteArray.readInt() != 1835299937) {
            return null;
        }
        ParsableByteArray parsableByteArray2 = leafBoxOfType2.f19912b;
        parsableByteArray2.setPosition(12);
        int readInt = parsableByteArray2.readInt();
        String[] strArr = new String[readInt];
        for (int i2 = 0; i2 < readInt; i2++) {
            int readInt2 = parsableByteArray2.readInt();
            parsableByteArray2.skipBytes(4);
            strArr[i2] = parsableByteArray2.readString(readInt2 - 8);
        }
        ParsableByteArray parsableByteArray3 = leafBoxOfType3.f19912b;
        parsableByteArray3.setPosition(8);
        ArrayList arrayList = new ArrayList();
        while (parsableByteArray3.bytesLeft() > 8) {
            int position = parsableByteArray3.getPosition();
            int readInt3 = parsableByteArray3.readInt();
            int readInt4 = parsableByteArray3.readInt() - 1;
            if (readInt4 < 0 || readInt4 >= readInt) {
                A.i.v(readInt4, "Skipped metadata with unknown key index: ", "BoxParsers");
            } else {
                C1606b parseMdtaMetadataEntryFromIlst = w.parseMdtaMetadataEntryFromIlst(parsableByteArray3, position + readInt3, strArr[readInt4]);
                if (parseMdtaMetadataEntryFromIlst != null) {
                    arrayList.add(parseMdtaMetadataEntryFromIlst);
                }
            }
            parsableByteArray3.setPosition(position + readInt3);
        }
        if (arrayList.isEmpty()) {
            return null;
        }
        return new Metadata(arrayList);
    }

    public static C1612h parseMvhd(ParsableByteArray parsableByteArray) {
        long readLong;
        long readLong2;
        parsableByteArray.setPosition(8);
        if (parseFullBoxVersion(parsableByteArray.readInt()) == 0) {
            readLong = parsableByteArray.readUnsignedInt();
            readLong2 = parsableByteArray.readUnsignedInt();
        } else {
            readLong = parsableByteArray.readLong();
            readLong2 = parsableByteArray.readLong();
        }
        return new C1612h(readLong, readLong2, parsableByteArray.readUnsignedInt());
    }

    /* JADX WARN: Code restructure failed: missing block: B:310:0x020b, code lost:
    
        r4 = r0;
        r7 = r7;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:250:0x0186  */
    /* JADX WARN: Removed duplicated region for block: B:343:0x0133  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x0130  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x0137  */
    /* JADX WARN: Removed duplicated region for block: B:66:0x0322  */
    /* JADX WARN: Removed duplicated region for block: B:73:0x0362  */
    /* JADX WARN: Removed duplicated region for block: B:77:0x0373  */
    /* JADX WARN: Type inference failed for: r50v1 */
    /* JADX WARN: Type inference failed for: r50v2 */
    /* JADX WARN: Type inference failed for: r50v3 */
    /* JADX WARN: Type inference failed for: r7v41 */
    /* JADX WARN: Type inference failed for: r7v42 */
    /* JADX WARN: Type inference failed for: r7v9, types: [int[]] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static P0.M parseStbl(P0.J r50, s0.C1608d r51, v0.U r52, boolean r53) throws androidx.media3.common.ParserException {
        /*
            Method dump skipped, instructions count: 1695
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: P0.AbstractC0225n.parseStbl(P0.J, s0.d, v0.U, boolean):P0.M");
    }

    /* JADX WARN: Code restructure failed: missing block: B:25:0x00c8, code lost:
    
        if (r22 == 0) goto L46;
     */
    /* JADX WARN: Code restructure failed: missing block: B:69:0x020c, code lost:
    
        r4 = null;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:37:0x013b  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x0153  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x0199  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x01a9  */
    /* JADX WARN: Removed duplicated region for block: B:497:0x054d  */
    /* JADX WARN: Removed duplicated region for block: B:50:0x01b0  */
    /* JADX WARN: Removed duplicated region for block: B:551:0x0c92  */
    /* JADX WARN: Removed duplicated region for block: B:560:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:580:0x020f A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:583:0x01d8 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:585:0x01ab  */
    /* JADX WARN: Removed duplicated region for block: B:586:0x019b  */
    /* JADX WARN: Removed duplicated region for block: B:587:0x0158  */
    /* JADX WARN: Removed duplicated region for block: B:588:0x0143  */
    /* JADX WARN: Removed duplicated region for block: B:63:0x0200  */
    /* JADX WARN: Removed duplicated region for block: B:72:0x022a  */
    /* JADX WARN: Removed duplicated region for block: B:74:0x0232  */
    /* JADX WARN: Type inference failed for: r0v24, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r0v58, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r13v37 */
    /* JADX WARN: Type inference failed for: r13v5 */
    /* JADX WARN: Type inference failed for: r13v6, types: [boolean] */
    /* JADX WARN: Type inference failed for: r17v0 */
    /* JADX WARN: Type inference failed for: r17v1, types: [P0.J] */
    /* JADX WARN: Type inference failed for: r17v3 */
    /* JADX WARN: Type inference failed for: r17v4 */
    /* JADX WARN: Type inference failed for: r17v5 */
    /* JADX WARN: Type inference failed for: r17v8 */
    /* JADX WARN: Type inference failed for: r1v37, types: [P0.d] */
    /* JADX WARN: Type inference failed for: r1v38, types: [P0.b] */
    /* JADX WARN: Type inference failed for: r1v94, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r2v64 */
    /* JADX WARN: Type inference failed for: r2v67, types: [java.util.List] */
    /* JADX WARN: Type inference failed for: r2v83 */
    /* JADX WARN: Type inference failed for: r4v130, types: [androidx.media3.common.Format$Builder] */
    /* JADX WARN: Type inference failed for: r7v65, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r8v64, types: [P0.d] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static P0.J parseTrak(s0.C1608d r52, s0.C1609e r53, long r54, androidx.media3.common.DrmInitData r56, boolean r57, boolean r58) throws androidx.media3.common.ParserException {
        /*
            Method dump skipped, instructions count: 3304
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: P0.AbstractC0225n.parseTrak(s0.d, s0.e, long, androidx.media3.common.DrmInitData, boolean, boolean):P0.J");
    }

    public static List<M> parseTraks(C1608d c1608d, U u6, long j7, DrmInitData drmInitData, boolean z6, boolean z7, P3.p pVar, boolean z8) throws ParserException {
        J j8;
        ArrayList arrayList = new ArrayList();
        for (int i2 = 0; i2 < c1608d.f19911d.size(); i2++) {
            C1608d c1608d2 = (C1608d) c1608d.f19911d.get(i2);
            if (c1608d2.f19913a == 1953653099 && (j8 = (J) pVar.apply(parseTrak(c1608d2, (C1609e) P3.v.checkNotNull(c1608d.getLeafBoxOfType(1836476516)), j7, drmInitData, z6, z7))) != null) {
                arrayList.add(parseStbl(j8, (C1608d) P3.v.checkNotNull(((C1608d) P3.v.checkNotNull(((C1608d) P3.v.checkNotNull(c1608d2.getContainerBoxOfType(1835297121))).getContainerBoxOfType(1835626086))).getContainerBoxOfType(1937007212)), u6, z8));
            }
        }
        return arrayList;
    }

    public static Metadata parseUdta(C1609e c1609e) {
        ParsableByteArray parsableByteArray = c1609e.f19912b;
        parsableByteArray.setPosition(8);
        Metadata metadata = new Metadata(new Metadata.Entry[0]);
        while (parsableByteArray.bytesLeft() >= 8) {
            int position = parsableByteArray.getPosition();
            int readInt = parsableByteArray.readInt();
            int readInt2 = parsableByteArray.readInt();
            Metadata metadata2 = null;
            if (readInt2 == 1835365473) {
                parsableByteArray.setPosition(position);
                int i2 = position + readInt;
                parsableByteArray.skipBytes(8);
                maybeSkipRemainingMetaBoxHeaderBytes(parsableByteArray);
                while (true) {
                    if (parsableByteArray.getPosition() >= i2) {
                        break;
                    }
                    int position2 = parsableByteArray.getPosition();
                    int readInt3 = parsableByteArray.readInt();
                    if (parsableByteArray.readInt() == 1768715124) {
                        parsableByteArray.setPosition(position2);
                        int i7 = position2 + readInt3;
                        parsableByteArray.skipBytes(8);
                        ArrayList arrayList = new ArrayList();
                        while (parsableByteArray.getPosition() < i7) {
                            Metadata.Entry parseIlstElement = w.parseIlstElement(parsableByteArray);
                            if (parseIlstElement != null) {
                                arrayList.add(parseIlstElement);
                            }
                        }
                        if (!arrayList.isEmpty()) {
                            metadata2 = new Metadata(arrayList);
                        }
                    } else {
                        parsableByteArray.setPosition(position2 + readInt3);
                    }
                }
                metadata = metadata.copyWithAppendedEntriesFrom(metadata2);
            } else if (readInt2 == 1936553057) {
                parsableByteArray.setPosition(position);
                metadata = metadata.copyWithAppendedEntriesFrom(H.parseSmta(parsableByteArray, position + readInt));
            } else if (readInt2 == -1451722374) {
                short readShort = parsableByteArray.readShort();
                parsableByteArray.skipBytes(2);
                String readString = parsableByteArray.readString(readShort);
                int max = Math.max(readString.lastIndexOf(43), readString.lastIndexOf(45));
                try {
                    metadata2 = new Metadata(new C1611g(Float.parseFloat(readString.substring(0, max)), Float.parseFloat(readString.substring(max, readString.length() - 1))));
                } catch (IndexOutOfBoundsException | NumberFormatException unused) {
                }
                metadata = metadata.copyWithAppendedEntriesFrom(metadata2);
            }
            parsableByteArray.setPosition(position + readInt);
        }
        return metadata;
    }
}
