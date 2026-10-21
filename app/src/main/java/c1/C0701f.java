package c1;

import androidx.media3.common.Format;
import androidx.media3.common.MimeTypes;
import androidx.media3.common.ParserException;
import androidx.media3.common.util.Log;
import androidx.media3.common.util.ParsableBitArray;
import androidx.media3.common.util.ParsableByteArray;
import androidx.media3.common.util.Util;
import java.util.Arrays;
import java.util.Collections;
import v0.AbstractC1718b;
import v0.C1717a;
import v0.C1740y;
import v0.r0;

/* renamed from: c1.f, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0701f implements InterfaceC0705j {

    /* renamed from: x, reason: collision with root package name */
    public static final byte[] f8705x = {73, 68, 51};

    /* renamed from: a, reason: collision with root package name */
    public final boolean f8706a;

    /* renamed from: b, reason: collision with root package name */
    public final ParsableBitArray f8707b;

    /* renamed from: c, reason: collision with root package name */
    public final ParsableByteArray f8708c;

    /* renamed from: d, reason: collision with root package name */
    public final String f8709d;

    /* renamed from: e, reason: collision with root package name */
    public final int f8710e;

    /* renamed from: f, reason: collision with root package name */
    public final String f8711f;

    /* renamed from: g, reason: collision with root package name */
    public String f8712g;

    /* renamed from: h, reason: collision with root package name */
    public r0 f8713h;

    /* renamed from: i, reason: collision with root package name */
    public r0 f8714i;

    /* renamed from: j, reason: collision with root package name */
    public int f8715j;

    /* renamed from: k, reason: collision with root package name */
    public int f8716k;

    /* renamed from: l, reason: collision with root package name */
    public int f8717l;

    /* renamed from: m, reason: collision with root package name */
    public boolean f8718m;

    /* renamed from: n, reason: collision with root package name */
    public boolean f8719n;

    /* renamed from: o, reason: collision with root package name */
    public int f8720o;

    /* renamed from: p, reason: collision with root package name */
    public int f8721p;

    /* renamed from: q, reason: collision with root package name */
    public int f8722q;

    /* renamed from: r, reason: collision with root package name */
    public boolean f8723r;

    /* renamed from: s, reason: collision with root package name */
    public long f8724s;

    /* renamed from: t, reason: collision with root package name */
    public int f8725t;

    /* renamed from: u, reason: collision with root package name */
    public long f8726u;

    /* renamed from: v, reason: collision with root package name */
    public r0 f8727v;

    /* renamed from: w, reason: collision with root package name */
    public long f8728w;

    public C0701f(boolean z6, String str) {
        this(z6, null, 0, str);
    }

    public static boolean isAdtsSyncWord(int i2) {
        return (i2 & 65526) == 65520;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v42 */
    /* JADX WARN: Type inference failed for: r3v27 */
    /* JADX WARN: Type inference failed for: r3v28 */
    /* JADX WARN: Type inference failed for: r3v37 */
    @Override // c1.InterfaceC0705j
    public void consume(ParsableByteArray parsableByteArray) throws ParserException {
        int i2;
        int i7;
        byte b7;
        char c7;
        ?? r32;
        char c8;
        char c9;
        int i8;
        P3.v.checkNotNull(this.f8713h);
        Util.castNonNull(this.f8727v);
        Util.castNonNull(this.f8714i);
        while (parsableByteArray.bytesLeft() > 0) {
            int i9 = this.f8715j;
            int i10 = 2;
            char c10 = 65535;
            int i11 = 4;
            int i12 = 3;
            int i13 = 1;
            ParsableByteArray parsableByteArray2 = this.f8708c;
            ParsableBitArray parsableBitArray = this.f8707b;
            if (i9 == 0) {
                byte[] data = parsableByteArray.getData();
                int position = parsableByteArray.getPosition();
                int limit = parsableByteArray.limit();
                while (true) {
                    if (position >= limit) {
                        parsableByteArray.setPosition(position);
                        break;
                    }
                    i2 = position + 1;
                    i7 = i12;
                    b7 = data[position];
                    int i14 = b7 & 255;
                    if (this.f8717l != 512 || !isAdtsSyncWord(65280 | (((byte) i14) & 255))) {
                        c7 = c10;
                        r32 = i13;
                    } else {
                        if (this.f8719n) {
                            break;
                        }
                        int i15 = position - 1;
                        parsableByteArray.setPosition(position);
                        byte[] bArr = parsableBitArray.data;
                        if (parsableByteArray.bytesLeft() >= i13) {
                            parsableByteArray.readBytes(bArr, 0, i13);
                            parsableBitArray.setPosition(i11);
                            int readBits = parsableBitArray.readBits(i13);
                            int i16 = this.f8720o;
                            c7 = 65535;
                            if (i16 == -1 || readBits == i16) {
                                if (this.f8721p != -1) {
                                    byte[] bArr2 = parsableBitArray.data;
                                    if (parsableByteArray.bytesLeft() < i13) {
                                        break;
                                    }
                                    parsableByteArray.readBytes(bArr2, 0, i13);
                                    parsableBitArray.setPosition(2);
                                    i8 = 4;
                                    if (parsableBitArray.readBits(4) == this.f8721p) {
                                        parsableByteArray.setPosition(i2);
                                    }
                                } else {
                                    i8 = 4;
                                }
                                byte[] bArr3 = parsableBitArray.data;
                                if (parsableByteArray.bytesLeft() >= i8) {
                                    parsableByteArray.readBytes(bArr3, 0, i8);
                                    parsableBitArray.setPosition(14);
                                    int readBits2 = parsableBitArray.readBits(13);
                                    if (readBits2 >= 7) {
                                        byte[] data2 = parsableByteArray.getData();
                                        int limit2 = parsableByteArray.limit();
                                        int i17 = i15 + readBits2;
                                        if (i17 < limit2) {
                                            byte b8 = data2[i17];
                                            c7 = 65535;
                                            if (b8 == -1) {
                                                break;
                                            } else {
                                                break;
                                            }
                                        }
                                        break;
                                    }
                                } else {
                                    break;
                                }
                            }
                            r32 = true;
                        }
                        c7 = 65535;
                        r32 = true;
                    }
                    int i18 = this.f8717l;
                    int i19 = i14 | i18;
                    if (i19 == 329) {
                        c8 = 256;
                        c9 = 2;
                        i12 = 3;
                        this.f8717l = 768;
                    } else if (i19 == 511) {
                        c8 = 256;
                        c9 = 2;
                        i12 = 3;
                        this.f8717l = 512;
                    } else if (i19 == 836) {
                        c8 = 256;
                        c9 = 2;
                        i12 = 3;
                        this.f8717l = 1024;
                    } else {
                        if (i19 == 1075) {
                            this.f8715j = 2;
                            this.f8716k = 3;
                            this.f8725t = 0;
                            parsableByteArray2.setPosition(0);
                            parsableByteArray.setPosition(i2);
                            break;
                        }
                        c8 = 256;
                        if (i18 != 256) {
                            this.f8717l = 256;
                            c9 = 2;
                            i12 = 3;
                            i13 = r32;
                            c10 = c7;
                            i11 = 4;
                        } else {
                            c9 = 2;
                            i12 = 3;
                        }
                    }
                    position = i2;
                    i13 = r32;
                    c10 = c7;
                    i11 = 4;
                }
                this.f8722q = (b7 & 8) >> 3;
                this.f8718m = (b7 & 1) == 0;
                if (this.f8719n) {
                    this.f8715j = i7;
                    this.f8716k = 0;
                } else {
                    this.f8715j = 1;
                    this.f8716k = 0;
                }
                parsableByteArray.setPosition(i2);
            } else if (i9 != 1) {
                if (i9 == 2) {
                    byte[] data3 = parsableByteArray2.getData();
                    int min = Math.min(parsableByteArray.bytesLeft(), 10 - this.f8716k);
                    parsableByteArray.readBytes(data3, this.f8716k, min);
                    int i20 = this.f8716k + min;
                    this.f8716k = i20;
                    if (i20 == 10) {
                        this.f8714i.sampleData(parsableByteArray2, 10);
                        parsableByteArray2.setPosition(6);
                        r0 r0Var = this.f8714i;
                        int readSynchSafeInt = parsableByteArray2.readSynchSafeInt() + 10;
                        this.f8715j = 4;
                        this.f8716k = 10;
                        this.f8727v = r0Var;
                        this.f8728w = 0L;
                        this.f8725t = readSynchSafeInt;
                    }
                } else if (i9 == 3) {
                    int i21 = this.f8718m ? 7 : 5;
                    byte[] bArr4 = parsableBitArray.data;
                    int min2 = Math.min(parsableByteArray.bytesLeft(), i21 - this.f8716k);
                    parsableByteArray.readBytes(bArr4, this.f8716k, min2);
                    int i22 = this.f8716k + min2;
                    this.f8716k = i22;
                    if (i22 == i21) {
                        parsableBitArray.setPosition(0);
                        if (this.f8723r) {
                            parsableBitArray.skipBits(10);
                        } else {
                            int readBits3 = parsableBitArray.readBits(2) + 1;
                            if (readBits3 != 2) {
                                Log.w("AdtsReader", "Detected audio object type: " + readBits3 + ", but assuming AAC LC.");
                            } else {
                                i10 = readBits3;
                            }
                            parsableBitArray.skipBits(5);
                            byte[] buildAudioSpecificConfig = AbstractC1718b.buildAudioSpecificConfig(i10, this.f8721p, parsableBitArray.readBits(3));
                            C1717a parseAudioSpecificConfig = AbstractC1718b.parseAudioSpecificConfig(buildAudioSpecificConfig);
                            Format build = new Format.Builder().setId(this.f8712g).setContainerMimeType(this.f8711f).setSampleMimeType(MimeTypes.AUDIO_AAC).setCodecs(parseAudioSpecificConfig.f20430c).setChannelCount(parseAudioSpecificConfig.f20429b).setSampleRate(parseAudioSpecificConfig.f20428a).setInitializationData(Collections.singletonList(buildAudioSpecificConfig)).setLanguage(this.f8709d).setRoleFlags(this.f8710e).build();
                            this.f8724s = 1024000000 / build.sampleRate;
                            this.f8713h.format(build);
                            this.f8723r = true;
                        }
                        parsableBitArray.skipBits(4);
                        int readBits4 = parsableBitArray.readBits(13);
                        int i23 = readBits4 - 7;
                        if (this.f8718m) {
                            i23 = readBits4 - 9;
                        }
                        r0 r0Var2 = this.f8713h;
                        long j7 = this.f8724s;
                        this.f8715j = 4;
                        this.f8716k = 0;
                        this.f8727v = r0Var2;
                        this.f8728w = j7;
                        this.f8725t = i23;
                    }
                } else {
                    if (i9 != 4) {
                        throw new IllegalStateException();
                    }
                    int min3 = Math.min(parsableByteArray.bytesLeft(), this.f8725t - this.f8716k);
                    this.f8727v.sampleData(parsableByteArray, min3);
                    int i24 = this.f8716k + min3;
                    this.f8716k = i24;
                    if (i24 == this.f8725t) {
                        P3.v.checkState(this.f8726u != androidx.media3.common.C.TIME_UNSET);
                        this.f8727v.sampleMetadata(this.f8726u, 1, this.f8725t, 0, null);
                        this.f8726u += this.f8728w;
                        this.f8715j = 0;
                        this.f8716k = 0;
                        this.f8717l = 256;
                    }
                }
            } else if (parsableByteArray.bytesLeft() != 0) {
                parsableBitArray.data[0] = parsableByteArray.getData()[parsableByteArray.getPosition()];
                parsableBitArray.setPosition(2);
                int readBits5 = parsableBitArray.readBits(4);
                int i25 = this.f8721p;
                if (i25 == -1 || readBits5 == i25) {
                    if (!this.f8719n) {
                        this.f8719n = true;
                        this.f8720o = this.f8722q;
                        this.f8721p = readBits5;
                    }
                    this.f8715j = 3;
                    this.f8716k = 0;
                } else {
                    this.f8719n = false;
                    this.f8715j = 0;
                    this.f8716k = 0;
                    this.f8717l = 256;
                }
            }
        }
    }

    @Override // c1.InterfaceC0705j
    public void createTracks(v0.F f3, C0692W c0692w) {
        c0692w.generateNewId();
        this.f8712g = c0692w.getFormatId();
        r0 track = f3.track(c0692w.getTrackId(), 1);
        this.f8713h = track;
        this.f8727v = track;
        if (!this.f8706a) {
            this.f8714i = new C1740y();
            return;
        }
        c0692w.generateNewId();
        r0 track2 = f3.track(c0692w.getTrackId(), 5);
        this.f8714i = track2;
        track2.format(new Format.Builder().setId(c0692w.getFormatId()).setContainerMimeType(this.f8711f).setSampleMimeType(MimeTypes.APPLICATION_ID3).build());
    }

    public long getSampleDurationUs() {
        return this.f8724s;
    }

    @Override // c1.InterfaceC0705j
    public void packetStarted(long j7, int i2) {
        this.f8726u = j7;
    }

    @Override // c1.InterfaceC0705j
    public void seek() {
        this.f8726u = androidx.media3.common.C.TIME_UNSET;
        this.f8719n = false;
        this.f8715j = 0;
        this.f8716k = 0;
        this.f8717l = 256;
    }

    public C0701f(boolean z6, String str, int i2, String str2) {
        this.f8707b = new ParsableBitArray(new byte[7]);
        this.f8708c = new ParsableByteArray(Arrays.copyOf(f8705x, 10));
        this.f8720o = -1;
        this.f8721p = -1;
        this.f8724s = androidx.media3.common.C.TIME_UNSET;
        this.f8726u = androidx.media3.common.C.TIME_UNSET;
        this.f8706a = z6;
        this.f8709d = str;
        this.f8710e = i2;
        this.f8711f = str2;
        this.f8715j = 0;
        this.f8716k = 0;
        this.f8717l = 256;
    }

    @Override // c1.InterfaceC0705j
    public void packetFinished(boolean z6) {
    }
}
