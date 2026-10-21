package G0;

import androidx.media3.common.Format;
import androidx.media3.common.MediaMetadata;
import androidx.media3.common.Metadata;
import androidx.media3.common.MimeTypes;
import androidx.media3.common.e;
import java.util.Arrays;
import java.util.Objects;

/* loaded from: classes.dex */
public final class a implements Metadata.Entry {

    /* renamed from: g, reason: collision with root package name */
    public static final Format f1004g = new Format.Builder().setSampleMimeType(MimeTypes.APPLICATION_ID3).build();

    /* renamed from: h, reason: collision with root package name */
    public static final Format f1005h = new Format.Builder().setSampleMimeType(MimeTypes.APPLICATION_SCTE35).build();

    /* renamed from: a, reason: collision with root package name */
    public final String f1006a;

    /* renamed from: b, reason: collision with root package name */
    public final String f1007b;

    /* renamed from: c, reason: collision with root package name */
    public final long f1008c;

    /* renamed from: d, reason: collision with root package name */
    public final long f1009d;

    /* renamed from: e, reason: collision with root package name */
    public final byte[] f1010e;

    /* renamed from: f, reason: collision with root package name */
    public int f1011f;

    public a(String str, String str2, long j7, long j8, byte[] bArr) {
        this.f1006a = str;
        this.f1007b = str2;
        this.f1008c = j7;
        this.f1009d = j8;
        this.f1010e = bArr;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && a.class == obj.getClass()) {
            a aVar = (a) obj;
            if (this.f1008c == aVar.f1008c && this.f1009d == aVar.f1009d && Objects.equals(this.f1006a, aVar.f1006a) && Objects.equals(this.f1007b, aVar.f1007b) && Arrays.equals(this.f1010e, aVar.f1010e)) {
                return true;
            }
        }
        return false;
    }

    @Override // androidx.media3.common.Metadata.Entry
    public byte[] getWrappedMetadataBytes() {
        if (getWrappedMetadataFormat() != null) {
            return this.f1010e;
        }
        return null;
    }

    @Override // androidx.media3.common.Metadata.Entry
    public Format getWrappedMetadataFormat() {
        String str = this.f1006a;
        str.getClass();
        switch (str) {
            case "urn:scte:scte35:2014:bin":
                return f1005h;
            case "https://aomedia.org/emsg/ID3":
            case "https://developer.apple.com/streaming/emsg-id3":
                return f1004g;
            default:
                return null;
        }
    }

    public int hashCode() {
        if (this.f1011f == 0) {
            String str = this.f1006a;
            int hashCode = (527 + (str != null ? str.hashCode() : 0)) * 31;
            String str2 = this.f1007b;
            int hashCode2 = (hashCode + (str2 != null ? str2.hashCode() : 0)) * 31;
            long j7 = this.f1008c;
            int i2 = (hashCode2 + ((int) (j7 ^ (j7 >>> 32)))) * 31;
            long j8 = this.f1009d;
            this.f1011f = Arrays.hashCode(this.f1010e) + ((i2 + ((int) (j8 ^ (j8 >>> 32)))) * 31);
        }
        return this.f1011f;
    }

    @Override // androidx.media3.common.Metadata.Entry
    public final /* synthetic */ void populateMediaMetadata(MediaMetadata.Builder builder) {
        e.c(this, builder);
    }

    public String toString() {
        return "EMSG: scheme=" + this.f1006a + ", id=" + this.f1009d + ", durationMs=" + this.f1008c + ", value=" + this.f1007b;
    }
}
