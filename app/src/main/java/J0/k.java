package J0;

import androidx.media3.common.Format;
import androidx.media3.common.MediaMetadata;
import androidx.media3.common.Metadata;

/* loaded from: classes.dex */
public abstract class k implements Metadata.Entry {

    /* renamed from: a, reason: collision with root package name */
    public final String f1463a;

    public k(String str) {
        this.f1463a = str;
    }

    @Override // androidx.media3.common.Metadata.Entry
    public final /* synthetic */ byte[] getWrappedMetadataBytes() {
        return androidx.media3.common.e.a(this);
    }

    @Override // androidx.media3.common.Metadata.Entry
    public final /* synthetic */ Format getWrappedMetadataFormat() {
        return androidx.media3.common.e.b(this);
    }

    @Override // androidx.media3.common.Metadata.Entry
    public /* synthetic */ void populateMediaMetadata(MediaMetadata.Builder builder) {
        androidx.media3.common.e.c(this, builder);
    }

    public String toString() {
        return this.f1463a;
    }
}
