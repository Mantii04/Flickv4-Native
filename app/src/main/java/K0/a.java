package K0;

import U3.f;
import androidx.media3.common.Format;
import androidx.media3.common.MediaMetadata;
import androidx.media3.common.Metadata;
import androidx.media3.common.e;

/* loaded from: classes.dex */
public abstract class a implements Metadata.Entry {

    /* renamed from: a, reason: collision with root package name */
    public final long f1577a;

    /* renamed from: b, reason: collision with root package name */
    public final long f1578b;

    /* renamed from: c, reason: collision with root package name */
    public final long f1579c;

    /* renamed from: d, reason: collision with root package name */
    public final long f1580d;

    /* renamed from: e, reason: collision with root package name */
    public final long f1581e;

    public a(long j7, long j8, long j9, long j10, long j11) {
        this.f1577a = j7;
        this.f1578b = j8;
        this.f1579c = j9;
        this.f1580d = j10;
        this.f1581e = j11;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && getClass() == obj.getClass()) {
            a aVar = (a) obj;
            if (this.f1577a == aVar.f1577a && this.f1578b == aVar.f1578b && this.f1579c == aVar.f1579c && this.f1580d == aVar.f1580d && this.f1581e == aVar.f1581e) {
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
        return f.hashCode(this.f1581e) + ((f.hashCode(this.f1580d) + ((f.hashCode(this.f1579c) + ((f.hashCode(this.f1578b) + ((f.hashCode(this.f1577a) + 527) * 31)) * 31)) * 31)) * 31);
    }

    @Override // androidx.media3.common.Metadata.Entry
    public final /* synthetic */ void populateMediaMetadata(MediaMetadata.Builder builder) {
        e.c(this, builder);
    }

    public String toString() {
        return "Motion photo metadata: photoStartPosition=" + this.f1577a + ", photoSize=" + this.f1578b + ", photoPresentationTimestampUs=" + this.f1579c + ", videoStartPosition=" + this.f1580d + ", videoSize=" + this.f1581e;
    }
}
