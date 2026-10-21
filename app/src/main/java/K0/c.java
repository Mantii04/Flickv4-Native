package K0;

import P3.v;
import androidx.media3.common.Format;
import androidx.media3.common.MediaMetadata;
import androidx.media3.common.Metadata;
import androidx.media3.common.e;
import java.util.List;

/* loaded from: classes.dex */
public final class c implements Metadata.Entry {

    /* renamed from: a, reason: collision with root package name */
    public final List f1585a;

    public c(List<b> list) {
        this.f1585a = list;
        boolean z6 = false;
        if (!list.isEmpty()) {
            long j7 = list.get(0).f1583b;
            int i2 = 1;
            while (true) {
                if (i2 >= list.size()) {
                    break;
                }
                if (list.get(i2).f1582a < j7) {
                    z6 = true;
                    break;
                } else {
                    j7 = list.get(i2).f1583b;
                    i2++;
                }
            }
        }
        v.checkArgument(!z6);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || c.class != obj.getClass()) {
            return false;
        }
        return this.f1585a.equals(((c) obj).f1585a);
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
        return this.f1585a.hashCode();
    }

    @Override // androidx.media3.common.Metadata.Entry
    public final /* synthetic */ void populateMediaMetadata(MediaMetadata.Builder builder) {
        e.c(this, builder);
    }

    public String toString() {
        return "SlowMotion: segments=" + this.f1585a;
    }
}
