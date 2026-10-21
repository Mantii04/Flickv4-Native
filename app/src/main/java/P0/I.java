package P0;

import android.support.v4.media.session.PlaybackStateCompat;
import androidx.media3.common.util.ParsableByteArray;
import java.io.IOException;
import v0.k0;

/* loaded from: classes.dex */
public abstract class I {

    /* renamed from: a, reason: collision with root package name */
    public static final int[] f2509a = {1769172845, 1769172786, 1769172787, 1769172788, 1769172789, 1769172790, 1769172793, 1635148593, 1752589105, 1751479857, 1635135537, 1836069937, 1836069938, 862401121, 862401122, 862417462, 862417718, 862414134, 862414646, 1295275552, 1295270176, 1714714144, 1801741417, 1295275600, 1903435808, 1297305174, 1684175153, 1769172332, 1885955686};

    public static boolean a(int i2, boolean z6) {
        if ((i2 >>> 8) == 3368816) {
            return true;
        }
        if (i2 == 1751476579 && z6) {
            return true;
        }
        int[] iArr = f2509a;
        for (int i7 = 0; i7 < 29; i7++) {
            if (iArr[i7] == i2) {
                return true;
            }
        }
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static k0 b(v0.D d7, boolean z6, boolean z7) {
        k0 k0Var;
        int i2;
        long j7;
        int i7;
        int i8;
        long j8;
        int i9;
        int[] iArr;
        long length = d7.getLength();
        long j9 = -1;
        long j10 = PlaybackStateCompat.ACTION_SKIP_TO_QUEUE_ITEM;
        if (length != -1 && length <= PlaybackStateCompat.ACTION_SKIP_TO_QUEUE_ITEM) {
            j10 = length;
        }
        int i10 = (int) j10;
        ParsableByteArray parsableByteArray = new ParsableByteArray(64);
        int i11 = 0;
        int i12 = 0;
        boolean z8 = false;
        while (i12 < i10) {
            parsableByteArray.reset(8);
            boolean z9 = true;
            if (!d7.peekFully(parsableByteArray.getData(), i11, 8, true)) {
                break;
            }
            long readUnsignedInt = parsableByteArray.readUnsignedInt();
            int readInt = parsableByteArray.readInt();
            if (readUnsignedInt == 1) {
                j7 = j9;
                d7.peekFully(parsableByteArray.getData(), 8, 8);
                i8 = 16;
                parsableByteArray.setLimit(16);
                readUnsignedInt = parsableByteArray.readLong();
                i7 = i12;
            } else {
                j7 = j9;
                if (readUnsignedInt == 0) {
                    long length2 = d7.getLength();
                    if (length2 != j7) {
                        i7 = i12;
                        readUnsignedInt = (length2 - d7.getPeekPosition()) + 8;
                        i8 = 8;
                    }
                }
                i7 = i12;
                i8 = 8;
            }
            long j11 = readUnsignedInt;
            long j12 = i8;
            if (j11 < j12) {
                k0Var = null;
                if (readInt != 1718773093 || i8 != 8) {
                    return new C0212a(readInt, j11, i8);
                }
                j11 = j12;
            } else {
                k0Var = null;
            }
            int i13 = i7 + i8;
            if (readInt == 1836019574) {
                i10 += (int) j11;
                if (length != -1 && i10 > length) {
                    i10 = (int) length;
                }
                i12 = i13;
                j9 = j7;
                i11 = 0;
            } else {
                if (readInt != 1953653099 && readInt != 1835297121 && readInt != 1835626086) {
                    if (readInt != 1836019558 && readInt != 1836475768) {
                        if (readInt == 1835295092) {
                            z8 = true;
                        }
                        if (readInt != 1937007212 || j11 <= 1000000) {
                            j8 = length;
                            if ((i13 + j11) - j12 < i10) {
                                int i14 = (int) (j11 - j12);
                                i12 = i13 + i14;
                                if (readInt != 1718909296) {
                                    i9 = 0;
                                    if (i14 != 0) {
                                        d7.advancePeekPosition(i14);
                                    }
                                } else {
                                    if (i14 < 8) {
                                        return new C0212a(readInt, i14, 8);
                                    }
                                    parsableByteArray.reset(i14);
                                    i9 = 0;
                                    d7.peekFully(parsableByteArray.getData(), 0, i14);
                                    int readInt2 = parsableByteArray.readInt();
                                    if (a(readInt2, z7)) {
                                        z8 = true;
                                    }
                                    parsableByteArray.skipBytes(4);
                                    int bytesLeft = parsableByteArray.bytesLeft() / 4;
                                    if (!z8 && bytesLeft > 0) {
                                        iArr = new int[bytesLeft];
                                        int i15 = 0;
                                        while (true) {
                                            if (i15 >= bytesLeft) {
                                                z9 = z8;
                                                break;
                                            }
                                            int readInt3 = parsableByteArray.readInt();
                                            iArr[i15] = readInt3;
                                            if (a(readInt3, z7)) {
                                                break;
                                            }
                                            i15++;
                                        }
                                    } else {
                                        z9 = z8;
                                        iArr = k0Var;
                                    }
                                    if (!z9) {
                                        return new N(readInt2, iArr);
                                    }
                                    z8 = z9;
                                }
                            }
                        }
                        i2 = 0;
                        break;
                    }
                    i2 = 1;
                    break;
                }
                j8 = length;
                i9 = 0;
                i12 = i13;
                i11 = i9;
                j9 = j7;
                length = j8;
            }
        }
        k0Var = null;
        i2 = i11;
        return !z8 ? C.f2497a : z6 != i2 ? i2 != 0 ? v.f2672b : v.f2673c : k0Var;
    }

    public static k0 sniffFragmented(v0.D d7) throws IOException {
        return b(d7, true, false);
    }

    public static k0 sniffUnfragmented(v0.D d7, boolean z6) throws IOException {
        return b(d7, false, z6);
    }
}
