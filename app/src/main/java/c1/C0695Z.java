package c1;

import androidx.media3.common.Format;
import androidx.media3.common.MimeTypes;
import androidx.media3.common.util.ParsableByteArray;
import java.util.List;
import s0.C1604B;
import v0.r0;

/* renamed from: c1.Z, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0695Z {

    /* renamed from: a, reason: collision with root package name */
    public final List f8654a;

    /* renamed from: b, reason: collision with root package name */
    public final String f8655b;

    /* renamed from: c, reason: collision with root package name */
    public final r0[] f8656c;

    /* renamed from: d, reason: collision with root package name */
    public final C1604B f8657d;

    public C0695Z(List<Format> list, String str) {
        this.f8654a = list;
        this.f8655b = str;
        this.f8656c = new r0[list.size()];
        C1604B c1604b = new C1604B(new A0.a(this, 22));
        this.f8657d = c1604b;
        c1604b.setMaxSize(3);
    }

    public void consume(long j7, ParsableByteArray parsableByteArray) {
        if (parsableByteArray.bytesLeft() < 9) {
            return;
        }
        int readInt = parsableByteArray.readInt();
        int readInt2 = parsableByteArray.readInt();
        int readUnsignedByte = parsableByteArray.readUnsignedByte();
        if (readInt == 434 && readInt2 == 1195456820 && readUnsignedByte == 3) {
            this.f8657d.add(j7, parsableByteArray);
        }
    }

    public void createTracks(v0.F f3, C0692W c0692w) {
        int i2 = 0;
        while (true) {
            r0[] r0VarArr = this.f8656c;
            if (i2 >= r0VarArr.length) {
                return;
            }
            c0692w.generateNewId();
            r0 track = f3.track(c0692w.getTrackId(), 3);
            Format format = (Format) this.f8654a.get(i2);
            String str = format.sampleMimeType;
            P3.v.checkArgument(MimeTypes.APPLICATION_CEA608.equals(str) || MimeTypes.APPLICATION_CEA708.equals(str), "Invalid closed caption MIME type provided: %s", str);
            track.format(new Format.Builder().setId(c0692w.getFormatId()).setContainerMimeType(this.f8655b).setSampleMimeType(str).setSelectionFlags(format.selectionFlags).setLanguage(format.language).setAccessibilityChannel(format.accessibilityChannel).setInitializationData(format.initializationData).build());
            r0VarArr[i2] = track;
            i2++;
        }
    }
}
