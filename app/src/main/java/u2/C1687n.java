package u2;

import android.util.Log;
import com.bumptech.glide.load.ImageHeaderParser$ImageType;
import com.bumptech.glide.load.resource.bitmap.DefaultImageHeaderParser$Reader$EndOfFileException;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.charset.Charset;
import l2.InterfaceC1222c;
import o2.C1438l;
import o2.InterfaceC1428b;

/* renamed from: u2.n, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C1687n implements InterfaceC1222c {

    /* renamed from: a, reason: collision with root package name */
    public static final byte[] f20295a = "Exif\u0000\u0000".getBytes(Charset.forName("UTF-8"));

    /* renamed from: b, reason: collision with root package name */
    public static final int[] f20296b = {0, 1, 1, 2, 4, 8, 1, 1, 2, 4, 8, 4, 8};

    public static int a(InterfaceC1685l interfaceC1685l, InterfaceC1428b interfaceC1428b) {
        try {
            int uInt16 = interfaceC1685l.getUInt16();
            if ((uInt16 & 65496) == 65496 || uInt16 == 19789 || uInt16 == 18761) {
                int c7 = c(interfaceC1685l);
                if (c7 != -1) {
                    C1438l c1438l = (C1438l) interfaceC1428b;
                    byte[] bArr = (byte[]) c1438l.get(c7, byte[].class);
                    try {
                        return d(interfaceC1685l, bArr, c7);
                    } finally {
                        c1438l.put(bArr);
                    }
                }
                if (Log.isLoggable("DfltImageHeaderParser", 3)) {
                    Log.d("DfltImageHeaderParser", "Failed to parse exif segment length, or exif segment not found");
                    return -1;
                }
            } else if (Log.isLoggable("DfltImageHeaderParser", 3)) {
                Log.d("DfltImageHeaderParser", "Parser doesn't handle magic number: " + uInt16);
                return -1;
            }
        } catch (DefaultImageHeaderParser$Reader$EndOfFileException unused) {
        }
        return -1;
    }

    public static ImageHeaderParser$ImageType b(InterfaceC1685l interfaceC1685l) {
        try {
            int uInt16 = interfaceC1685l.getUInt16();
            if (uInt16 == 65496) {
                return ImageHeaderParser$ImageType.JPEG;
            }
            int uInt8 = (uInt16 << 8) | interfaceC1685l.getUInt8();
            if (uInt8 == 4671814) {
                return ImageHeaderParser$ImageType.GIF;
            }
            int uInt82 = (uInt8 << 8) | interfaceC1685l.getUInt8();
            if (uInt82 == -1991225785) {
                interfaceC1685l.skip(21L);
                try {
                    return interfaceC1685l.getUInt8() >= 3 ? ImageHeaderParser$ImageType.PNG_A : ImageHeaderParser$ImageType.PNG;
                } catch (DefaultImageHeaderParser$Reader$EndOfFileException unused) {
                    return ImageHeaderParser$ImageType.PNG;
                }
            }
            if (uInt82 == 1380533830) {
                interfaceC1685l.skip(4L);
                if (((interfaceC1685l.getUInt16() << 16) | interfaceC1685l.getUInt16()) != 1464156752) {
                    return ImageHeaderParser$ImageType.UNKNOWN;
                }
                int uInt162 = (interfaceC1685l.getUInt16() << 16) | interfaceC1685l.getUInt16();
                if ((uInt162 & (-256)) != 1448097792) {
                    return ImageHeaderParser$ImageType.UNKNOWN;
                }
                int i2 = uInt162 & 255;
                if (i2 == 88) {
                    interfaceC1685l.skip(4L);
                    short uInt83 = interfaceC1685l.getUInt8();
                    return (uInt83 & 2) != 0 ? ImageHeaderParser$ImageType.ANIMATED_WEBP : (uInt83 & 16) != 0 ? ImageHeaderParser$ImageType.WEBP_A : ImageHeaderParser$ImageType.WEBP;
                }
                if (i2 != 76) {
                    return ImageHeaderParser$ImageType.WEBP;
                }
                interfaceC1685l.skip(4L);
                return (interfaceC1685l.getUInt8() & 8) != 0 ? ImageHeaderParser$ImageType.WEBP_A : ImageHeaderParser$ImageType.WEBP;
            }
            if (((interfaceC1685l.getUInt16() << 16) | interfaceC1685l.getUInt16()) != 1718909296) {
                return ImageHeaderParser$ImageType.UNKNOWN;
            }
            int uInt163 = (interfaceC1685l.getUInt16() << 16) | interfaceC1685l.getUInt16();
            if (uInt163 == 1635150195) {
                return ImageHeaderParser$ImageType.ANIMATED_AVIF;
            }
            int i7 = 0;
            boolean z6 = uInt163 == 1635150182;
            interfaceC1685l.skip(4L);
            int i8 = uInt82 - 16;
            if (i8 % 4 == 0) {
                while (i7 < 5 && i8 > 0) {
                    int uInt164 = (interfaceC1685l.getUInt16() << 16) | interfaceC1685l.getUInt16();
                    if (uInt164 == 1635150195) {
                        return ImageHeaderParser$ImageType.ANIMATED_AVIF;
                    }
                    if (uInt164 == 1635150182) {
                        z6 = true;
                    }
                    i7++;
                    i8 -= 4;
                }
            }
            return z6 ? ImageHeaderParser$ImageType.AVIF : ImageHeaderParser$ImageType.UNKNOWN;
        } catch (DefaultImageHeaderParser$Reader$EndOfFileException unused2) {
            return ImageHeaderParser$ImageType.UNKNOWN;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:15:0x006a, code lost:
    
        return -1;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static int c(u2.InterfaceC1685l r9) {
        /*
        L0:
            short r0 = r9.getUInt8()
            r1 = 255(0xff, float:3.57E-43)
            r2 = 3
            r3 = -1
            java.lang.String r4 = "DfltImageHeaderParser"
            if (r0 == r1) goto L24
            boolean r9 = android.util.Log.isLoggable(r4, r2)
            if (r9 == 0) goto L6a
            java.lang.StringBuilder r9 = new java.lang.StringBuilder
            java.lang.String r1 = "Unknown segmentId="
            r9.<init>(r1)
            r9.append(r0)
            java.lang.String r9 = r9.toString()
            android.util.Log.d(r4, r9)
            return r3
        L24:
            short r0 = r9.getUInt8()
            r1 = 218(0xda, float:3.05E-43)
            if (r0 != r1) goto L2d
            goto L6a
        L2d:
            r1 = 217(0xd9, float:3.04E-43)
            if (r0 != r1) goto L3d
            boolean r9 = android.util.Log.isLoggable(r4, r2)
            if (r9 == 0) goto L6a
            java.lang.String r9 = "Found MARKER_EOI in exif segment"
            android.util.Log.d(r4, r9)
            return r3
        L3d:
            int r1 = r9.getUInt16()
            int r1 = r1 + (-2)
            r5 = 225(0xe1, float:3.15E-43)
            if (r0 == r5) goto L6b
            long r5 = (long) r1
            long r7 = r9.skip(r5)
            int r5 = (r7 > r5 ? 1 : (r7 == r5 ? 0 : -1))
            if (r5 == 0) goto L0
            boolean r9 = android.util.Log.isLoggable(r4, r2)
            if (r9 == 0) goto L6a
            java.lang.String r9 = "Unable to skip enough data, type: "
            java.lang.String r2 = ", wanted to skip: "
            java.lang.String r5 = ", but actually skipped: "
            java.lang.StringBuilder r9 = A.i.p(r0, r1, r9, r2, r5)
            r9.append(r7)
            java.lang.String r9 = r9.toString()
            android.util.Log.d(r4, r9)
        L6a:
            return r3
        L6b:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: u2.C1687n.c(u2.l):int");
    }

    public static int d(InterfaceC1685l interfaceC1685l, byte[] bArr, int i2) {
        ByteOrder byteOrder;
        int read = interfaceC1685l.read(bArr, i2);
        if (read == i2) {
            short s6 = 1;
            int i7 = 0;
            byte[] bArr2 = f20295a;
            boolean z6 = bArr != null && i2 > bArr2.length;
            if (z6) {
                int i8 = 0;
                while (true) {
                    if (i8 >= bArr2.length) {
                        break;
                    }
                    if (bArr[i8] != bArr2[i8]) {
                        z6 = false;
                        break;
                    }
                    i8++;
                }
            }
            if (z6) {
                ByteBuffer byteBuffer = (ByteBuffer) ByteBuffer.wrap(bArr).order(ByteOrder.BIG_ENDIAN).limit(i2);
                short s7 = byteBuffer.remaining() - 6 >= 2 ? byteBuffer.getShort(6) : (short) -1;
                if (s7 == 18761) {
                    byteOrder = ByteOrder.LITTLE_ENDIAN;
                } else if (s7 != 19789) {
                    if (Log.isLoggable("DfltImageHeaderParser", 3)) {
                        Log.d("DfltImageHeaderParser", "Unknown endianness = " + ((int) s7));
                    }
                    byteOrder = ByteOrder.BIG_ENDIAN;
                } else {
                    byteOrder = ByteOrder.BIG_ENDIAN;
                }
                byteBuffer.order(byteOrder);
                int i9 = byteBuffer.remaining() - 10 >= 4 ? byteBuffer.getInt(10) : -1;
                int i10 = i9 + 6;
                short s8 = byteBuffer.remaining() - i10 >= 2 ? byteBuffer.getShort(i10) : (short) -1;
                while (i7 < s8) {
                    int i11 = (i7 * 12) + i9 + 8;
                    short s9 = byteBuffer.remaining() - i11 >= 2 ? byteBuffer.getShort(i11) : (short) -1;
                    if (s9 == 274) {
                        int i12 = i11 + 2;
                        short s10 = byteBuffer.remaining() - i12 >= 2 ? byteBuffer.getShort(i12) : (short) -1;
                        if (s10 >= s6 && s10 <= 12) {
                            int i13 = i11 + 4;
                            int i14 = byteBuffer.remaining() - i13 >= 4 ? byteBuffer.getInt(i13) : -1;
                            if (i14 >= 0) {
                                if (Log.isLoggable("DfltImageHeaderParser", 3)) {
                                    StringBuilder p6 = A.i.p(i7, s9, "Got tagIndex=", " tagType=", " formatCode=");
                                    p6.append((int) s10);
                                    p6.append(" componentCount=");
                                    p6.append(i14);
                                    Log.d("DfltImageHeaderParser", p6.toString());
                                }
                                int i15 = i14 + f20296b[s10];
                                if (i15 <= 4) {
                                    int i16 = i11 + 8;
                                    if (i16 < 0 || i16 > byteBuffer.remaining()) {
                                        if (Log.isLoggable("DfltImageHeaderParser", 3)) {
                                            Log.d("DfltImageHeaderParser", "Illegal tagValueOffset=" + i16 + " tagType=" + ((int) s9));
                                        }
                                    } else {
                                        if (i15 >= 0 && i15 + i16 <= byteBuffer.remaining()) {
                                            if (byteBuffer.remaining() - i16 >= 2) {
                                                return byteBuffer.getShort(i16);
                                            }
                                            return -1;
                                        }
                                        if (Log.isLoggable("DfltImageHeaderParser", 3)) {
                                            Log.d("DfltImageHeaderParser", "Illegal number of bytes for TI tag data tagType=" + ((int) s9));
                                        }
                                    }
                                } else if (Log.isLoggable("DfltImageHeaderParser", 3)) {
                                    Log.d("DfltImageHeaderParser", "Got byte count > 4, not orientation, continuing, formatCode=" + ((int) s10));
                                }
                            } else if (Log.isLoggable("DfltImageHeaderParser", 3)) {
                                Log.d("DfltImageHeaderParser", "Negative tiff component count");
                            }
                        } else if (Log.isLoggable("DfltImageHeaderParser", 3)) {
                            Log.d("DfltImageHeaderParser", "Got invalid format code = " + ((int) s10));
                        }
                    }
                    i7++;
                    s6 = 1;
                }
            } else if (Log.isLoggable("DfltImageHeaderParser", 3)) {
                Log.d("DfltImageHeaderParser", "Missing jpeg exif preamble");
            }
        } else if (Log.isLoggable("DfltImageHeaderParser", 3)) {
            Log.d("DfltImageHeaderParser", "Unable to read exif segment data, length: " + i2 + ", actually read: " + read);
            return -1;
        }
        return -1;
    }

    @Override // l2.InterfaceC1222c
    public int getOrientation(InputStream inputStream, InterfaceC1428b interfaceC1428b) throws IOException {
        return a(new C1686m((InputStream) G2.r.checkNotNull(inputStream)), (InterfaceC1428b) G2.r.checkNotNull(interfaceC1428b));
    }

    @Override // l2.InterfaceC1222c
    public ImageHeaderParser$ImageType getType(InputStream inputStream) throws IOException {
        return b(new C1686m((InputStream) G2.r.checkNotNull(inputStream)));
    }

    @Override // l2.InterfaceC1222c
    public ImageHeaderParser$ImageType getType(ByteBuffer byteBuffer) throws IOException {
        return b(new C1684k((ByteBuffer) G2.r.checkNotNull(byteBuffer)));
    }

    @Override // l2.InterfaceC1222c
    public int getOrientation(ByteBuffer byteBuffer, InterfaceC1428b interfaceC1428b) throws IOException {
        return a(new C1684k((ByteBuffer) G2.r.checkNotNull(byteBuffer)), (InterfaceC1428b) G2.r.checkNotNull(interfaceC1428b));
    }
}
