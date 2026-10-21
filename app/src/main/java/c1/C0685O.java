package c1;

import androidx.media3.common.util.ParsableByteArray;
import androidx.media3.common.util.TimestampAdjuster;
import androidx.media3.common.util.Util;
import java.io.IOException;
import v0.c0;

/* renamed from: c1.O, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0685O {

    /* renamed from: a, reason: collision with root package name */
    public final int f8605a;

    /* renamed from: d, reason: collision with root package name */
    public boolean f8608d;

    /* renamed from: e, reason: collision with root package name */
    public boolean f8609e;

    /* renamed from: f, reason: collision with root package name */
    public boolean f8610f;

    /* renamed from: b, reason: collision with root package name */
    public final TimestampAdjuster f8606b = new TimestampAdjuster(0);

    /* renamed from: g, reason: collision with root package name */
    public long f8611g = androidx.media3.common.C.TIME_UNSET;

    /* renamed from: h, reason: collision with root package name */
    public long f8612h = androidx.media3.common.C.TIME_UNSET;

    /* renamed from: i, reason: collision with root package name */
    public long f8613i = androidx.media3.common.C.TIME_UNSET;

    /* renamed from: c, reason: collision with root package name */
    public final ParsableByteArray f8607c = new ParsableByteArray();

    public C0685O(int i2) {
        this.f8605a = i2;
    }

    public final void a(v0.D d7) {
        this.f8607c.reset(Util.EMPTY_BYTE_ARRAY);
        this.f8608d = true;
        d7.resetPeekPosition();
    }

    public long getDurationUs() {
        return this.f8613i;
    }

    public TimestampAdjuster getPcrTimestampAdjuster() {
        return this.f8606b;
    }

    public boolean isDurationReadFinished() {
        return this.f8608d;
    }

    public int readDuration(v0.D d7, c0 c0Var, int i2) throws IOException {
        if (i2 <= 0) {
            a(d7);
            return 0;
        }
        boolean z6 = this.f8610f;
        ParsableByteArray parsableByteArray = this.f8607c;
        int i7 = this.f8605a;
        long j7 = androidx.media3.common.C.TIME_UNSET;
        if (!z6) {
            long length = d7.getLength();
            int min = (int) Math.min(i7, length);
            long j8 = length - min;
            if (d7.getPosition() != j8) {
                c0Var.f20439a = j8;
                return 1;
            }
            parsableByteArray.reset(min);
            d7.resetPeekPosition();
            d7.peekFully(parsableByteArray.getData(), 0, min);
            int position = parsableByteArray.getPosition();
            int limit = parsableByteArray.limit();
            int i8 = limit - 188;
            while (true) {
                if (i8 < position) {
                    break;
                }
                if (AbstractC0694Y.isStartOfTsPacket(parsableByteArray.getData(), position, limit, i8)) {
                    long readPcrFromPacket = AbstractC0694Y.readPcrFromPacket(parsableByteArray, i8, i2);
                    if (readPcrFromPacket != androidx.media3.common.C.TIME_UNSET) {
                        j7 = readPcrFromPacket;
                        break;
                    }
                }
                i8--;
            }
            this.f8612h = j7;
            this.f8610f = true;
            return 0;
        }
        if (this.f8612h == androidx.media3.common.C.TIME_UNSET) {
            a(d7);
            return 0;
        }
        if (this.f8609e) {
            long j9 = this.f8611g;
            if (j9 == androidx.media3.common.C.TIME_UNSET) {
                a(d7);
                return 0;
            }
            TimestampAdjuster timestampAdjuster = this.f8606b;
            this.f8613i = timestampAdjuster.adjustTsTimestampGreaterThanPreviousTimestamp(this.f8612h) - timestampAdjuster.adjustTsTimestamp(j9);
            a(d7);
            return 0;
        }
        int min2 = (int) Math.min(i7, d7.getLength());
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
            if (position2 >= limit2) {
                break;
            }
            if (parsableByteArray.getData()[position2] == 71) {
                long readPcrFromPacket2 = AbstractC0694Y.readPcrFromPacket(parsableByteArray, position2, i2);
                if (readPcrFromPacket2 != androidx.media3.common.C.TIME_UNSET) {
                    j7 = readPcrFromPacket2;
                    break;
                }
            }
            position2++;
        }
        this.f8611g = j7;
        this.f8609e = true;
        return 0;
    }
}
