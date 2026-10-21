package I0;

import androidx.media3.common.Format;
import androidx.media3.common.MediaMetadata;
import androidx.media3.common.Metadata;
import androidx.media3.common.e;
import java.util.Arrays;

/* loaded from: classes.dex */
public final class c implements Metadata.Entry {

    /* renamed from: a, reason: collision with root package name */
    public final byte[] f1239a;

    /* renamed from: b, reason: collision with root package name */
    public final String f1240b;

    /* renamed from: c, reason: collision with root package name */
    public final String f1241c;

    public c(byte[] bArr, String str, String str2) {
        this.f1239a = bArr;
        this.f1240b = str;
        this.f1241c = str2;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || c.class != obj.getClass()) {
            return false;
        }
        return Arrays.equals(this.f1239a, ((c) obj).f1239a);
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
        return Arrays.hashCode(this.f1239a);
    }

    @Override // androidx.media3.common.Metadata.Entry
    public void populateMediaMetadata(MediaMetadata.Builder builder) {
        String str = this.f1240b;
        if (str != null) {
            builder.setTitle(str);
        }
    }

    public String toString() {
        return "ICY: title=\"" + this.f1240b + "\", url=\"" + this.f1241c + "\", rawMetadata.length=\"" + this.f1239a.length + "\"";
    }
}
