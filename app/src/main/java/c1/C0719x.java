package c1;

import androidx.media3.common.Format;
import androidx.media3.common.MimeTypes;
import androidx.media3.common.ParserException;
import androidx.media3.common.util.ParsableBitArray;
import androidx.media3.common.util.ParsableByteArray;
import androidx.media3.common.util.Util;
import com.google.common.collect.ImmutableList;
import v0.r0;

/* renamed from: c1.x, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0719x implements InterfaceC0705j {

    /* renamed from: a, reason: collision with root package name */
    public final String f8927a;

    /* renamed from: f, reason: collision with root package name */
    public String f8932f;

    /* renamed from: g, reason: collision with root package name */
    public r0 f8933g;

    /* renamed from: j, reason: collision with root package name */
    public boolean f8936j;

    /* renamed from: l, reason: collision with root package name */
    public int f8938l;

    /* renamed from: m, reason: collision with root package name */
    public int f8939m;

    /* renamed from: o, reason: collision with root package name */
    public int f8941o;

    /* renamed from: p, reason: collision with root package name */
    public int f8942p;

    /* renamed from: t, reason: collision with root package name */
    public int f8946t;

    /* renamed from: v, reason: collision with root package name */
    public boolean f8948v;

    /* renamed from: e, reason: collision with root package name */
    public int f8931e = 0;

    /* renamed from: b, reason: collision with root package name */
    public final ParsableByteArray f8928b = new ParsableByteArray(new byte[15], 2);

    /* renamed from: c, reason: collision with root package name */
    public final ParsableBitArray f8929c = new ParsableBitArray();

    /* renamed from: d, reason: collision with root package name */
    public final ParsableByteArray f8930d = new ParsableByteArray();

    /* renamed from: q, reason: collision with root package name */
    public final C0720y f8943q = new C0720y();

    /* renamed from: r, reason: collision with root package name */
    public int f8944r = androidx.media3.common.C.RATE_UNSET_INT;

    /* renamed from: s, reason: collision with root package name */
    public int f8945s = -1;

    /* renamed from: u, reason: collision with root package name */
    public long f8947u = -1;

    /* renamed from: k, reason: collision with root package name */
    public boolean f8937k = true;

    /* renamed from: n, reason: collision with root package name */
    public boolean f8940n = true;

    /* renamed from: h, reason: collision with root package name */
    public double f8934h = -9.223372036854776E18d;

    /* renamed from: i, reason: collision with root package name */
    public double f8935i = -9.223372036854776E18d;

    public C0719x(String str) {
        this.f8927a = str;
    }

    public static void a(ParsableByteArray parsableByteArray, ParsableByteArray parsableByteArray2, boolean z6) {
        int position = parsableByteArray.getPosition();
        int min = Math.min(parsableByteArray.bytesLeft(), parsableByteArray2.bytesLeft());
        parsableByteArray.readBytes(parsableByteArray2.getData(), parsableByteArray2.getPosition(), min);
        parsableByteArray2.skipBytes(min);
        if (z6) {
            parsableByteArray.setPosition(position);
        }
    }

    @Override // c1.InterfaceC0705j
    public void consume(ParsableByteArray parsableByteArray) throws ParserException {
        int i2;
        P3.v.checkNotNull(this.f8933g);
        while (parsableByteArray.bytesLeft() > 0) {
            int i7 = this.f8931e;
            if (i7 == 0) {
                int i8 = this.f8938l;
                if ((i8 & 2) != 0) {
                    if ((i8 & 4) == 0) {
                        while (parsableByteArray.bytesLeft() > 0) {
                            int i9 = this.f8939m << 8;
                            this.f8939m = i9;
                            int readUnsignedByte = i9 | parsableByteArray.readUnsignedByte();
                            this.f8939m = readUnsignedByte;
                            if (AbstractC0671A.isSyncWord(readUnsignedByte)) {
                                parsableByteArray.setPosition(parsableByteArray.getPosition() - 3);
                                this.f8939m = 0;
                            }
                        }
                    }
                    this.f8931e = 1;
                    break;
                }
                parsableByteArray.setPosition(parsableByteArray.limit());
            } else {
                C0720y c0720y = this.f8943q;
                ParsableByteArray parsableByteArray2 = this.f8930d;
                if (i7 == 1) {
                    ParsableByteArray parsableByteArray3 = this.f8928b;
                    a(parsableByteArray, parsableByteArray3, false);
                    if (parsableByteArray3.bytesLeft() == 0) {
                        int limit = parsableByteArray3.limit();
                        byte[] data = parsableByteArray3.getData();
                        ParsableBitArray parsableBitArray = this.f8929c;
                        parsableBitArray.reset(data, limit);
                        boolean parseMhasPacketHeader = AbstractC0671A.parseMhasPacketHeader(parsableBitArray, c0720y);
                        if (parseMhasPacketHeader) {
                            this.f8941o = 0;
                            this.f8942p = c0720y.f8951c + limit + this.f8942p;
                        }
                        if (parseMhasPacketHeader) {
                            parsableByteArray3.setPosition(0);
                            this.f8933g.sampleData(parsableByteArray3, parsableByteArray3.limit());
                            parsableByteArray3.reset(2);
                            parsableByteArray2.reset(c0720y.f8951c);
                            this.f8940n = true;
                            this.f8931e = 2;
                        } else if (parsableByteArray3.limit() < 15) {
                            parsableByteArray3.setLimit(parsableByteArray3.limit() + 1);
                            this.f8940n = false;
                        }
                    } else {
                        this.f8940n = false;
                    }
                } else {
                    if (i7 != 2) {
                        throw new IllegalStateException();
                    }
                    int i10 = c0720y.f8949a;
                    if (i10 == 1 || i10 == 17) {
                        a(parsableByteArray, parsableByteArray2, true);
                    }
                    int min = Math.min(parsableByteArray.bytesLeft(), c0720y.f8951c - this.f8941o);
                    this.f8933g.sampleData(parsableByteArray, min);
                    int i11 = this.f8941o + min;
                    this.f8941o = i11;
                    if (i11 == c0720y.f8951c) {
                        int i12 = c0720y.f8949a;
                        if (i12 == 1) {
                            C0721z parseMpegh3daConfig = AbstractC0671A.parseMpegh3daConfig(new ParsableBitArray(parsableByteArray2.getData()));
                            this.f8944r = parseMpegh3daConfig.f8953b;
                            this.f8945s = parseMpegh3daConfig.f8954c;
                            long j7 = this.f8947u;
                            long j8 = c0720y.f8950b;
                            if (j7 != j8) {
                                this.f8947u = j8;
                                int i13 = parseMpegh3daConfig.f8952a;
                                String concat = i13 != -1 ? "mhm1".concat(String.format(".%02X", Integer.valueOf(i13))) : "mhm1";
                                byte[] bArr = parseMpegh3daConfig.f8955d;
                                this.f8933g.format(new Format.Builder().setId(this.f8932f).setContainerMimeType(this.f8927a).setSampleMimeType(MimeTypes.AUDIO_MPEGH_MHM1).setSampleRate(this.f8944r).setCodecs(concat).setInitializationData((bArr == null || bArr.length <= 0) ? null : ImmutableList.of(Util.EMPTY_BYTE_ARRAY, bArr)).build());
                            }
                            this.f8948v = true;
                        } else if (i12 == 17) {
                            this.f8946t = AbstractC0671A.parseAudioTruncationInfo(new ParsableBitArray(parsableByteArray2.getData()));
                        } else if (i12 == 2) {
                            if (this.f8948v) {
                                this.f8937k = false;
                                i2 = 1;
                            } else {
                                i2 = 0;
                            }
                            double d7 = ((this.f8945s - this.f8946t) * 1000000.0d) / this.f8944r;
                            long round = Math.round(this.f8934h);
                            if (this.f8936j) {
                                this.f8936j = false;
                                this.f8934h = this.f8935i;
                            } else {
                                this.f8934h += d7;
                            }
                            this.f8933g.sampleMetadata(round, i2, this.f8942p, 0, null);
                            this.f8948v = false;
                            this.f8946t = 0;
                            this.f8942p = 0;
                        }
                        this.f8931e = 1;
                    }
                }
            }
        }
    }

    @Override // c1.InterfaceC0705j
    public void createTracks(v0.F f3, C0692W c0692w) {
        c0692w.generateNewId();
        this.f8932f = c0692w.getFormatId();
        this.f8933g = f3.track(c0692w.getTrackId(), 1);
    }

    @Override // c1.InterfaceC0705j
    public void packetStarted(long j7, int i2) {
        this.f8938l = i2;
        if (!this.f8937k && (this.f8942p != 0 || !this.f8940n)) {
            this.f8936j = true;
        }
        if (j7 != androidx.media3.common.C.TIME_UNSET) {
            if (this.f8936j) {
                this.f8935i = j7;
            } else {
                this.f8934h = j7;
            }
        }
    }

    @Override // c1.InterfaceC0705j
    public void seek() {
        this.f8931e = 0;
        this.f8939m = 0;
        this.f8928b.reset(2);
        this.f8941o = 0;
        this.f8942p = 0;
        this.f8944r = androidx.media3.common.C.RATE_UNSET_INT;
        this.f8945s = -1;
        this.f8946t = 0;
        this.f8947u = -1L;
        this.f8948v = false;
        this.f8936j = false;
        this.f8940n = true;
        this.f8937k = true;
        this.f8934h = -9.223372036854776E18d;
        this.f8935i = -9.223372036854776E18d;
    }

    @Override // c1.InterfaceC0705j
    public void packetFinished(boolean z6) {
    }
}
