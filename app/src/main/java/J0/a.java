package J0;

import androidx.media3.common.MediaMetadata;
import java.util.Arrays;
import java.util.Objects;

/* loaded from: classes.dex */
public final class a extends k {

    /* renamed from: b, reason: collision with root package name */
    public final String f1434b;

    /* renamed from: c, reason: collision with root package name */
    public final String f1435c;

    /* renamed from: d, reason: collision with root package name */
    public final int f1436d;

    /* renamed from: e, reason: collision with root package name */
    public final byte[] f1437e;

    public a(String str, String str2, int i2, byte[] bArr) {
        super("APIC");
        this.f1434b = str;
        this.f1435c = str2;
        this.f1436d = i2;
        this.f1437e = bArr;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && a.class == obj.getClass()) {
            a aVar = (a) obj;
            if (this.f1436d == aVar.f1436d && Objects.equals(this.f1434b, aVar.f1434b) && Objects.equals(this.f1435c, aVar.f1435c) && Arrays.equals(this.f1437e, aVar.f1437e)) {
                return true;
            }
        }
        return false;
    }

    public int hashCode() {
        int i2 = (527 + this.f1436d) * 31;
        String str = this.f1434b;
        int hashCode = (i2 + (str != null ? str.hashCode() : 0)) * 31;
        String str2 = this.f1435c;
        return Arrays.hashCode(this.f1437e) + ((hashCode + (str2 != null ? str2.hashCode() : 0)) * 31);
    }

    @Override // J0.k, androidx.media3.common.Metadata.Entry
    public void populateMediaMetadata(MediaMetadata.Builder builder) {
        builder.maybeSetArtworkData(this.f1437e, this.f1436d);
    }

    @Override // J0.k
    public String toString() {
        return this.f1463a + ": mimeType=" + this.f1434b + ", description=" + this.f1435c;
    }
}
