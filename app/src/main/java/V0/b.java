package V0;

import S0.c;
import S0.i;
import S0.o;
import S0.r;
import S0.s;
import androidx.media3.common.C;
import androidx.media3.common.text.Cue;
import androidx.media3.common.util.Consumer;
import androidx.media3.common.util.ParsableByteArray;
import androidx.media3.common.util.Util;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.zip.Inflater;

/* loaded from: classes.dex */
public final class b implements s {

    /* renamed from: a, reason: collision with root package name */
    public final ParsableByteArray f3816a = new ParsableByteArray();

    /* renamed from: b, reason: collision with root package name */
    public final ParsableByteArray f3817b = new ParsableByteArray();

    /* renamed from: c, reason: collision with root package name */
    public final a f3818c = new a();

    /* renamed from: d, reason: collision with root package name */
    public Inflater f3819d;

    @Override // S0.s
    public int getCueReplacementBehavior() {
        return 2;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Override // S0.s
    public void parse(byte[] bArr, int i2, int i7, r rVar, Consumer<c> consumer) {
        ParsableByteArray parsableByteArray;
        Cue build;
        ParsableByteArray parsableByteArray2;
        int readUnsignedInt24;
        ParsableByteArray parsableByteArray3 = this.f3816a;
        parsableByteArray3.reset(bArr, i2 + i7);
        parsableByteArray3.setPosition(i2);
        if (this.f3819d == null) {
            this.f3819d = new Inflater();
        }
        Inflater inflater = this.f3819d;
        ParsableByteArray parsableByteArray4 = this.f3817b;
        if (Util.maybeInflate(parsableByteArray3, parsableByteArray4, inflater)) {
            parsableByteArray3.reset(parsableByteArray4.getData(), parsableByteArray4.limit());
        }
        a aVar = this.f3818c;
        aVar.reset();
        ArrayList arrayList = new ArrayList();
        while (parsableByteArray3.bytesLeft() >= 3) {
            int limit = parsableByteArray3.limit();
            int readUnsignedByte = parsableByteArray3.readUnsignedByte();
            int readUnsignedShort = parsableByteArray3.readUnsignedShort();
            int position = parsableByteArray3.getPosition() + readUnsignedShort;
            if (position > limit) {
                parsableByteArray3.setPosition(limit);
                parsableByteArray2 = parsableByteArray3;
                build = null;
            } else {
                char c7 = 128;
                if (readUnsignedByte != 128) {
                    switch (readUnsignedByte) {
                        case 20:
                            if (readUnsignedShort % 5 == 2) {
                                parsableByteArray3.skipBytes(2);
                                int[] iArr = aVar.f3808b;
                                Arrays.fill(iArr, 0);
                                int i8 = readUnsignedShort / 5;
                                int i9 = 0;
                                while (i9 < i8) {
                                    int readUnsignedByte2 = parsableByteArray3.readUnsignedByte();
                                    char c8 = c7;
                                    double readUnsignedByte3 = parsableByteArray3.readUnsignedByte();
                                    double readUnsignedByte4 = parsableByteArray3.readUnsignedByte() - 128;
                                    double readUnsignedByte5 = parsableByteArray3.readUnsignedByte() - 128;
                                    iArr[readUnsignedByte2] = Util.constrainValue((int) ((readUnsignedByte5 * 1.772d) + readUnsignedByte3), 0, 255) | (parsableByteArray3.readUnsignedByte() << 24) | (Util.constrainValue((int) ((1.402d * readUnsignedByte4) + readUnsignedByte3), 0, 255) << 16) | (Util.constrainValue((int) ((readUnsignedByte3 - (0.34414d * readUnsignedByte5)) - (readUnsignedByte4 * 0.71414d)), 0, 255) << 8);
                                    i9++;
                                    c7 = c8;
                                    parsableByteArray3 = parsableByteArray3;
                                }
                                parsableByteArray = parsableByteArray3;
                                aVar.f3809c = true;
                                break;
                            }
                            parsableByteArray = parsableByteArray3;
                            break;
                        case 21:
                            if (readUnsignedShort >= 4) {
                                parsableByteArray3.skipBytes(3);
                                boolean z6 = (128 & parsableByteArray3.readUnsignedByte()) != 0;
                                int i10 = readUnsignedShort - 4;
                                ParsableByteArray parsableByteArray5 = aVar.f3807a;
                                if (z6) {
                                    if (i10 >= 7 && (readUnsignedInt24 = parsableByteArray3.readUnsignedInt24()) >= 4) {
                                        aVar.f3814h = parsableByteArray3.readUnsignedShort();
                                        aVar.f3815i = parsableByteArray3.readUnsignedShort();
                                        parsableByteArray5.reset(readUnsignedInt24 - 4);
                                        i10 = readUnsignedShort - 11;
                                    }
                                }
                                int position2 = parsableByteArray5.getPosition();
                                int limit2 = parsableByteArray5.limit();
                                if (position2 < limit2 && i10 > 0) {
                                    int min = Math.min(i10, limit2 - position2);
                                    parsableByteArray3.readBytes(parsableByteArray5.getData(), position2, min);
                                    parsableByteArray5.setPosition(position2 + min);
                                }
                            }
                            parsableByteArray = parsableByteArray3;
                            break;
                        case 22:
                            if (readUnsignedShort >= 19) {
                                aVar.f3810d = parsableByteArray3.readUnsignedShort();
                                aVar.f3811e = parsableByteArray3.readUnsignedShort();
                                parsableByteArray3.skipBytes(11);
                                aVar.f3812f = parsableByteArray3.readUnsignedShort();
                                aVar.f3813g = parsableByteArray3.readUnsignedShort();
                            }
                            parsableByteArray = parsableByteArray3;
                            break;
                        default:
                            parsableByteArray = parsableByteArray3;
                            break;
                    }
                    build = null;
                } else {
                    parsableByteArray = parsableByteArray3;
                    build = aVar.build();
                    aVar.reset();
                }
                parsableByteArray2 = parsableByteArray;
                parsableByteArray2.setPosition(position);
            }
            if (build != null) {
                arrayList.add(build);
            }
            parsableByteArray3 = parsableByteArray2;
        }
        consumer.accept(new c(arrayList, C.TIME_UNSET, C.TIME_UNSET));
    }

    @Override // S0.s
    public final /* synthetic */ i parseToLegacySubtitle(byte[] bArr, int i2, int i7) {
        return o.a(this, bArr, i2, i7);
    }

    @Override // S0.s
    public final /* synthetic */ void reset() {
        o.b(this);
    }
}
