package s0;

import androidx.media3.common.Format;
import androidx.media3.common.MediaMetadata;
import androidx.media3.common.Metadata;

/* renamed from: s0.c, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C1607c implements Metadata.Entry {

    /* renamed from: a, reason: collision with root package name */
    public final int f19908a;

    public C1607c(int i2) {
        this.f19908a = i2;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof C1607c) && this.f19908a == ((C1607c) obj).f19908a;
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
        return this.f19908a;
    }

    @Override // androidx.media3.common.Metadata.Entry
    public final /* synthetic */ void populateMediaMetadata(MediaMetadata.Builder builder) {
        androidx.media3.common.e.c(this, builder);
    }

    public String toString() {
        return "Mp4AlternateGroup: " + this.f19908a;
    }
}
