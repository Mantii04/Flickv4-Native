package c1;

import androidx.media3.common.Format;
import androidx.media3.common.util.ParsableByteArray;
import androidx.media3.common.util.TimestampAdjuster;
import androidx.media3.common.util.Util;
import v0.r0;

/* renamed from: c1.C, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0673C implements InterfaceC0680J {

    /* renamed from: a, reason: collision with root package name */
    public Format f8548a;

    /* renamed from: b, reason: collision with root package name */
    public TimestampAdjuster f8549b;

    /* renamed from: c, reason: collision with root package name */
    public r0 f8550c;

    public C0673C(String str, String str2) {
        this.f8548a = new Format.Builder().setContainerMimeType(str2).setSampleMimeType(str).build();
    }

    @Override // c1.InterfaceC0680J
    public void consume(ParsableByteArray parsableByteArray) {
        P3.v.checkNotNull(this.f8549b);
        Util.castNonNull(this.f8550c);
        long lastAdjustedTimestampUs = this.f8549b.getLastAdjustedTimestampUs();
        long timestampOffsetUs = this.f8549b.getTimestampOffsetUs();
        if (lastAdjustedTimestampUs == androidx.media3.common.C.TIME_UNSET || timestampOffsetUs == androidx.media3.common.C.TIME_UNSET) {
            return;
        }
        Format format = this.f8548a;
        if (timestampOffsetUs != format.subsampleOffsetUs) {
            Format build = format.buildUpon().setSubsampleOffsetUs(timestampOffsetUs).build();
            this.f8548a = build;
            this.f8550c.format(build);
        }
        int bytesLeft = parsableByteArray.bytesLeft();
        this.f8550c.sampleData(parsableByteArray, bytesLeft);
        this.f8550c.sampleMetadata(lastAdjustedTimestampUs, 1, bytesLeft, 0, null);
    }

    @Override // c1.InterfaceC0680J
    public void init(TimestampAdjuster timestampAdjuster, v0.F f3, C0692W c0692w) {
        this.f8549b = timestampAdjuster;
        c0692w.generateNewId();
        r0 track = f3.track(c0692w.getTrackId(), 5);
        this.f8550c = track;
        track.format(this.f8548a);
    }
}
