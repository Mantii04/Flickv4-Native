package s0;

import androidx.media3.common.Format;
import androidx.media3.common.MediaMetadata;
import androidx.media3.common.Metadata;

/* renamed from: s0.h, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C1612h implements Metadata.Entry {

    /* renamed from: a, reason: collision with root package name */
    public final long f19916a;

    /* renamed from: b, reason: collision with root package name */
    public final long f19917b;

    /* renamed from: c, reason: collision with root package name */
    public final long f19918c;

    public C1612h(long j7, long j8, long j9) {
        this.f19916a = j7;
        this.f19917b = j8;
        this.f19918c = j9;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C1612h)) {
            return false;
        }
        C1612h c1612h = (C1612h) obj;
        return this.f19916a == c1612h.f19916a && this.f19917b == c1612h.f19917b && this.f19918c == c1612h.f19918c;
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
        return U3.f.hashCode(this.f19918c) + ((U3.f.hashCode(this.f19917b) + ((U3.f.hashCode(this.f19916a) + 527) * 31)) * 31);
    }

    @Override // androidx.media3.common.Metadata.Entry
    public final /* synthetic */ void populateMediaMetadata(MediaMetadata.Builder builder) {
        androidx.media3.common.e.c(this, builder);
    }

    public String toString() {
        return "Mp4Timestamp: creation time=" + this.f19916a + ", modification time=" + this.f19917b + ", timescale=" + this.f19918c;
    }
}
