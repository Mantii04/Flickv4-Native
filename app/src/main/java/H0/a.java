package H0;

import A.i;
import androidx.media3.common.Format;
import androidx.media3.common.MediaMetadata;
import androidx.media3.common.Metadata;
import androidx.media3.common.MimeTypes;
import androidx.media3.common.e;
import androidx.media3.common.util.ParsableByteArray;
import java.nio.charset.StandardCharsets;
import java.util.Arrays;

/* loaded from: classes.dex */
public final class a implements Metadata.Entry {

    /* renamed from: a, reason: collision with root package name */
    public final int f1177a;

    /* renamed from: b, reason: collision with root package name */
    public final String f1178b;

    /* renamed from: c, reason: collision with root package name */
    public final String f1179c;

    /* renamed from: d, reason: collision with root package name */
    public final int f1180d;

    /* renamed from: e, reason: collision with root package name */
    public final int f1181e;

    /* renamed from: f, reason: collision with root package name */
    public final int f1182f;

    /* renamed from: g, reason: collision with root package name */
    public final int f1183g;

    /* renamed from: h, reason: collision with root package name */
    public final byte[] f1184h;

    public a(int i2, String str, String str2, int i7, int i8, int i9, int i10, byte[] bArr) {
        this.f1177a = i2;
        this.f1178b = str;
        this.f1179c = str2;
        this.f1180d = i7;
        this.f1181e = i8;
        this.f1182f = i9;
        this.f1183g = i10;
        this.f1184h = bArr;
    }

    public static a fromPictureBlock(ParsableByteArray parsableByteArray) {
        int readInt = parsableByteArray.readInt();
        String normalizeMimeType = MimeTypes.normalizeMimeType(parsableByteArray.readString(parsableByteArray.readInt(), StandardCharsets.US_ASCII));
        String readString = parsableByteArray.readString(parsableByteArray.readInt());
        int readInt2 = parsableByteArray.readInt();
        int readInt3 = parsableByteArray.readInt();
        int readInt4 = parsableByteArray.readInt();
        int readInt5 = parsableByteArray.readInt();
        int readInt6 = parsableByteArray.readInt();
        byte[] bArr = new byte[readInt6];
        parsableByteArray.readBytes(bArr, 0, readInt6);
        return new a(readInt, normalizeMimeType, readString, readInt2, readInt3, readInt4, readInt5, bArr);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && a.class == obj.getClass()) {
            a aVar = (a) obj;
            if (this.f1177a == aVar.f1177a && this.f1178b.equals(aVar.f1178b) && this.f1179c.equals(aVar.f1179c) && this.f1180d == aVar.f1180d && this.f1181e == aVar.f1181e && this.f1182f == aVar.f1182f && this.f1183g == aVar.f1183g && Arrays.equals(this.f1184h, aVar.f1184h)) {
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
        return Arrays.hashCode(this.f1184h) + ((((((((i.b(i.b((527 + this.f1177a) * 31, 31, this.f1178b), 31, this.f1179c) + this.f1180d) * 31) + this.f1181e) * 31) + this.f1182f) * 31) + this.f1183g) * 31);
    }

    @Override // androidx.media3.common.Metadata.Entry
    public void populateMediaMetadata(MediaMetadata.Builder builder) {
        builder.maybeSetArtworkData(this.f1184h, this.f1177a);
    }

    public String toString() {
        return "Picture: mimeType=" + this.f1178b + ", description=" + this.f1179c;
    }
}
