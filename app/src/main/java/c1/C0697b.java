package c1;

import androidx.media3.common.Format;
import androidx.media3.common.MimeTypes;
import androidx.media3.common.util.ParsableBitArray;
import androidx.media3.common.util.ParsableByteArray;
import java.util.Objects;
import v0.AbstractC1720d;
import v0.C1719c;
import v0.r0;

/* renamed from: c1.b, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0697b implements InterfaceC0705j {

    /* renamed from: a, reason: collision with root package name */
    public final ParsableBitArray f8661a;

    /* renamed from: b, reason: collision with root package name */
    public final ParsableByteArray f8662b;

    /* renamed from: c, reason: collision with root package name */
    public final String f8663c;

    /* renamed from: d, reason: collision with root package name */
    public final int f8664d;

    /* renamed from: e, reason: collision with root package name */
    public final String f8665e;

    /* renamed from: f, reason: collision with root package name */
    public String f8666f;

    /* renamed from: g, reason: collision with root package name */
    public r0 f8667g;

    /* renamed from: h, reason: collision with root package name */
    public int f8668h;

    /* renamed from: i, reason: collision with root package name */
    public int f8669i;

    /* renamed from: j, reason: collision with root package name */
    public boolean f8670j;

    /* renamed from: k, reason: collision with root package name */
    public long f8671k;

    /* renamed from: l, reason: collision with root package name */
    public Format f8672l;

    /* renamed from: m, reason: collision with root package name */
    public int f8673m;

    /* renamed from: n, reason: collision with root package name */
    public long f8674n;

    public C0697b(String str) {
        this(null, 0, str);
    }

    @Override // c1.InterfaceC0705j
    public void consume(ParsableByteArray parsableByteArray) {
        P3.v.checkNotNull(this.f8667g);
        while (parsableByteArray.bytesLeft() > 0) {
            int i2 = this.f8668h;
            ParsableByteArray parsableByteArray2 = this.f8662b;
            if (i2 == 0) {
                while (true) {
                    if (parsableByteArray.bytesLeft() <= 0) {
                        break;
                    }
                    if (this.f8670j) {
                        int readUnsignedByte = parsableByteArray.readUnsignedByte();
                        if (readUnsignedByte == 119) {
                            this.f8670j = false;
                            this.f8668h = 1;
                            parsableByteArray2.getData()[0] = 11;
                            parsableByteArray2.getData()[1] = 119;
                            this.f8669i = 2;
                            break;
                        }
                        this.f8670j = readUnsignedByte == 11;
                    } else {
                        this.f8670j = parsableByteArray.readUnsignedByte() == 11;
                    }
                }
            } else if (i2 == 1) {
                byte[] data = parsableByteArray2.getData();
                int min = Math.min(parsableByteArray.bytesLeft(), 128 - this.f8669i);
                parsableByteArray.readBytes(data, this.f8669i, min);
                int i7 = this.f8669i + min;
                this.f8669i = i7;
                if (i7 == 128) {
                    ParsableBitArray parsableBitArray = this.f8661a;
                    parsableBitArray.setPosition(0);
                    C1719c parseAc3SyncframeInfo = AbstractC1720d.parseAc3SyncframeInfo(parsableBitArray);
                    Format format = this.f8672l;
                    if (format == null || parseAc3SyncframeInfo.f20435c != format.channelCount || parseAc3SyncframeInfo.f20434b != format.sampleRate || !Objects.equals(parseAc3SyncframeInfo.f20433a, format.sampleMimeType)) {
                        Format.Builder roleFlags = new Format.Builder().setId(this.f8666f).setContainerMimeType(this.f8665e).setSampleMimeType(parseAc3SyncframeInfo.f20433a).setChannelCount(parseAc3SyncframeInfo.f20435c).setSampleRate(parseAc3SyncframeInfo.f20434b).setLanguage(this.f8663c).setRoleFlags(this.f8664d);
                        int i8 = parseAc3SyncframeInfo.f20438f;
                        Format.Builder peakBitrate = roleFlags.setPeakBitrate(i8);
                        if (MimeTypes.AUDIO_AC3.equals(parseAc3SyncframeInfo.f20433a)) {
                            peakBitrate.setAverageBitrate(i8);
                        }
                        Format build = peakBitrate.build();
                        this.f8672l = build;
                        this.f8667g.format(build);
                    }
                    this.f8673m = parseAc3SyncframeInfo.f20436d;
                    this.f8671k = (parseAc3SyncframeInfo.f20437e * 1000000) / this.f8672l.sampleRate;
                    parsableByteArray2.setPosition(0);
                    this.f8667g.sampleData(parsableByteArray2, 128);
                    this.f8668h = 2;
                }
            } else if (i2 == 2) {
                int min2 = Math.min(parsableByteArray.bytesLeft(), this.f8673m - this.f8669i);
                this.f8667g.sampleData(parsableByteArray, min2);
                int i9 = this.f8669i + min2;
                this.f8669i = i9;
                if (i9 == this.f8673m) {
                    P3.v.checkState(this.f8674n != androidx.media3.common.C.TIME_UNSET);
                    this.f8667g.sampleMetadata(this.f8674n, 1, this.f8673m, 0, null);
                    this.f8674n += this.f8671k;
                    this.f8668h = 0;
                }
            }
        }
    }

    @Override // c1.InterfaceC0705j
    public void createTracks(v0.F f3, C0692W c0692w) {
        c0692w.generateNewId();
        this.f8666f = c0692w.getFormatId();
        this.f8667g = f3.track(c0692w.getTrackId(), 1);
    }

    @Override // c1.InterfaceC0705j
    public void packetStarted(long j7, int i2) {
        this.f8674n = j7;
    }

    @Override // c1.InterfaceC0705j
    public void seek() {
        this.f8668h = 0;
        this.f8669i = 0;
        this.f8670j = false;
        this.f8674n = androidx.media3.common.C.TIME_UNSET;
    }

    public C0697b(String str, int i2, String str2) {
        ParsableBitArray parsableBitArray = new ParsableBitArray(new byte[128]);
        this.f8661a = parsableBitArray;
        this.f8662b = new ParsableByteArray(parsableBitArray.data);
        this.f8668h = 0;
        this.f8674n = androidx.media3.common.C.TIME_UNSET;
        this.f8663c = str;
        this.f8664d = i2;
        this.f8665e = str2;
    }

    @Override // c1.InterfaceC0705j
    public void packetFinished(boolean z6) {
    }
}
