package a1;

import A.i;
import S0.c;
import S0.o;
import S0.r;
import S0.s;
import android.graphics.Rect;
import androidx.media3.common.C;
import androidx.media3.common.text.Cue;
import androidx.media3.common.util.Consumer;
import androidx.media3.common.util.Log;
import androidx.media3.common.util.ParsableByteArray;
import androidx.media3.common.util.Util;
import androidx.media3.exoplayer.dash.DashMediaSource;
import com.google.common.collect.ImmutableList;
import java.nio.charset.StandardCharsets;
import java.util.List;
import java.util.zip.Inflater;

/* renamed from: a1.b, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0379b implements s {

    /* renamed from: a, reason: collision with root package name */
    public final ParsableByteArray f4629a = new ParsableByteArray();

    /* renamed from: b, reason: collision with root package name */
    public final ParsableByteArray f4630b = new ParsableByteArray();

    /* renamed from: c, reason: collision with root package name */
    public final C0378a f4631c;

    /* renamed from: d, reason: collision with root package name */
    public Inflater f4632d;

    public C0379b(List<byte[]> list) {
        C0378a c0378a = new C0378a();
        this.f4631c = c0378a;
        c0378a.parseIdx(new String(list.get(0), StandardCharsets.UTF_8));
    }

    @Override // S0.s
    public int getCueReplacementBehavior() {
        return 2;
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:48:0x00a7. Please report as an issue. */
    @Override // S0.s
    public void parse(byte[] bArr, int i2, int i7, r rVar, Consumer<c> consumer) {
        Cue cue;
        boolean z6;
        boolean z7;
        ParsableByteArray parsableByteArray = this.f4629a;
        parsableByteArray.reset(bArr, i2 + i7);
        parsableByteArray.setPosition(i2);
        if (this.f4632d == null) {
            this.f4632d = new Inflater();
        }
        Inflater inflater = this.f4632d;
        ParsableByteArray parsableByteArray2 = this.f4630b;
        if (Util.maybeInflate(parsableByteArray, parsableByteArray2, inflater)) {
            parsableByteArray.reset(parsableByteArray2.getData(), parsableByteArray2.limit());
        }
        C0378a c0378a = this.f4631c;
        c0378a.reset();
        int bytesLeft = parsableByteArray.bytesLeft();
        if (bytesLeft < 2 || parsableByteArray.readUnsignedShort() != bytesLeft) {
            cue = null;
        } else {
            if (c0378a.f4623d == null) {
                Log.w("VobsubParser", "Skipping SPU (no palette)");
            } else if (c0378a.f4621b) {
                int position = parsableByteArray.getPosition() - 2;
                parsableByteArray.setPosition(parsableByteArray.readUnsignedShort() + position);
                do {
                    int i8 = 4;
                    if (parsableByteArray.bytesLeft() < 4) {
                        z6 = false;
                    } else {
                        int position2 = parsableByteArray.getPosition();
                        parsableByteArray.skipBytes(2);
                        int readUnsignedShort = parsableByteArray.readUnsignedShort() + position;
                        boolean z8 = readUnsignedShort != position2 && readUnsignedShort < parsableByteArray.limit();
                        int limit = z8 ? readUnsignedShort : parsableByteArray.limit();
                        boolean z9 = true;
                        while (parsableByteArray.getPosition() < limit && z9) {
                            int readUnsignedByte = parsableByteArray.readUnsignedByte();
                            if (readUnsignedByte != 255) {
                                int[] iArr = c0378a.f4620a;
                                switch (readUnsignedByte) {
                                    case 0:
                                    case 1:
                                    case 2:
                                        z9 = true;
                                        break;
                                    case 3:
                                        z7 = false;
                                        if (parsableByteArray.bytesLeft() >= 2) {
                                            int readUnsignedByte2 = parsableByteArray.readUnsignedByte();
                                            int readUnsignedByte3 = parsableByteArray.readUnsignedByte();
                                            iArr[3] = C0378a.a(c0378a.f4623d, readUnsignedByte2 >> 4);
                                            iArr[2] = C0378a.a(c0378a.f4623d, readUnsignedByte2 & 15);
                                            iArr[1] = C0378a.a(c0378a.f4623d, readUnsignedByte3 >> 4);
                                            iArr[0] = C0378a.a(c0378a.f4623d, readUnsignedByte3 & 15);
                                            c0378a.f4622c = true;
                                            z9 = true;
                                            break;
                                        } else {
                                            Log.w("VobsubParser", "Incomplete color command");
                                            break;
                                        }
                                    case 4:
                                        if (parsableByteArray.bytesLeft() >= 2) {
                                            if (c0378a.f4622c) {
                                                int readUnsignedByte4 = parsableByteArray.readUnsignedByte();
                                                int readUnsignedByte5 = parsableByteArray.readUnsignedByte();
                                                iArr[3] = C0378a.c(iArr[3], readUnsignedByte4 >> 4);
                                                iArr[2] = C0378a.c(iArr[2], readUnsignedByte4 & 15);
                                                iArr[1] = C0378a.c(iArr[1], readUnsignedByte5 >> 4);
                                                iArr[0] = C0378a.c(iArr[0], readUnsignedByte5 & 15);
                                                z9 = true;
                                                break;
                                            } else {
                                                Log.w("VobsubParser", "Ignoring alpha command before color command");
                                            }
                                        } else {
                                            Log.w("VobsubParser", "Incomplete alpha command");
                                        }
                                        z9 = false;
                                        break;
                                    case 5:
                                        if (parsableByteArray.bytesLeft() >= 6) {
                                            int readUnsignedByte6 = parsableByteArray.readUnsignedByte();
                                            int readUnsignedByte7 = parsableByteArray.readUnsignedByte();
                                            int i9 = (readUnsignedByte6 << i8) | (readUnsignedByte7 >> 4);
                                            int readUnsignedByte8 = ((readUnsignedByte7 & 15) << 8) | parsableByteArray.readUnsignedByte();
                                            int readUnsignedByte9 = parsableByteArray.readUnsignedByte();
                                            int readUnsignedByte10 = parsableByteArray.readUnsignedByte();
                                            c0378a.f4626g = new Rect(i9, (readUnsignedByte9 << i8) | (readUnsignedByte10 >> 4), readUnsignedByte8 + 1, (((readUnsignedByte10 & 15) << 8) | parsableByteArray.readUnsignedByte()) + 1);
                                            z9 = true;
                                            break;
                                        } else {
                                            Log.w("VobsubParser", "Incomplete area command");
                                            z9 = false;
                                            break;
                                        }
                                    case 6:
                                        if (parsableByteArray.bytesLeft() >= i8) {
                                            c0378a.f4627h = parsableByteArray.readUnsignedShort();
                                            c0378a.f4628i = parsableByteArray.readUnsignedShort();
                                            z9 = true;
                                            break;
                                        } else {
                                            Log.w("VobsubParser", "Incomplete offsets command");
                                            z9 = false;
                                            break;
                                        }
                                    default:
                                        i.v(readUnsignedByte, "Unrecognized command: ", "VobsubParser");
                                        z9 = false;
                                        break;
                                }
                                i8 = 4;
                            } else {
                                z7 = false;
                            }
                            z9 = z7;
                            i8 = 4;
                        }
                        if (z8) {
                            parsableByteArray.setPosition(readUnsignedShort);
                        }
                        z6 = z8;
                    }
                } while (z6);
            } else {
                Log.w("VobsubParser", "Skipping SPU (no plane)");
            }
            cue = c0378a.build(parsableByteArray);
        }
        consumer.accept(new c(cue != null ? ImmutableList.of(cue) : ImmutableList.of(), C.TIME_UNSET, DashMediaSource.MIN_LIVE_DEFAULT_START_POSITION_US));
    }

    @Override // S0.s
    public final /* synthetic */ S0.i parseToLegacySubtitle(byte[] bArr, int i2, int i7) {
        return o.a(this, bArr, i2, i7);
    }

    @Override // S0.s
    public final /* synthetic */ void reset() {
        o.b(this);
    }
}
