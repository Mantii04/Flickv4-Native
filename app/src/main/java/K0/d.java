package K0;

import androidx.media3.common.Format;
import androidx.media3.common.MediaMetadata;
import androidx.media3.common.Metadata;
import androidx.media3.common.e;

/* loaded from: classes.dex */
public final class d implements Metadata.Entry {

    /* renamed from: a, reason: collision with root package name */
    public final float f1586a;

    /* renamed from: b, reason: collision with root package name */
    public final int f1587b;

    public d(float f3, int i2) {
        this.f1586a = f3;
        this.f1587b = i2;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && d.class == obj.getClass()) {
            d dVar = (d) obj;
            if (this.f1586a == dVar.f1586a && this.f1587b == dVar.f1587b) {
                return true;
            }
        }
        return false;
    }

    @Override // androidx.media3.common.Metadata.Entry
    public final /* synthetic */ byte[] getWrappedMetadataBytes() {
        return e.a(this);
    }

    @Override // androidx.media3.common.Metadata.Entry
    public final /* synthetic */ Format getWrappedMetadataFormat() {
        return e.b(this);
    }

    public int hashCode() {
        return ((U3.d.hashCode(this.f1586a) + 527) * 31) + this.f1587b;
    }

    @Override // androidx.media3.common.Metadata.Entry
    public final /* synthetic */ void populateMediaMetadata(MediaMetadata.Builder builder) {
        e.c(this, builder);
    }

    public String toString() {
        return "smta: captureFrameRate=" + this.f1586a + ", svcTemporalLayerCount=" + this.f1587b;
    }
}
