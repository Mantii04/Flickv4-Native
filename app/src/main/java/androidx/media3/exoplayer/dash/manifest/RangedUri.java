package androidx.media3.exoplayer.dash.manifest;

import A.i;
import android.net.Uri;
import androidx.media3.common.util.UnstableApi;
import androidx.media3.common.util.UriUtil;

@UnstableApi
/* loaded from: classes.dex */
public final class RangedUri {
    private int hashCode;
    public final long length;
    private final String referenceUri;
    public final long start;

    public RangedUri(String str, long j7, long j8) {
        this.referenceUri = str == null ? "" : str;
        this.start = j7;
        this.length = j8;
    }

    public RangedUri attemptMerge(RangedUri rangedUri, String str) {
        String resolveUriString = resolveUriString(str);
        RangedUri rangedUri2 = null;
        if (rangedUri != null && resolveUriString.equals(rangedUri.resolveUriString(str))) {
            long j7 = this.length;
            if (j7 != -1) {
                long j8 = this.start;
                if (j8 + j7 == rangedUri.start) {
                    long j9 = rangedUri.length;
                    return new RangedUri(resolveUriString, j8, j9 != -1 ? j7 + j9 : -1L);
                }
            }
            long j10 = rangedUri.length;
            if (j10 != -1) {
                long j11 = rangedUri.start;
                if (j11 + j10 == this.start) {
                    rangedUri2 = new RangedUri(resolveUriString, j11, j7 != -1 ? j10 + j7 : -1L);
                }
            }
        }
        return rangedUri2;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && RangedUri.class == obj.getClass()) {
            RangedUri rangedUri = (RangedUri) obj;
            if (this.start == rangedUri.start && this.length == rangedUri.length && this.referenceUri.equals(rangedUri.referenceUri)) {
                return true;
            }
        }
        return false;
    }

    public int hashCode() {
        if (this.hashCode == 0) {
            this.hashCode = this.referenceUri.hashCode() + ((((527 + ((int) this.start)) * 31) + ((int) this.length)) * 31);
        }
        return this.hashCode;
    }

    public Uri resolveUri(String str) {
        return UriUtil.resolveToUri(str, this.referenceUri);
    }

    public String resolveUriString(String str) {
        return UriUtil.resolve(str, this.referenceUri);
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("RangedUri(referenceUri=");
        sb.append(this.referenceUri);
        sb.append(", start=");
        sb.append(this.start);
        sb.append(", length=");
        return i.n(sb, this.length, ")");
    }
}
