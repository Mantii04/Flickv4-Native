package c1;

import androidx.media3.common.ParserException;
import androidx.media3.common.util.Log;
import androidx.media3.common.util.ParsableBitArray;
import androidx.media3.common.util.ParsableByteArray;
import androidx.media3.common.util.TimestampAdjuster;

/* renamed from: c1.D, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0674D implements InterfaceC0693X {

    /* renamed from: a, reason: collision with root package name */
    public final InterfaceC0705j f8551a;

    /* renamed from: b, reason: collision with root package name */
    public final ParsableBitArray f8552b = new ParsableBitArray(new byte[10]);

    /* renamed from: c, reason: collision with root package name */
    public int f8553c = 0;

    /* renamed from: d, reason: collision with root package name */
    public int f8554d;

    /* renamed from: e, reason: collision with root package name */
    public TimestampAdjuster f8555e;

    /* renamed from: f, reason: collision with root package name */
    public boolean f8556f;

    /* renamed from: g, reason: collision with root package name */
    public boolean f8557g;

    /* renamed from: h, reason: collision with root package name */
    public boolean f8558h;

    /* renamed from: i, reason: collision with root package name */
    public int f8559i;

    /* renamed from: j, reason: collision with root package name */
    public int f8560j;

    /* renamed from: k, reason: collision with root package name */
    public boolean f8561k;

    /* renamed from: l, reason: collision with root package name */
    public long f8562l;

    public C0674D(InterfaceC0705j interfaceC0705j) {
        this.f8551a = interfaceC0705j;
    }

    public final boolean a(ParsableByteArray parsableByteArray, byte[] bArr, int i2) {
        int min = Math.min(parsableByteArray.bytesLeft(), i2 - this.f8554d);
        if (min <= 0) {
            return true;
        }
        if (bArr == null) {
            parsableByteArray.skipBytes(min);
        } else {
            parsableByteArray.readBytes(bArr, this.f8554d, min);
        }
        int i7 = this.f8554d + min;
        this.f8554d = i7;
        return i7 == i2;
    }

    public final boolean b() {
        ParsableBitArray parsableBitArray = this.f8552b;
        parsableBitArray.setPosition(0);
        int readBits = parsableBitArray.readBits(24);
        if (readBits != 1) {
            A.i.v(readBits, "Unexpected start code prefix: ", "PesReader");
            this.f8560j = -1;
            return false;
        }
        parsableBitArray.skipBits(8);
        int readBits2 = parsableBitArray.readBits(16);
        parsableBitArray.skipBits(5);
        this.f8561k = parsableBitArray.readBit();
        parsableBitArray.skipBits(2);
        this.f8556f = parsableBitArray.readBit();
        this.f8557g = parsableBitArray.readBit();
        parsableBitArray.skipBits(6);
        int readBits3 = parsableBitArray.readBits(8);
        this.f8559i = readBits3;
        if (readBits2 == 0) {
            this.f8560j = -1;
        } else {
            int i2 = (readBits2 - 3) - readBits3;
            this.f8560j = i2;
            if (i2 < 0) {
                Log.w("PesReader", "Found negative packet payload size: " + this.f8560j);
                this.f8560j = -1;
            }
        }
        return true;
    }

    public boolean canConsumeSynthesizedEmptyPusi(boolean z6) {
        return this.f8553c == 3 && this.f8560j == -1 && !(z6 && (this.f8551a instanceof C0707l)) && (!z6 || b());
    }

    @Override // c1.InterfaceC0693X
    public void consume(ParsableByteArray parsableByteArray, int i2) throws ParserException {
        P3.v.checkNotNull(this.f8555e);
        int i7 = i2 & 1;
        int i8 = -1;
        int i9 = 2;
        InterfaceC0705j interfaceC0705j = this.f8551a;
        if (i7 != 0) {
            int i10 = this.f8553c;
            if (i10 != 0 && i10 != 1) {
                if (i10 == 2) {
                    Log.w("PesReader", "Unexpected start indicator reading extended header");
                } else {
                    if (i10 != 3) {
                        throw new IllegalStateException();
                    }
                    if (this.f8560j != -1) {
                        Log.w("PesReader", "Unexpected start indicator: expected " + this.f8560j + " more bytes");
                    }
                    interfaceC0705j.packetFinished(parsableByteArray.limit() == 0);
                }
            }
            this.f8553c = 1;
            this.f8554d = 0;
        }
        int i11 = i2;
        while (parsableByteArray.bytesLeft() > 0) {
            int i12 = this.f8553c;
            if (i12 != 0) {
                ParsableBitArray parsableBitArray = this.f8552b;
                if (i12 != 1) {
                    if (i12 == i9) {
                        if (a(parsableByteArray, parsableBitArray.data, Math.min(10, this.f8559i)) && a(parsableByteArray, null, this.f8559i)) {
                            parsableBitArray.setPosition(0);
                            this.f8562l = androidx.media3.common.C.TIME_UNSET;
                            if (this.f8556f) {
                                parsableBitArray.skipBits(4);
                                parsableBitArray.skipBits(1);
                                parsableBitArray.skipBits(1);
                                long readBits = (parsableBitArray.readBits(15) << 15) | (parsableBitArray.readBits(3) << 30) | parsableBitArray.readBits(15);
                                parsableBitArray.skipBits(1);
                                if (!this.f8558h && this.f8557g) {
                                    parsableBitArray.skipBits(4);
                                    parsableBitArray.skipBits(1);
                                    parsableBitArray.skipBits(1);
                                    parsableBitArray.skipBits(1);
                                    this.f8555e.adjustTsTimestamp((parsableBitArray.readBits(3) << 30) | (parsableBitArray.readBits(15) << 15) | parsableBitArray.readBits(15));
                                    this.f8558h = true;
                                }
                                this.f8562l = this.f8555e.adjustTsTimestamp(readBits);
                            }
                            i11 |= this.f8561k ? 4 : 0;
                            interfaceC0705j.packetStarted(this.f8562l, i11);
                            this.f8553c = 3;
                            this.f8554d = 0;
                        }
                    } else {
                        if (i12 != 3) {
                            throw new IllegalStateException();
                        }
                        int bytesLeft = parsableByteArray.bytesLeft();
                        int i13 = this.f8560j;
                        int i14 = i13 == i8 ? 0 : bytesLeft - i13;
                        if (i14 > 0) {
                            bytesLeft -= i14;
                            parsableByteArray.setLimit(parsableByteArray.getPosition() + bytesLeft);
                        }
                        interfaceC0705j.consume(parsableByteArray);
                        int i15 = this.f8560j;
                        if (i15 != i8) {
                            int i16 = i15 - bytesLeft;
                            this.f8560j = i16;
                            if (i16 == 0) {
                                interfaceC0705j.packetFinished(false);
                                this.f8553c = 1;
                                this.f8554d = 0;
                            }
                        }
                    }
                } else if (a(parsableByteArray, parsableBitArray.data, 9)) {
                    this.f8553c = b() ? 2 : 0;
                    this.f8554d = 0;
                }
            } else {
                parsableByteArray.skipBytes(parsableByteArray.bytesLeft());
            }
            i8 = -1;
            i9 = 2;
        }
    }

    @Override // c1.InterfaceC0693X
    public void init(TimestampAdjuster timestampAdjuster, v0.F f3, C0692W c0692w) {
        this.f8555e = timestampAdjuster;
        this.f8551a.createTracks(f3, c0692w);
    }

    @Override // c1.InterfaceC0693X
    public void seek() {
        this.f8553c = 0;
        this.f8554d = 0;
        this.f8558h = false;
        this.f8551a.seek();
    }
}
