package O0;

import androidx.media3.common.Format;
import androidx.media3.common.MediaMetadata;
import androidx.media3.common.Metadata;
import java.util.Objects;

/* loaded from: classes.dex */
public final class g implements Metadata.Entry {

    /* renamed from: a, reason: collision with root package name */
    public final float f2376a;

    /* renamed from: b, reason: collision with root package name */
    public final f f2377b;

    /* renamed from: c, reason: collision with root package name */
    public final f f2378c;

    public g(float f3, f fVar, f fVar2) {
        this.f2376a = f3;
        this.f2377b = fVar;
        this.f2378c = fVar2;
    }

    public static g parse(float f3, int i2, int i7) {
        f a7 = f.a(i2);
        f a8 = f.a(i7);
        if (f3 <= 0.0f && a7 == null && a8 == null) {
            return null;
        }
        return new g(f3, a7, a8);
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof g)) {
            return false;
        }
        g gVar = (g) obj;
        return Float.compare(this.f2376a, gVar.f2376a) == 0 && Objects.equals(this.f2377b, gVar.f2377b) && Objects.equals(this.f2378c, gVar.f2378c);
    }

    @Override // androidx.media3.common.Metadata.Entry
    public final /* synthetic */ byte[] getWrappedMetadataBytes() {
        return androidx.media3.common.e.a(this);
    }

    @Override // androidx.media3.common.Metadata.Entry
    public final /* synthetic */ Format getWrappedMetadataFormat() {
        return androidx.media3.common.e.b(this);
    }

    public int hashCode() {
        int floatToIntBits = Float.floatToIntBits(this.f2376a) * 31;
        f fVar = this.f2377b;
        int hashCode = (floatToIntBits + (fVar != null ? fVar.hashCode() : 0)) * 31;
        f fVar2 = this.f2378c;
        return hashCode + (fVar2 != null ? fVar2.hashCode() : 0);
    }

    @Override // androidx.media3.common.Metadata.Entry
    public final /* synthetic */ void populateMediaMetadata(MediaMetadata.Builder builder) {
        androidx.media3.common.e.c(this, builder);
    }

    public String toString() {
        return "ReplayGain Xing/Info: peak=" + this.f2376a + ", field 1=" + this.f2377b + ", field 2=" + this.f2378c;
    }
}
