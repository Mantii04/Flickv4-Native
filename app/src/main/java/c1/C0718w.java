package c1;

import androidx.media3.common.Format;
import androidx.media3.common.util.ParsableByteArray;
import v0.r0;

/* renamed from: c1.w, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0718w implements InterfaceC0705j {

    /* renamed from: a, reason: collision with root package name */
    public final ParsableByteArray f8913a;

    /* renamed from: b, reason: collision with root package name */
    public final v0.Y f8914b;

    /* renamed from: c, reason: collision with root package name */
    public final String f8915c;

    /* renamed from: d, reason: collision with root package name */
    public final int f8916d;

    /* renamed from: e, reason: collision with root package name */
    public final String f8917e;

    /* renamed from: f, reason: collision with root package name */
    public r0 f8918f;

    /* renamed from: g, reason: collision with root package name */
    public String f8919g;

    /* renamed from: h, reason: collision with root package name */
    public int f8920h;

    /* renamed from: i, reason: collision with root package name */
    public int f8921i;

    /* renamed from: j, reason: collision with root package name */
    public boolean f8922j;

    /* renamed from: k, reason: collision with root package name */
    public boolean f8923k;

    /* renamed from: l, reason: collision with root package name */
    public long f8924l;

    /* renamed from: m, reason: collision with root package name */
    public int f8925m;

    /* renamed from: n, reason: collision with root package name */
    public long f8926n;

    public C0718w(String str) {
        this(null, 0, str);
    }

    @Override // c1.InterfaceC0705j
    public void consume(ParsableByteArray parsableByteArray) {
        P3.v.checkNotNull(this.f8918f);
        while (parsableByteArray.bytesLeft() > 0) {
            int i2 = this.f8920h;
            ParsableByteArray parsableByteArray2 = this.f8913a;
            if (i2 == 0) {
                byte[] data = parsableByteArray.getData();
                int position = parsableByteArray.getPosition();
                int limit = parsableByteArray.limit();
                while (true) {
                    if (position >= limit) {
                        parsableByteArray.setPosition(limit);
                        break;
                    }
                    byte b7 = data[position];
                    boolean z6 = (b7 & 255) == 255;
                    boolean z7 = this.f8923k && (b7 & 224) == 224;
                    this.f8923k = z6;
                    if (z7) {
                        parsableByteArray.setPosition(position + 1);
                        this.f8923k = false;
                        parsableByteArray2.getData()[1] = data[position];
                        this.f8921i = 2;
                        this.f8920h = 1;
                        break;
                    }
                    position++;
                }
            } else if (i2 == 1) {
                int min = Math.min(parsableByteArray.bytesLeft(), 4 - this.f8921i);
                parsableByteArray.readBytes(parsableByteArray2.getData(), this.f8921i, min);
                int i7 = this.f8921i + min;
                this.f8921i = i7;
                if (i7 >= 4) {
                    parsableByteArray2.setPosition(0);
                    int readInt = parsableByteArray2.readInt();
                    v0.Y y6 = this.f8914b;
                    if (y6.setForHeaderData(readInt)) {
                        this.f8925m = y6.f20416c;
                        if (!this.f8922j) {
                            this.f8924l = (y6.f20420g * 1000000) / y6.f20417d;
                            this.f8918f.format(new Format.Builder().setId(this.f8919g).setContainerMimeType(this.f8917e).setSampleMimeType(y6.f20415b).setMaxInputSize(4096).setChannelCount(y6.f20418e).setSampleRate(y6.f20417d).setLanguage(this.f8915c).setRoleFlags(this.f8916d).build());
                            this.f8922j = true;
                        }
                        parsableByteArray2.setPosition(0);
                        this.f8918f.sampleData(parsableByteArray2, 4);
                        this.f8920h = 2;
                    } else {
                        this.f8921i = 0;
                        this.f8920h = 1;
                    }
                }
            } else {
                if (i2 != 2) {
                    throw new IllegalStateException();
                }
                int min2 = Math.min(parsableByteArray.bytesLeft(), this.f8925m - this.f8921i);
                this.f8918f.sampleData(parsableByteArray, min2);
                int i8 = this.f8921i + min2;
                this.f8921i = i8;
                if (i8 >= this.f8925m) {
                    P3.v.checkState(this.f8926n != androidx.media3.common.C.TIME_UNSET);
                    this.f8918f.sampleMetadata(this.f8926n, 1, this.f8925m, 0, null);
                    this.f8926n += this.f8924l;
                    this.f8921i = 0;
                    this.f8920h = 0;
                }
            }
        }
    }

    @Override // c1.InterfaceC0705j
    public void createTracks(v0.F f3, C0692W c0692w) {
        c0692w.generateNewId();
        this.f8919g = c0692w.getFormatId();
        this.f8918f = f3.track(c0692w.getTrackId(), 1);
    }

    @Override // c1.InterfaceC0705j
    public void packetStarted(long j7, int i2) {
        this.f8926n = j7;
    }

    @Override // c1.InterfaceC0705j
    public void seek() {
        this.f8920h = 0;
        this.f8921i = 0;
        this.f8923k = false;
        this.f8926n = androidx.media3.common.C.TIME_UNSET;
    }

    public C0718w(String str, int i2, String str2) {
        this.f8920h = 0;
        ParsableByteArray parsableByteArray = new ParsableByteArray(4);
        this.f8913a = parsableByteArray;
        parsableByteArray.getData()[0] = -1;
        this.f8914b = new v0.Y();
        this.f8926n = androidx.media3.common.C.TIME_UNSET;
        this.f8915c = str;
        this.f8916d = i2;
        this.f8917e = str2;
    }

    @Override // c1.InterfaceC0705j
    public void packetFinished(boolean z6) {
    }
}
