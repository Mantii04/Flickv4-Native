package H0;

import A.i;
import P3.AbstractC0226a;
import androidx.media3.common.Format;
import androidx.media3.common.MediaMetadata;
import androidx.media3.common.Metadata;
import androidx.media3.common.e;

/* loaded from: classes.dex */
public abstract class b implements Metadata.Entry {

    /* renamed from: a, reason: collision with root package name */
    public final String f1185a;

    /* renamed from: b, reason: collision with root package name */
    public final String f1186b;

    public b(String str, String str2) {
        this.f1185a = AbstractC0226a.toUpperCase(str);
        this.f1186b = str2;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && getClass() == obj.getClass()) {
            b bVar = (b) obj;
            if (this.f1185a.equals(bVar.f1185a) && this.f1186b.equals(bVar.f1186b)) {
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
        return this.f1186b.hashCode() + i.b(527, 31, this.f1185a);
    }

    @Override // androidx.media3.common.Metadata.Entry
    public void populateMediaMetadata(MediaMetadata.Builder builder) {
        String str;
        String str2 = this.f1185a;
        str2.getClass();
        str = this.f1186b;
        switch (str2) {
            case "TOTALTRACKS":
                Integer tryParse = com.google.common.primitives.a.tryParse(str);
                if (tryParse != null) {
                    builder.setTotalTrackCount(tryParse);
                    break;
                }
                break;
            case "TOTALDISCS":
                Integer tryParse2 = com.google.common.primitives.a.tryParse(str);
                if (tryParse2 != null) {
                    builder.setTotalDiscCount(tryParse2);
                    break;
                }
                break;
            case "TRACKNUMBER":
                Integer tryParse3 = com.google.common.primitives.a.tryParse(str);
                if (tryParse3 != null) {
                    builder.setTrackNumber(tryParse3);
                    break;
                }
                break;
            case "ALBUM":
                builder.setAlbumTitle(str);
                break;
            case "GENRE":
                builder.setGenre(str);
                break;
            case "TITLE":
                builder.setTitle(str);
                break;
            case "DESCRIPTION":
                builder.setDescription(str);
                break;
            case "DISCNUMBER":
                Integer tryParse4 = com.google.common.primitives.a.tryParse(str);
                if (tryParse4 != null) {
                    builder.setDiscNumber(tryParse4);
                    break;
                }
                break;
            case "ALBUMARTIST":
                builder.setAlbumArtist(str);
                break;
            case "ARTIST":
                builder.setArtist(str);
                break;
        }
    }

    public String toString() {
        return "VC: " + this.f1185a + "=" + this.f1186b;
    }
}
