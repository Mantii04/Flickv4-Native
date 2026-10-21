package c1;

import androidx.media3.common.util.ParsableByteArray;
import androidx.media3.common.util.TimestampAdjuster;
import androidx.media3.common.util.Util;
import androidx.media3.exoplayer.audio.SilenceSkippingAudioProcessor;
import java.io.IOException;
import v0.C1729m;
import v0.InterfaceC1731o;

/* renamed from: c1.E, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0675E implements InterfaceC1731o {

    /* renamed from: a, reason: collision with root package name */
    public final TimestampAdjuster f8563a;

    /* renamed from: b, reason: collision with root package name */
    public final ParsableByteArray f8564b = new ParsableByteArray();

    public C0675E(TimestampAdjuster timestampAdjuster) {
        this.f8563a = timestampAdjuster;
    }

    @Override // v0.InterfaceC1731o
    public void onSeekFinished() {
        this.f8564b.reset(Util.EMPTY_BYTE_ARRAY);
    }

    @Override // v0.InterfaceC1731o
    public C1729m searchForTimestamp(v0.D d7, long j7) throws IOException {
        long position = d7.getPosition();
        int min = (int) Math.min(20000L, d7.getLength() - position);
        ParsableByteArray parsableByteArray = this.f8564b;
        parsableByteArray.reset(min);
        d7.peekFully(parsableByteArray.getData(), 0, min);
        int i2 = -1;
        int i7 = -1;
        long j8 = -9223372036854775807L;
        while (parsableByteArray.bytesLeft() >= 4) {
            if (C0676F.a(parsableByteArray.getPosition(), parsableByteArray.getData()) != 442) {
                parsableByteArray.skipBytes(1);
            } else {
                parsableByteArray.skipBytes(4);
                long readScrValueFromPack = C0677G.readScrValueFromPack(parsableByteArray);
                if (readScrValueFromPack != androidx.media3.common.C.TIME_UNSET) {
                    long adjustTsTimestamp = this.f8563a.adjustTsTimestamp(readScrValueFromPack);
                    if (adjustTsTimestamp > j7) {
                        return j8 == androidx.media3.common.C.TIME_UNSET ? C1729m.overestimatedResult(adjustTsTimestamp, position) : C1729m.targetFoundResult(position + i7);
                    }
                    if (SilenceSkippingAudioProcessor.DEFAULT_MINIMUM_SILENCE_DURATION_US + adjustTsTimestamp > j7) {
                        return C1729m.targetFoundResult(position + parsableByteArray.getPosition());
                    }
                    i7 = parsableByteArray.getPosition();
                    j8 = adjustTsTimestamp;
                }
                int limit = parsableByteArray.limit();
                if (parsableByteArray.bytesLeft() >= 10) {
                    parsableByteArray.skipBytes(9);
                    int readUnsignedByte = parsableByteArray.readUnsignedByte() & 7;
                    if (parsableByteArray.bytesLeft() >= readUnsignedByte) {
                        parsableByteArray.skipBytes(readUnsignedByte);
                        if (parsableByteArray.bytesLeft() >= 4) {
                            if (C0676F.a(parsableByteArray.getPosition(), parsableByteArray.getData()) == 443) {
                                parsableByteArray.skipBytes(4);
                                int readUnsignedShort = parsableByteArray.readUnsignedShort();
                                if (parsableByteArray.bytesLeft() < readUnsignedShort) {
                                    parsableByteArray.setPosition(limit);
                                } else {
                                    parsableByteArray.skipBytes(readUnsignedShort);
                                }
                            }
                            while (true) {
                                if (parsableByteArray.bytesLeft() < 4) {
                                    break;
                                }
                                int a7 = C0676F.a(parsableByteArray.getPosition(), parsableByteArray.getData());
                                if (a7 == 442 || a7 == 441 || (a7 >>> 8) != 1) {
                                    break;
                                }
                                parsableByteArray.skipBytes(4);
                                if (parsableByteArray.bytesLeft() < 2) {
                                    parsableByteArray.setPosition(limit);
                                    break;
                                }
                                parsableByteArray.setPosition(Math.min(parsableByteArray.limit(), parsableByteArray.getPosition() + parsableByteArray.readUnsignedShort()));
                            }
                        } else {
                            parsableByteArray.setPosition(limit);
                        }
                    } else {
                        parsableByteArray.setPosition(limit);
                    }
                } else {
                    parsableByteArray.setPosition(limit);
                }
                i2 = parsableByteArray.getPosition();
            }
        }
        return j8 != androidx.media3.common.C.TIME_UNSET ? C1729m.underestimatedResult(j8, position + i2) : C1729m.f20501d;
    }
}
