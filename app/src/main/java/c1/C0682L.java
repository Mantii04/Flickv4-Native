package c1;

import androidx.media3.common.Format;
import androidx.media3.common.MimeTypes;
import androidx.media3.common.util.ParsableByteArray;
import java.util.List;
import s0.C1604B;
import v0.r0;

/* renamed from: c1.L, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0682L {

    /* renamed from: a, reason: collision with root package name */
    public final List f8597a;

    /* renamed from: b, reason: collision with root package name */
    public final String f8598b;

    /* renamed from: c, reason: collision with root package name */
    public final r0[] f8599c;

    /* renamed from: d, reason: collision with root package name */
    public final C1604B f8600d = new C1604B(new A0.a(this, 21));

    public C0682L(List<Format> list, String str) {
        this.f8597a = list;
        this.f8598b = str;
        this.f8599c = new r0[list.size()];
    }

    public void clear() {
        this.f8600d.flush();
    }

    public void consume(long j7, ParsableByteArray parsableByteArray) {
        this.f8600d.add(j7, parsableByteArray);
    }

    public void createTracks(v0.F f3, C0692W c0692w) {
        int i2 = 0;
        while (true) {
            r0[] r0VarArr = this.f8599c;
            if (i2 >= r0VarArr.length) {
                return;
            }
            c0692w.generateNewId();
            r0 track = f3.track(c0692w.getTrackId(), 3);
            Format format = (Format) this.f8597a.get(i2);
            String str = format.sampleMimeType;
            P3.v.checkArgument(MimeTypes.APPLICATION_CEA608.equals(str) || MimeTypes.APPLICATION_CEA708.equals(str), "Invalid closed caption MIME type provided: %s", str);
            String str2 = format.id;
            if (str2 == null) {
                str2 = c0692w.getFormatId();
            }
            track.format(new Format.Builder().setId(str2).setContainerMimeType(this.f8598b).setSampleMimeType(str).setSelectionFlags(format.selectionFlags).setLanguage(format.language).setAccessibilityChannel(format.accessibilityChannel).setInitializationData(format.initializationData).build());
            r0VarArr[i2] = track;
            i2++;
        }
    }

    public void flush() {
        this.f8600d.flush();
    }

    public void setReorderingQueueSize(int i2) {
        this.f8600d.setMaxSize(i2);
    }
}
