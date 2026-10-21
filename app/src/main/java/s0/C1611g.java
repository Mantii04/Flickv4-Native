package s0;

import androidx.media3.common.Format;
import androidx.media3.common.MediaMetadata;
import androidx.media3.common.Metadata;

/* renamed from: s0.g, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C1611g implements Metadata.Entry {

    /* renamed from: a, reason: collision with root package name */
    public final float f19914a;

    /* renamed from: b, reason: collision with root package name */
    public final float f19915b;

    public C1611g(float f3, float f7) {
        P3.v.checkArgument(f3 >= -90.0f && f3 <= 90.0f && f7 >= -180.0f && f7 <= 180.0f, "Invalid latitude or longitude");
        this.f19914a = f3;
        this.f19915b = f7;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && C1611g.class == obj.getClass()) {
            C1611g c1611g = (C1611g) obj;
            if (this.f19914a == c1611g.f19914a && this.f19915b == c1611g.f19915b) {
                return true;
            }
        }
        return false;
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
        return U3.d.hashCode(this.f19915b) + ((U3.d.hashCode(this.f19914a) + 527) * 31);
    }

    @Override // androidx.media3.common.Metadata.Entry
    public final /* synthetic */ void populateMediaMetadata(MediaMetadata.Builder builder) {
        androidx.media3.common.e.c(this, builder);
    }

    public String toString() {
        return "xyz: latitude=" + this.f19914a + ", longitude=" + this.f19915b;
    }
}
