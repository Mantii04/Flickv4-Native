package I0;

import P3.v;
import androidx.media3.common.Format;
import androidx.media3.common.MediaMetadata;
import androidx.media3.common.Metadata;
import androidx.media3.common.e;
import java.util.Objects;

/* loaded from: classes.dex */
public final class b implements Metadata.Entry {

    /* renamed from: a, reason: collision with root package name */
    public final int f1233a;

    /* renamed from: b, reason: collision with root package name */
    public final String f1234b;

    /* renamed from: c, reason: collision with root package name */
    public final String f1235c;

    /* renamed from: d, reason: collision with root package name */
    public final String f1236d;

    /* renamed from: e, reason: collision with root package name */
    public final boolean f1237e;

    /* renamed from: f, reason: collision with root package name */
    public final int f1238f;

    public b(int i2, String str, String str2, String str3, boolean z6, int i7) {
        v.checkArgument(i7 == -1 || i7 > 0);
        this.f1233a = i2;
        this.f1234b = str;
        this.f1235c = str2;
        this.f1236d = str3;
        this.f1237e = z6;
        this.f1238f = i7;
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x004b  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x005f  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0073  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x0087  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x00a1  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x00c9  */
    /* JADX WARN: Removed duplicated region for block: B:43:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:44:0x0096  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x007c  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x0068  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x0054  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static I0.b parse(java.util.Map<java.lang.String, java.util.List<java.lang.String>> r14) {
        /*
            Method dump skipped, instructions count: 207
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: I0.b.parse(java.util.Map):I0.b");
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && b.class == obj.getClass()) {
            b bVar = (b) obj;
            if (this.f1233a == bVar.f1233a && Objects.equals(this.f1234b, bVar.f1234b) && Objects.equals(this.f1235c, bVar.f1235c) && Objects.equals(this.f1236d, bVar.f1236d) && this.f1237e == bVar.f1237e && this.f1238f == bVar.f1238f) {
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
        int i2 = (527 + this.f1233a) * 31;
        String str = this.f1234b;
        int hashCode = (i2 + (str != null ? str.hashCode() : 0)) * 31;
        String str2 = this.f1235c;
        int hashCode2 = (hashCode + (str2 != null ? str2.hashCode() : 0)) * 31;
        String str3 = this.f1236d;
        return ((((hashCode2 + (str3 != null ? str3.hashCode() : 0)) * 31) + (this.f1237e ? 1 : 0)) * 31) + this.f1238f;
    }

    @Override // androidx.media3.common.Metadata.Entry
    public void populateMediaMetadata(MediaMetadata.Builder builder) {
        String str = this.f1235c;
        if (str != null) {
            builder.setStation(str);
        }
        String str2 = this.f1234b;
        if (str2 != null) {
            builder.setGenre(str2);
        }
    }

    public String toString() {
        return "IcyHeaders: name=\"" + this.f1235c + "\", genre=\"" + this.f1234b + "\", bitrate=" + this.f1233a + ", metadataInterval=" + this.f1238f;
    }
}
