package c1;

import androidx.media3.common.util.ParsableByteArray;
import androidx.media3.common.util.TimestampAdjuster;
import androidx.media3.common.util.Util;
import java.io.IOException;
import v0.c0;

/* renamed from: c1.G, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0677G {

    /* renamed from: c, reason: collision with root package name */
    public boolean f8567c;

    /* renamed from: d, reason: collision with root package name */
    public boolean f8568d;

    /* renamed from: e, reason: collision with root package name */
    public boolean f8569e;

    /* renamed from: a, reason: collision with root package name */
    public final TimestampAdjuster f8565a = new TimestampAdjuster(0);

    /* renamed from: f, reason: collision with root package name */
    public long f8570f = androidx.media3.common.C.TIME_UNSET;

    /* renamed from: g, reason: collision with root package name */
    public long f8571g = androidx.media3.common.C.TIME_UNSET;

    /* renamed from: h, reason: collision with root package name */
    public long f8572h = androidx.media3.common.C.TIME_UNSET;

    /* renamed from: b, reason: collision with root package name */
    public final ParsableByteArray f8566b = new ParsableByteArray();

    public static int a(int i2, byte[] bArr) {
        return (bArr[i2 + 3] & 255) | ((bArr[i2] & 255) << 24) | ((bArr[i2 + 1] & 255) << 16) | ((bArr[i2 + 2] & 255) << 8);
    }

    public static long readScrValueFromPack(ParsableByteArray parsableByteArray) {
        int position = parsableByteArray.getPosition();
        if (parsableByteArray.bytesLeft() < 9) {
            return androidx.media3.common.C.TIME_UNSET;
        }
        byte[] bArr = new byte[9];
        parsableByteArray.readBytes(bArr, 0, 9);
        parsableByteArray.setPosition(position);
        byte b7 = bArr[0];
        if ((b7 & 196) == 68) {
            byte b8 = bArr[2];
            if ((b8 & 4) == 4) {
                byte b9 = bArr[4];
                if ((b9 & 4) == 4 && (bArr[5] & 1) == 1 && (bArr[8] & 3) == 3) {
                    long j7 = b7;
                    long j8 = b8;
                    return ((j8 & 3) << 13) | ((j7 & 3) << 28) | (((56 & j7) >> 3) << 30) | ((bArr[1] & 255) << 20) | (((j8 & 248) >> 3) << 15) | ((bArr[3] & 255) << 5) | ((b9 & 248) >> 3);
                }
            }
        }
        return androidx.media3.common.C.TIME_UNSET;
    }

    public long getDurationUs() {
        return this.f8572h;
    }

    public TimestampAdjuster getScrTimestampAdjuster() {
        return this.f8565a;
    }

    public boolean isDurationReadFinished() {
        return this.f8567c;
    }

    public int readDuration(v0.D d7, c0 c0Var) throws IOException {
        boolean z6 = this.f8569e;
        ParsableByteArray parsableByteArray = this.f8566b;
        long j7 = androidx.media3.common.C.TIME_UNSET;
        if (!z6) {
            long length = d7.getLength();
            int min = (int) Math.min(20000L, length);
            long j8 = length - min;
            if (d7.getPosition() != j8) {
                c0Var.f20439a = j8;
                return 1;
            }
            parsableByteArray.reset(min);
            d7.resetPeekPosition();
            d7.peekFully(parsableByteArray.getData(), 0, min);
            int position = parsableByteArray.getPosition();
            int limit = parsableByteArray.limit() - 4;
            while (true) {
                if (limit < position) {
                    break;
                }
                if (a(limit, parsableByteArray.getData()) == 442) {
                    parsableByteArray.setPosition(limit + 4);
                    long readScrValueFromPack = readScrValueFromPack(parsableByteArray);
                    if (readScrValueFromPack != androidx.media3.common.C.TIME_UNSET) {
                        j7 = readScrValueFromPack;
                        break;
                    }
                }
                limit--;
            }
            this.f8571g = j7;
            this.f8569e = true;
            return 0;
        }
        if (this.f8571g == androidx.media3.common.C.TIME_UNSET) {
            parsableByteArray.reset(Util.EMPTY_BYTE_ARRAY);
            this.f8567c = true;
            d7.resetPeekPosition();
            return 0;
        }
        if (this.f8568d) {
            long j9 = this.f8570f;
            if (j9 == androidx.media3.common.C.TIME_UNSET) {
                parsableByteArray.reset(Util.EMPTY_BYTE_ARRAY);
                this.f8567c = true;
                d7.resetPeekPosition();
                return 0;
            }
            TimestampAdjuster timestampAdjuster = this.f8565a;
            this.f8572h = timestampAdjuster.adjustTsTimestampGreaterThanPreviousTimestamp(this.f8571g) - timestampAdjuster.adjustTsTimestamp(j9);
            parsableByteArray.reset(Util.EMPTY_BYTE_ARRAY);
            this.f8567c = true;
            d7.resetPeekPosition();
            return 0;
        }
        int min2 = (int) Math.min(20000L, d7.getLength());
        long j10 = 0;
        if (d7.getPosition() != j10) {
            c0Var.f20439a = j10;
            return 1;
        }
        parsableByteArray.reset(min2);
        d7.resetPeekPosition();
        d7.peekFully(parsableByteArray.getData(), 0, min2);
        int position2 = parsableByteArray.getPosition();
        int limit2 = parsableByteArray.limit();
        while (true) {
            if (position2 >= limit2 - 3) {
                break;
            }
            if (a(position2, parsableByteArray.getData()) == 442) {
                parsableByteArray.setPosition(position2 + 4);
                long readScrValueFromPack2 = readScrValueFromPack(parsableByteArray);
                if (readScrValueFromPack2 != androidx.media3.common.C.TIME_UNSET) {
                    j7 = readScrValueFromPack2;
                    break;
                }
            }
            position2++;
        }
        this.f8570f = j7;
        this.f8568d = true;
        return 0;
    }
}
