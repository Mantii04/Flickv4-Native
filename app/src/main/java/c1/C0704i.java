package c1;

import androidx.media3.common.Format;
import androidx.media3.common.MimeTypes;
import androidx.media3.common.util.ParsableByteArray;
import java.util.Collections;
import java.util.List;
import v0.r0;

/* renamed from: c1.i, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0704i implements InterfaceC0705j {

    /* renamed from: a, reason: collision with root package name */
    public final List f8748a;

    /* renamed from: b, reason: collision with root package name */
    public final String f8749b;

    /* renamed from: c, reason: collision with root package name */
    public final r0[] f8750c;

    /* renamed from: d, reason: collision with root package name */
    public boolean f8751d;

    /* renamed from: e, reason: collision with root package name */
    public int f8752e;

    /* renamed from: f, reason: collision with root package name */
    public int f8753f;

    /* renamed from: g, reason: collision with root package name */
    public long f8754g = androidx.media3.common.C.TIME_UNSET;

    public C0704i(List<C0689T> list, String str) {
        this.f8748a = list;
        this.f8749b = str;
        this.f8750c = new r0[list.size()];
    }

    @Override // c1.InterfaceC0705j
    public void consume(ParsableByteArray parsableByteArray) {
        boolean z6;
        boolean z7;
        if (this.f8751d) {
            if (this.f8752e == 2) {
                if (parsableByteArray.bytesLeft() == 0) {
                    z7 = false;
                } else {
                    if (parsableByteArray.readUnsignedByte() != 32) {
                        this.f8751d = false;
                    }
                    this.f8752e--;
                    z7 = this.f8751d;
                }
                if (!z7) {
                    return;
                }
            }
            if (this.f8752e == 1) {
                if (parsableByteArray.bytesLeft() == 0) {
                    z6 = false;
                } else {
                    if (parsableByteArray.readUnsignedByte() != 0) {
                        this.f8751d = false;
                    }
                    this.f8752e--;
                    z6 = this.f8751d;
                }
                if (!z6) {
                    return;
                }
            }
            int position = parsableByteArray.getPosition();
            int bytesLeft = parsableByteArray.bytesLeft();
            for (r0 r0Var : this.f8750c) {
                parsableByteArray.setPosition(position);
                r0Var.sampleData(parsableByteArray, bytesLeft);
            }
            this.f8753f += bytesLeft;
        }
    }

    @Override // c1.InterfaceC0705j
    public void createTracks(v0.F f3, C0692W c0692w) {
        int i2 = 0;
        while (true) {
            r0[] r0VarArr = this.f8750c;
            if (i2 >= r0VarArr.length) {
                return;
            }
            C0689T c0689t = (C0689T) this.f8748a.get(i2);
            c0692w.generateNewId();
            r0 track = f3.track(c0692w.getTrackId(), 3);
            track.format(new Format.Builder().setId(c0692w.getFormatId()).setContainerMimeType(this.f8749b).setSampleMimeType(MimeTypes.APPLICATION_DVBSUBS).setInitializationData(Collections.singletonList(c0689t.f8643b)).setLanguage(c0689t.f8642a).build());
            r0VarArr[i2] = track;
            i2++;
        }
    }

    @Override // c1.InterfaceC0705j
    public void packetFinished(boolean z6) {
        if (this.f8751d) {
            P3.v.checkState(this.f8754g != androidx.media3.common.C.TIME_UNSET);
            for (r0 r0Var : this.f8750c) {
                r0Var.sampleMetadata(this.f8754g, 1, this.f8753f, 0, null);
            }
            this.f8751d = false;
        }
    }

    @Override // c1.InterfaceC0705j
    public void packetStarted(long j7, int i2) {
        if ((i2 & 4) == 0) {
            return;
        }
        this.f8751d = true;
        this.f8754g = j7;
        this.f8753f = 0;
        this.f8752e = 2;
    }

    @Override // c1.InterfaceC0705j
    public void seek() {
        this.f8751d = false;
        this.f8754g = androidx.media3.common.C.TIME_UNSET;
    }
}
