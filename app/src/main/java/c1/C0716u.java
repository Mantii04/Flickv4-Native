package c1;

import androidx.media3.common.Format;
import androidx.media3.common.MimeTypes;
import androidx.media3.common.util.Log;
import androidx.media3.common.util.ParsableByteArray;
import v0.r0;

/* renamed from: c1.u, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0716u implements InterfaceC0705j {

    /* renamed from: a, reason: collision with root package name */
    public final String f8883a;

    /* renamed from: c, reason: collision with root package name */
    public r0 f8885c;

    /* renamed from: d, reason: collision with root package name */
    public boolean f8886d;

    /* renamed from: f, reason: collision with root package name */
    public int f8888f;

    /* renamed from: g, reason: collision with root package name */
    public int f8889g;

    /* renamed from: b, reason: collision with root package name */
    public final ParsableByteArray f8884b = new ParsableByteArray(10);

    /* renamed from: e, reason: collision with root package name */
    public long f8887e = androidx.media3.common.C.TIME_UNSET;

    public C0716u(String str) {
        this.f8883a = str;
    }

    @Override // c1.InterfaceC0705j
    public void consume(ParsableByteArray parsableByteArray) {
        P3.v.checkNotNull(this.f8885c);
        if (this.f8886d) {
            int bytesLeft = parsableByteArray.bytesLeft();
            int i2 = this.f8889g;
            if (i2 < 10) {
                int min = Math.min(bytesLeft, 10 - i2);
                byte[] data = parsableByteArray.getData();
                int position = parsableByteArray.getPosition();
                ParsableByteArray parsableByteArray2 = this.f8884b;
                System.arraycopy(data, position, parsableByteArray2.getData(), this.f8889g, min);
                if (this.f8889g + min == 10) {
                    parsableByteArray2.setPosition(0);
                    if (73 != parsableByteArray2.readUnsignedByte() || 68 != parsableByteArray2.readUnsignedByte() || 51 != parsableByteArray2.readUnsignedByte()) {
                        Log.w("Id3Reader", "Discarding invalid ID3 tag");
                        this.f8886d = false;
                        return;
                    } else {
                        parsableByteArray2.skipBytes(3);
                        this.f8888f = parsableByteArray2.readSynchSafeInt() + 10;
                    }
                }
            }
            int min2 = Math.min(bytesLeft, this.f8888f - this.f8889g);
            this.f8885c.sampleData(parsableByteArray, min2);
            this.f8889g += min2;
        }
    }

    @Override // c1.InterfaceC0705j
    public void createTracks(v0.F f3, C0692W c0692w) {
        c0692w.generateNewId();
        r0 track = f3.track(c0692w.getTrackId(), 5);
        this.f8885c = track;
        track.format(new Format.Builder().setId(c0692w.getFormatId()).setContainerMimeType(this.f8883a).setSampleMimeType(MimeTypes.APPLICATION_ID3).build());
    }

    @Override // c1.InterfaceC0705j
    public void packetFinished(boolean z6) {
        int i2;
        P3.v.checkNotNull(this.f8885c);
        if (this.f8886d && (i2 = this.f8888f) != 0 && this.f8889g == i2) {
            P3.v.checkState(this.f8887e != androidx.media3.common.C.TIME_UNSET);
            this.f8885c.sampleMetadata(this.f8887e, 1, this.f8888f, 0, null);
            this.f8886d = false;
        }
    }

    @Override // c1.InterfaceC0705j
    public void packetStarted(long j7, int i2) {
        if ((i2 & 4) == 0) {
            return;
        }
        this.f8886d = true;
        this.f8887e = j7;
        this.f8888f = 0;
        this.f8889g = 0;
    }

    @Override // c1.InterfaceC0705j
    public void seek() {
        this.f8886d = false;
        this.f8887e = androidx.media3.common.C.TIME_UNSET;
    }
}
