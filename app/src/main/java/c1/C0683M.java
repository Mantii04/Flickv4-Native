package c1;

import androidx.media3.common.util.ParsableByteArray;
import androidx.media3.common.util.TimestampAdjuster;
import androidx.media3.common.util.Util;
import androidx.media3.exoplayer.audio.SilenceSkippingAudioProcessor;
import java.io.IOException;
import v0.C1729m;
import v0.InterfaceC1731o;

/* renamed from: c1.M, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0683M implements InterfaceC1731o {

    /* renamed from: a, reason: collision with root package name */
    public final TimestampAdjuster f8601a;

    /* renamed from: b, reason: collision with root package name */
    public final ParsableByteArray f8602b = new ParsableByteArray();

    /* renamed from: c, reason: collision with root package name */
    public final int f8603c;

    /* renamed from: d, reason: collision with root package name */
    public final int f8604d;

    public C0683M(int i2, TimestampAdjuster timestampAdjuster, int i7) {
        this.f8603c = i2;
        this.f8601a = timestampAdjuster;
        this.f8604d = i7;
    }

    @Override // v0.InterfaceC1731o
    public void onSeekFinished() {
        this.f8602b.reset(Util.EMPTY_BYTE_ARRAY);
    }

    @Override // v0.InterfaceC1731o
    public C1729m searchForTimestamp(v0.D d7, long j7) throws IOException {
        int findSyncBytePosition;
        int findSyncBytePosition2;
        long position = d7.getPosition();
        int min = (int) Math.min(this.f8604d, d7.getLength() - position);
        ParsableByteArray parsableByteArray = this.f8602b;
        parsableByteArray.reset(min);
        d7.peekFully(parsableByteArray.getData(), 0, min);
        int limit = parsableByteArray.limit();
        long j8 = -1;
        long j9 = -1;
        long j10 = -9223372036854775807L;
        while (parsableByteArray.bytesLeft() >= 188 && (findSyncBytePosition2 = (findSyncBytePosition = AbstractC0694Y.findSyncBytePosition(parsableByteArray.getData(), parsableByteArray.getPosition(), limit)) + 188) <= limit) {
            long readPcrFromPacket = AbstractC0694Y.readPcrFromPacket(parsableByteArray, findSyncBytePosition, this.f8603c);
            if (readPcrFromPacket != androidx.media3.common.C.TIME_UNSET) {
                long adjustTsTimestamp = this.f8601a.adjustTsTimestamp(readPcrFromPacket);
                if (adjustTsTimestamp > j7) {
                    return j10 == androidx.media3.common.C.TIME_UNSET ? C1729m.overestimatedResult(adjustTsTimestamp, position) : C1729m.targetFoundResult(position + j9);
                }
                if (SilenceSkippingAudioProcessor.DEFAULT_MINIMUM_SILENCE_DURATION_US + adjustTsTimestamp > j7) {
                    return C1729m.targetFoundResult(position + findSyncBytePosition);
                }
                j9 = findSyncBytePosition;
                j10 = adjustTsTimestamp;
            }
            parsableByteArray.setPosition(findSyncBytePosition2);
            j8 = findSyncBytePosition2;
        }
        return j10 != androidx.media3.common.C.TIME_UNSET ? C1729m.underestimatedResult(j10, position + j8) : C1729m.f20501d;
    }
}
