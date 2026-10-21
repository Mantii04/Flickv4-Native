package Q0;

import P3.v;
import androidx.media3.common.Format;
import androidx.media3.common.MimeTypes;
import androidx.media3.common.ParserException;
import androidx.media3.common.util.ParsableByteArray;
import com.google.common.collect.ImmutableList;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import v0.u0;
import v0.v0;
import v0.w0;
import v0.x0;

/* loaded from: classes.dex */
public final class n extends l {

    /* renamed from: n, reason: collision with root package name */
    public m f2800n;

    /* renamed from: o, reason: collision with root package name */
    public int f2801o;

    /* renamed from: p, reason: collision with root package name */
    public boolean f2802p;

    /* renamed from: q, reason: collision with root package name */
    public w0 f2803q;

    /* renamed from: r, reason: collision with root package name */
    public u0 f2804r;

    public static boolean verifyBitstreamType(ParsableByteArray parsableByteArray) {
        try {
            return x0.verifyVorbisHeaderCapturePattern(1, parsableByteArray, true);
        } catch (ParserException unused) {
            return false;
        }
    }

    @Override // Q0.l
    public void onSeekEnd(long j7) {
        super.onSeekEnd(j7);
        this.f2802p = j7 != 0;
        w0 w0Var = this.f2803q;
        this.f2801o = w0Var != null ? w0Var.f20558e : 0;
    }

    @Override // Q0.l
    public long preparePayload(ParsableByteArray parsableByteArray) {
        if ((parsableByteArray.getData()[0] & 1) == 1) {
            return -1L;
        }
        byte b7 = parsableByteArray.getData()[0];
        m mVar = (m) v.checkNotNull(this.f2800n);
        boolean z6 = mVar.f2798d[(b7 >> 1) & (255 >>> (8 - mVar.f2799e))].f20551a;
        w0 w0Var = mVar.f2795a;
        int i2 = !z6 ? w0Var.f20558e : w0Var.f20559f;
        long j7 = this.f2802p ? (this.f2801o + i2) / 4 : 0;
        if (parsableByteArray.capacity() < parsableByteArray.limit() + 4) {
            parsableByteArray.reset(Arrays.copyOf(parsableByteArray.getData(), parsableByteArray.limit() + 4));
        } else {
            parsableByteArray.setLimit(parsableByteArray.limit() + 4);
        }
        byte[] data = parsableByteArray.getData();
        data[parsableByteArray.limit() - 4] = (byte) (j7 & 255);
        data[parsableByteArray.limit() - 3] = (byte) ((j7 >>> 8) & 255);
        data[parsableByteArray.limit() - 2] = (byte) ((j7 >>> 16) & 255);
        data[parsableByteArray.limit() - 1] = (byte) ((j7 >>> 24) & 255);
        this.f2802p = true;
        this.f2801o = i2;
        return j7;
    }

    @Override // Q0.l
    public boolean readHeaders(ParsableByteArray parsableByteArray, long j7, j jVar) throws IOException {
        if (this.f2800n != null) {
            v.checkNotNull(jVar.f2780a);
            return false;
        }
        w0 w0Var = this.f2803q;
        m mVar = null;
        if (w0Var == null) {
            this.f2803q = x0.readVorbisIdentificationHeader(parsableByteArray);
        } else {
            u0 u0Var = this.f2804r;
            if (u0Var == null) {
                this.f2804r = x0.readVorbisCommentHeader(parsableByteArray);
            } else {
                byte[] bArr = new byte[parsableByteArray.limit()];
                System.arraycopy(parsableByteArray.getData(), 0, bArr, 0, parsableByteArray.limit());
                v0[] readVorbisModes = x0.readVorbisModes(parsableByteArray, w0Var.f20554a);
                mVar = new m(w0Var, u0Var, bArr, readVorbisModes, x0.iLog(readVorbisModes.length - 1));
            }
        }
        this.f2800n = mVar;
        if (mVar == null) {
            return true;
        }
        w0 w0Var2 = mVar.f2795a;
        ArrayList arrayList = new ArrayList();
        arrayList.add(w0Var2.f20560g);
        arrayList.add(mVar.f2797c);
        jVar.f2780a = new Format.Builder().setContainerMimeType(MimeTypes.AUDIO_OGG).setSampleMimeType(MimeTypes.AUDIO_VORBIS).setAverageBitrate(w0Var2.f20557d).setPeakBitrate(w0Var2.f20556c).setChannelCount(w0Var2.f20554a).setSampleRate(w0Var2.f20555b).setInitializationData(arrayList).setMetadata(x0.parseVorbisComments(ImmutableList.copyOf(mVar.f2796b.f20550a))).build();
        return true;
    }

    @Override // Q0.l
    public void reset(boolean z6) {
        super.reset(z6);
        if (z6) {
            this.f2800n = null;
            this.f2803q = null;
            this.f2804r = null;
        }
        this.f2801o = 0;
        this.f2802p = false;
    }
}
