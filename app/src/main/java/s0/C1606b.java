package s0;

import androidx.media3.common.Format;
import androidx.media3.common.MediaMetadata;
import androidx.media3.common.Metadata;
import androidx.media3.common.util.ParsableByteArray;
import androidx.media3.common.util.Util;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

/* renamed from: s0.b, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C1606b implements Metadata.Entry {

    /* renamed from: a, reason: collision with root package name */
    public final String f19904a;

    /* renamed from: b, reason: collision with root package name */
    public final byte[] f19905b;

    /* renamed from: c, reason: collision with root package name */
    public final int f19906c;

    /* renamed from: d, reason: collision with root package name */
    public final int f19907d;

    public C1606b(String str, byte[] bArr, int i2, int i7) {
        boolean z6;
        byte b7;
        str.getClass();
        switch (str) {
            case "com.android.capture.fps":
                P3.v.checkArgument(i7 == 23 && bArr.length == 4);
                break;
            case "auxiliary.tracks.interleaved":
                if (i7 != 75 || bArr.length != 1 || ((b7 = bArr[0]) != 0 && b7 != 1)) {
                    z6 = false;
                }
                P3.v.checkArgument(z6);
                break;
            case "auxiliary.tracks.length":
            case "auxiliary.tracks.offset":
                P3.v.checkArgument(i7 == 78 && bArr.length == 8);
                break;
            case "auxiliary.tracks.map":
                P3.v.checkArgument(i7 == 0);
                break;
        }
        this.f19904a = str;
        this.f19905b = bArr;
        this.f19906c = i2;
        this.f19907d = i7;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && C1606b.class == obj.getClass()) {
            C1606b c1606b = (C1606b) obj;
            if (this.f19904a.equals(c1606b.f19904a) && Arrays.equals(this.f19905b, c1606b.f19905b) && this.f19906c == c1606b.f19906c && this.f19907d == c1606b.f19907d) {
                return true;
            }
        }
        return false;
    }

    public List<Integer> getAuxiliaryTrackTypesFromMap() {
        P3.v.checkState(this.f19904a.equals("auxiliary.tracks.map"), "Metadata is not an auxiliary tracks map");
        byte[] bArr = this.f19905b;
        byte b7 = bArr[1];
        ArrayList arrayList = new ArrayList();
        for (int i2 = 0; i2 < b7; i2++) {
            arrayList.add(Integer.valueOf(bArr[i2 + 2]));
        }
        return arrayList;
    }

    @Override // androidx.media3.common.Metadata.Entry
    public final /* synthetic */ byte[] getWrappedMetadataBytes() {
        return androidx.media3.common.e.a(this);
    }

    @Override // androidx.media3.common.Metadata.Entry
    public final /* synthetic */ Format getWrappedMetadataFormat() {
        return androidx.media3.common.e.b(this);
    }

    public int hashCode() {
        return ((((Arrays.hashCode(this.f19905b) + A.i.b(527, 31, this.f19904a)) * 31) + this.f19906c) * 31) + this.f19907d;
    }

    @Override // androidx.media3.common.Metadata.Entry
    public final /* synthetic */ void populateMediaMetadata(MediaMetadata.Builder builder) {
        androidx.media3.common.e.c(this, builder);
    }

    public String toString() {
        String sb;
        String str = this.f19904a;
        byte[] bArr = this.f19905b;
        int i2 = this.f19907d;
        if (i2 == 0) {
            if (str.equals("auxiliary.tracks.map")) {
                List<Integer> auxiliaryTrackTypesFromMap = getAuxiliaryTrackTypesFromMap();
                StringBuilder o6 = b.c.o("track types = ");
                P3.r.on(',').appendTo(o6, auxiliaryTrackTypesFromMap);
                sb = o6.toString();
            }
            sb = Util.toHexString(bArr);
        } else if (i2 == 1) {
            sb = Util.fromUtf8Bytes(bArr);
        } else if (i2 == 23) {
            sb = String.valueOf(Float.intBitsToFloat(com.google.common.primitives.a.fromByteArray(bArr)));
        } else if (i2 == 67) {
            sb = String.valueOf(com.google.common.primitives.a.fromByteArray(bArr));
        } else if (i2 != 75) {
            if (i2 == 78) {
                sb = String.valueOf(new ParsableByteArray(bArr).readUnsignedLongToLong());
            }
            sb = Util.toHexString(bArr);
        } else {
            sb = String.valueOf(bArr[0] & 255);
        }
        return b.c.l("mdta: key=", str, ", value=", sb);
    }
}
