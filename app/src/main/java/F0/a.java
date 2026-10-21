package F0;

import A.i;
import androidx.media3.common.Format;
import androidx.media3.common.MediaMetadata;
import androidx.media3.common.Metadata;
import androidx.media3.common.e;

/* loaded from: classes.dex */
public final class a implements Metadata.Entry {

    /* renamed from: a, reason: collision with root package name */
    public final int f978a;

    /* renamed from: b, reason: collision with root package name */
    public final String f979b;

    public a(int i2, String str) {
        this.f978a = i2;
        this.f979b = str;
    }

    @Override // androidx.media3.common.Metadata.Entry
    public final /* synthetic */ byte[] getWrappedMetadataBytes() {
        return e.a(this);
    }

    @Override // androidx.media3.common.Metadata.Entry
    public final /* synthetic */ Format getWrappedMetadataFormat() {
        return e.b(this);
    }

    @Override // androidx.media3.common.Metadata.Entry
    public final /* synthetic */ void populateMediaMetadata(MediaMetadata.Builder builder) {
        e.c(this, builder);
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("Ait(controlCode=");
        sb.append(this.f978a);
        sb.append(",url=");
        return i.o(sb, this.f979b, ")");
    }
}
