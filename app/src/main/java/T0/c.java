package T0;

import P3.v;
import S0.m;
import S0.n;
import androidx.media3.common.C;
import androidx.media3.common.MimeTypes;
import androidx.media3.common.text.Cue;
import androidx.media3.common.util.Log;
import androidx.media3.common.util.ParsableByteArray;
import androidx.media3.extractor.text.SubtitleDecoderException;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.measurement.dynamite.ModuleDescriptor;
import cz.msebera.android.httpclient.HttpStatus;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import okhttp3.internal.ws.WebSocketProtocol;

/* loaded from: classes.dex */
public final class c extends j {

    /* renamed from: i, reason: collision with root package name */
    public final int f3448i;

    /* renamed from: j, reason: collision with root package name */
    public final int f3449j;

    /* renamed from: k, reason: collision with root package name */
    public final int f3450k;

    /* renamed from: l, reason: collision with root package name */
    public final long f3451l;

    /* renamed from: o, reason: collision with root package name */
    public List f3454o;

    /* renamed from: p, reason: collision with root package name */
    public List f3455p;

    /* renamed from: q, reason: collision with root package name */
    public int f3456q;

    /* renamed from: r, reason: collision with root package name */
    public int f3457r;

    /* renamed from: s, reason: collision with root package name */
    public boolean f3458s;

    /* renamed from: t, reason: collision with root package name */
    public boolean f3459t;

    /* renamed from: u, reason: collision with root package name */
    public byte f3460u;

    /* renamed from: v, reason: collision with root package name */
    public byte f3461v;

    /* renamed from: x, reason: collision with root package name */
    public boolean f3463x;

    /* renamed from: y, reason: collision with root package name */
    public long f3464y;

    /* renamed from: z, reason: collision with root package name */
    public static final int[] f3446z = {11, 1, 3, 12, 14, 5, 7, 9};

    /* renamed from: A, reason: collision with root package name */
    public static final int[] f3439A = {0, 4, 8, 12, 16, 20, 24, 28};

    /* renamed from: B, reason: collision with root package name */
    public static final int[] f3440B = {-1, -16711936, -16776961, -16711681, -65536, -256, -65281};

    /* renamed from: C, reason: collision with root package name */
    public static final int[] f3441C = {32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 225, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 233, 93, 237, 243, 250, 97, 98, 99, 100, 101, HttpStatus.SC_PROCESSING, 103, 104, ModuleDescriptor.MODULE_VERSION, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 231, 247, 209, 241, 9632};

    /* renamed from: D, reason: collision with root package name */
    public static final int[] f3442D = {174, 176, 189, 191, 8482, 162, 163, 9834, 224, 32, 232, 226, 234, 238, 244, 251};

    /* renamed from: E, reason: collision with root package name */
    public static final int[] f3443E = {193, HttpStatus.SC_CREATED, 211, 218, 220, 252, 8216, 161, 42, 39, 8212, 169, 8480, 8226, 8220, 8221, 192, 194, 199, HttpStatus.SC_OK, HttpStatus.SC_ACCEPTED, HttpStatus.SC_NON_AUTHORITATIVE_INFORMATION, 235, HttpStatus.SC_PARTIAL_CONTENT, HttpStatus.SC_MULTI_STATUS, 239, 212, 217, 249, 219, 171, 187};

    /* renamed from: F, reason: collision with root package name */
    public static final int[] f3444F = {195, 227, HttpStatus.SC_RESET_CONTENT, HttpStatus.SC_NO_CONTENT, 236, 210, 242, 213, 245, 123, 125, 92, 94, 95, 124, WebSocketProtocol.PAYLOAD_SHORT, 196, 228, 214, 246, 223, 165, 164, 9474, 197, 229, 216, 248, 9484, 9488, 9492, 9496};

    /* renamed from: G, reason: collision with root package name */
    public static final boolean[] f3445G = {false, true, true, false, true, false, false, true, true, false, false, true, false, true, true, false, true, false, false, true, false, true, true, false, false, true, true, false, true, false, false, true, true, false, false, true, false, true, true, false, false, true, true, false, true, false, false, true, false, true, true, false, true, false, false, true, true, false, false, true, false, true, true, false, true, false, false, true, false, true, true, false, false, true, true, false, true, false, false, true, false, true, true, false, true, false, false, true, true, false, false, true, false, true, true, false, false, true, true, false, true, false, false, true, true, false, false, true, false, true, true, false, true, false, false, true, false, true, true, false, false, true, true, false, true, false, false, true, true, false, false, true, false, true, true, false, false, true, true, false, true, false, false, true, false, true, true, false, true, false, false, true, true, false, false, true, false, true, true, false, false, true, true, false, true, false, false, true, true, false, false, true, false, true, true, false, true, false, false, true, false, true, true, false, false, true, true, false, true, false, false, true, false, true, true, false, true, false, false, true, true, false, false, true, false, true, true, false, true, false, false, true, false, true, true, false, false, true, true, false, true, false, false, true, true, false, false, true, false, true, true, false, false, true, true, false, true, false, false, true, false, true, true, false, true, false, false, true, true, false, false, true, false, true, true, false};

    /* renamed from: h, reason: collision with root package name */
    public final ParsableByteArray f3447h = new ParsableByteArray();

    /* renamed from: m, reason: collision with root package name */
    public final ArrayList f3452m = new ArrayList();

    /* renamed from: n, reason: collision with root package name */
    public b f3453n = new b(0, 4);

    /* renamed from: w, reason: collision with root package name */
    public int f3462w = 0;

    public c(String str, int i2, long j7) {
        if (j7 != C.TIME_UNSET) {
            v.checkArgument(j7 >= 16000);
            this.f3451l = j7 * 1000;
        } else {
            this.f3451l = C.TIME_UNSET;
        }
        this.f3448i = MimeTypes.APPLICATION_MP4CEA608.equals(str) ? 2 : 3;
        if (i2 == 1) {
            this.f3450k = 0;
            this.f3449j = 0;
        } else if (i2 == 2) {
            this.f3450k = 1;
            this.f3449j = 0;
        } else if (i2 == 3) {
            this.f3450k = 0;
            this.f3449j = 1;
        } else if (i2 != 4) {
            Log.w("Cea608Decoder", "Invalid channel. Defaulting to CC1.");
            this.f3450k = 0;
            this.f3449j = 0;
        } else {
            this.f3450k = 1;
            this.f3449j = 1;
        }
        c(0);
        b();
        this.f3463x = true;
        this.f3464y = C.TIME_UNSET;
    }

    public final ArrayList a() {
        ArrayList arrayList = this.f3452m;
        int size = arrayList.size();
        ArrayList arrayList2 = new ArrayList(size);
        int i2 = 2;
        for (int i7 = 0; i7 < size; i7++) {
            Cue build = ((b) arrayList.get(i7)).build(Integer.MIN_VALUE);
            arrayList2.add(build);
            if (build != null) {
                i2 = Math.min(i2, build.positionAnchor);
            }
        }
        ArrayList arrayList3 = new ArrayList(size);
        for (int i8 = 0; i8 < size; i8++) {
            Cue cue = (Cue) arrayList2.get(i8);
            if (cue != null) {
                if (cue.positionAnchor != i2) {
                    cue = (Cue) v.checkNotNull(((b) arrayList.get(i8)).build(i2));
                }
                arrayList3.add(cue);
            }
        }
        return arrayList3;
    }

    public final void b() {
        this.f3453n.reset(this.f3456q);
        ArrayList arrayList = this.f3452m;
        arrayList.clear();
        arrayList.add(this.f3453n);
    }

    public final void c(int i2) {
        int i7 = this.f3456q;
        if (i7 == i2) {
            return;
        }
        this.f3456q = i2;
        if (i2 != 3) {
            b();
            if (i7 == 3 || i2 == 1 || i2 == 0) {
                this.f3454o = Collections.EMPTY_LIST;
                return;
            }
            return;
        }
        int i8 = 0;
        while (true) {
            ArrayList arrayList = this.f3452m;
            if (i8 >= arrayList.size()) {
                return;
            }
            ((b) arrayList.get(i8)).setCaptionMode(i2);
            i8++;
        }
    }

    @Override // T0.j
    public S0.i createSubtitle() {
        List list = this.f3454o;
        this.f3455p = list;
        return new k((List) v.checkNotNull(list));
    }

    /* JADX WARN: Removed duplicated region for block: B:156:0x0081 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:37:0x0088 A[SYNTHETIC] */
    @Override // T0.j
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void decode(S0.m r15) {
        /*
            Method dump skipped, instructions count: 628
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: T0.c.decode(S0.m):void");
    }

    @Override // T0.j, u0.InterfaceC1664e
    public /* bridge */ /* synthetic */ m dequeueInputBuffer() throws SubtitleDecoderException {
        return super.dequeueInputBuffer();
    }

    @Override // T0.j, u0.InterfaceC1664e
    public void flush() {
        super.flush();
        this.f3454o = null;
        this.f3455p = null;
        c(0);
        this.f3457r = 4;
        this.f3453n.setCaptionRowCount(4);
        b();
        this.f3458s = false;
        this.f3459t = false;
        this.f3460u = (byte) 0;
        this.f3461v = (byte) 0;
        this.f3462w = 0;
        this.f3463x = true;
        this.f3464y = C.TIME_UNSET;
    }

    @Override // u0.InterfaceC1664e
    public String getName() {
        return "Cea608Decoder";
    }

    @Override // T0.j
    public boolean isNewSubtitleDataAvailable() {
        return this.f3454o != this.f3455p;
    }

    @Override // T0.j
    public /* bridge */ /* synthetic */ void queueInputBuffer(m mVar) throws SubtitleDecoderException {
        super.queueInputBuffer(mVar);
    }

    @Override // T0.j, S0.j
    public /* bridge */ /* synthetic */ void setPositionUs(long j7) {
        super.setPositionUs(j7);
    }

    @Override // T0.j, u0.InterfaceC1664e
    public n dequeueOutputBuffer() throws SubtitleDecoderException {
        n availableOutputBuffer;
        n dequeueOutputBuffer = super.dequeueOutputBuffer();
        if (dequeueOutputBuffer != null) {
            return dequeueOutputBuffer;
        }
        long j7 = this.f3451l;
        if (j7 == C.TIME_UNSET || this.f3464y == C.TIME_UNSET || getPositionUs() - this.f3464y < j7 || (availableOutputBuffer = getAvailableOutputBuffer()) == null) {
            return null;
        }
        this.f3454o = Collections.EMPTY_LIST;
        this.f3464y = C.TIME_UNSET;
        availableOutputBuffer.setContent(getPositionUs(), createSubtitle(), Long.MAX_VALUE);
        return availableOutputBuffer;
    }

    @Override // T0.j, u0.InterfaceC1664e
    public void release() {
    }
}
