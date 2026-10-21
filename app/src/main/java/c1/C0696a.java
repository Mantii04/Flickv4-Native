package c1;

import androidx.media3.common.MimeTypes;
import androidx.media3.common.util.ParsableByteArray;
import java.io.IOException;
import java.util.List;
import v0.AbstractC1716B;
import v0.AbstractC1720d;
import v0.c0;
import v0.f0;

/* renamed from: c1.a, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0696a implements v0.C {

    /* renamed from: a, reason: collision with root package name */
    public final C0697b f8658a = new C0697b(MimeTypes.AUDIO_AC3);

    /* renamed from: b, reason: collision with root package name */
    public final ParsableByteArray f8659b = new ParsableByteArray(2786);

    /* renamed from: c, reason: collision with root package name */
    public boolean f8660c;

    @Override // v0.C
    public final /* synthetic */ List getSniffFailureDetails() {
        return AbstractC1716B.a(this);
    }

    @Override // v0.C
    public final /* synthetic */ v0.C getUnderlyingImplementation() {
        return AbstractC1716B.b(this);
    }

    @Override // v0.C
    public void init(v0.F f3) {
        this.f8658a.createTracks(f3, new C0692W(0, 1));
        f3.endTracks();
        f3.seekMap(new f0(androidx.media3.common.C.TIME_UNSET));
    }

    @Override // v0.C
    public int read(v0.D d7, c0 c0Var) throws IOException {
        ParsableByteArray parsableByteArray = this.f8659b;
        int read = d7.read(parsableByteArray.getData(), 0, 2786);
        if (read == -1) {
            return -1;
        }
        parsableByteArray.setPosition(0);
        parsableByteArray.setLimit(read);
        boolean z6 = this.f8660c;
        C0697b c0697b = this.f8658a;
        if (!z6) {
            c0697b.packetStarted(0L, 4);
            this.f8660c = true;
        }
        c0697b.consume(parsableByteArray);
        return 0;
    }

    @Override // v0.C
    public void seek(long j7, long j8) {
        this.f8660c = false;
        this.f8658a.seek();
    }

    @Override // v0.C
    public boolean sniff(v0.D d7) throws IOException {
        ParsableByteArray parsableByteArray = new ParsableByteArray(10);
        int i2 = 0;
        while (true) {
            d7.peekFully(parsableByteArray.getData(), 0, 10);
            parsableByteArray.setPosition(0);
            if (parsableByteArray.readUnsignedInt24() != 4801587) {
                break;
            }
            parsableByteArray.skipBytes(3);
            int readSynchSafeInt = parsableByteArray.readSynchSafeInt();
            i2 += readSynchSafeInt + 10;
            d7.advancePeekPosition(readSynchSafeInt);
        }
        d7.resetPeekPosition();
        d7.advancePeekPosition(i2);
        int i7 = 0;
        int i8 = i2;
        while (true) {
            d7.peekFully(parsableByteArray.getData(), 0, 6);
            parsableByteArray.setPosition(0);
            if (parsableByteArray.readUnsignedShort() != 2935) {
                d7.resetPeekPosition();
                i8++;
                if (i8 - i2 >= 8192) {
                    return false;
                }
                d7.advancePeekPosition(i8);
                i7 = 0;
            } else {
                i7++;
                if (i7 >= 4) {
                    return true;
                }
                int parseAc3SyncframeSize = AbstractC1720d.parseAc3SyncframeSize(parsableByteArray.getData());
                if (parseAc3SyncframeSize == -1) {
                    return false;
                }
                d7.advancePeekPosition(parseAc3SyncframeSize - 6);
            }
        }
    }

    @Override // v0.C
    public void release() {
    }
}
