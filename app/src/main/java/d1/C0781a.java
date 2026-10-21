package d1;

import androidx.media3.common.Format;
import androidx.media3.common.MimeTypes;
import androidx.media3.common.ParserException;
import androidx.media3.common.util.ParsableByteArray;
import androidx.media3.common.util.Util;
import cz.msebera.android.httpclient.HttpStatus;
import v0.F;
import v0.r0;

/* renamed from: d1.a, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0781a implements InterfaceC0782b {

    /* renamed from: m, reason: collision with root package name */
    public static final int[] f13488m = {-1, -1, -1, -1, 2, 4, 6, 8, -1, -1, -1, -1, 2, 4, 6, 8};

    /* renamed from: n, reason: collision with root package name */
    public static final int[] f13489n = {7, 8, 9, 10, 11, 12, 13, 14, 16, 17, 19, 21, 23, 25, 28, 31, 34, 37, 41, 45, 50, 55, 60, 66, 73, 80, 88, 97, 107, 118, 130, 143, 157, 173, 190, 209, 230, 253, 279, 307, 337, 371, HttpStatus.SC_REQUEST_TIMEOUT, 449, 494, 544, 598, 658, 724, 796, 876, 963, 1060, 1166, 1282, 1411, 1552, 1707, 1878, 2066, 2272, 2499, 2749, 3024, 3327, 3660, 4026, 4428, 4871, 5358, 5894, 6484, 7132, 7845, 8630, 9493, 10442, 11487, 12635, 13899, 15289, 16818, 18500, 20350, 22385, 24623, 27086, 29794, 32767};

    /* renamed from: a, reason: collision with root package name */
    public final F f13490a;

    /* renamed from: b, reason: collision with root package name */
    public final r0 f13491b;

    /* renamed from: c, reason: collision with root package name */
    public final e f13492c;

    /* renamed from: d, reason: collision with root package name */
    public final int f13493d;

    /* renamed from: e, reason: collision with root package name */
    public final byte[] f13494e;

    /* renamed from: f, reason: collision with root package name */
    public final ParsableByteArray f13495f;

    /* renamed from: g, reason: collision with root package name */
    public final int f13496g;

    /* renamed from: h, reason: collision with root package name */
    public final Format f13497h;

    /* renamed from: i, reason: collision with root package name */
    public int f13498i;

    /* renamed from: j, reason: collision with root package name */
    public long f13499j;

    /* renamed from: k, reason: collision with root package name */
    public int f13500k;

    /* renamed from: l, reason: collision with root package name */
    public long f13501l;

    public C0781a(F f3, r0 r0Var, e eVar) throws ParserException {
        this.f13490a = f3;
        this.f13491b = r0Var;
        this.f13492c = eVar;
        int max = Math.max(1, eVar.f13519c / 10);
        this.f13496g = max;
        ParsableByteArray parsableByteArray = new ParsableByteArray(eVar.f13522f);
        parsableByteArray.readLittleEndianUnsignedShort();
        int readLittleEndianUnsignedShort = parsableByteArray.readLittleEndianUnsignedShort();
        this.f13493d = readLittleEndianUnsignedShort;
        int i2 = eVar.f13518b;
        int i7 = eVar.f13520d;
        int i8 = (((i7 - (i2 * 4)) * 8) / (eVar.f13521e * i2)) + 1;
        if (readLittleEndianUnsignedShort != i8) {
            throw ParserException.createForMalformedContainer("Expected frames per block: " + i8 + "; got: " + readLittleEndianUnsignedShort, null);
        }
        int ceilDivide = Util.ceilDivide(max, readLittleEndianUnsignedShort);
        this.f13494e = new byte[ceilDivide * i7];
        this.f13495f = new ParsableByteArray(readLittleEndianUnsignedShort * 2 * i2 * ceilDivide);
        int i9 = eVar.f13519c;
        int i10 = ((i7 * i9) * 8) / readLittleEndianUnsignedShort;
        this.f13497h = new Format.Builder().setSampleMimeType(MimeTypes.AUDIO_RAW).setAverageBitrate(i10).setPeakBitrate(i10).setMaxInputSize(max * 2 * i2).setChannelCount(i2).setSampleRate(i9).setPcmEncoding(2).build();
    }

    public final void a(int i2) {
        long j7 = this.f13499j;
        long j8 = this.f13501l;
        e eVar = this.f13492c;
        long scaleLargeTimestamp = j7 + Util.scaleLargeTimestamp(j8, 1000000L, eVar.f13519c);
        int i7 = i2 * 2 * eVar.f13518b;
        this.f13491b.sampleMetadata(scaleLargeTimestamp, 1, i7, this.f13500k - i7, null);
        this.f13501l += i2;
        this.f13500k -= i7;
    }

    @Override // d1.InterfaceC0782b
    public void init(int i2, long j7) {
        h hVar = new h(this.f13492c, this.f13493d, i2, j7);
        this.f13490a.seekMap(hVar);
        Format format = this.f13497h;
        r0 r0Var = this.f13491b;
        r0Var.format(format);
        r0Var.durationUs(hVar.getDurationUs());
    }

    @Override // d1.InterfaceC0782b
    public void reset(long j7) {
        this.f13498i = 0;
        this.f13499j = j7;
        this.f13500k = 0;
        this.f13501l = 0L;
    }

    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions count limit reached
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        */
    /* JADX WARN: Removed duplicated region for block: B:49:0x0045 A[ADDED_TO_REGION, EDGE_INSN: B:49:0x0045->B:14:0x0045 BREAK  A[LOOP:0: B:5:0x0023->B:11:0x003f], SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0027  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:9:0x003c -> B:3:0x0020). Please report as a decompilation issue!!! */
    @Override // d1.InterfaceC0782b
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean sampleData(v0.D r25, long r26) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 335
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: d1.C0781a.sampleData(v0.D, long):boolean");
    }
}
