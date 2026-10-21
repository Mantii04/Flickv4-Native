package J;

import androidx.media3.datasource.cache.CacheSpan;
import androidx.media3.datasource.cache.LeastRecentlyUsedCacheEvictor;
import androidx.media3.exoplayer.hls.playlist.HlsMediaPlaylist;
import b1.C0632d;
import b1.C0633e;
import com.google.firebase.crashlytics.internal.persistence.CrashlyticsReportPersistence;
import flix.com.vision.activities.ModernFilePickerActivity;
import java.io.File;
import java.util.Comparator;

/* loaded from: classes.dex */
public final /* synthetic */ class c implements Comparator {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f1396b;

    public /* synthetic */ c(int i2) {
        this.f1396b = i2;
    }

    @Override // java.util.Comparator
    public final int compare(Object obj, Object obj2) {
        int lambda$static$0;
        int oldestEventFileFirst;
        int compare;
        int lambda$new$0;
        switch (this.f1396b) {
            case 0:
                byte[] bArr = (byte[]) obj;
                byte[] bArr2 = (byte[]) obj2;
                if (bArr.length != bArr2.length) {
                    return bArr.length - bArr2.length;
                }
                for (int i2 = 0; i2 < bArr.length; i2++) {
                    byte b7 = bArr[i2];
                    byte b8 = bArr2[i2];
                    if (b7 != b8) {
                        return b7 - b8;
                    }
                }
                return 0;
            case 1:
                return Integer.compare(((T0.d) obj2).f3467b, ((T0.d) obj).f3467b);
            case 2:
                lambda$static$0 = CrashlyticsReportPersistence.lambda$static$0((File) obj, (File) obj2);
                return lambda$static$0;
            case 3:
                oldestEventFileFirst = CrashlyticsReportPersistence.oldestEventFileFirst((File) obj, (File) obj2);
                return oldestEventFileFirst;
            case 4:
                compare = LeastRecentlyUsedCacheEvictor.compare((CacheSpan) obj, (CacheSpan) obj2);
                return compare;
            case 5:
                lambda$new$0 = HlsMediaPlaylist.Interstitial.lambda$new$0((HlsMediaPlaylist.ClientDefinedAttribute) obj, (HlsMediaPlaylist.ClientDefinedAttribute) obj2);
                return lambda$new$0;
            case 6:
                return Integer.compare(((C0633e) obj).f8363a.f8366b, ((C0633e) obj2).f8363a.f8366b);
            case 7:
                return Long.compare(((C0632d) obj).f8360b, ((C0632d) obj2).f8360b);
            default:
                File file = (File) obj;
                File file2 = (File) obj2;
                int i7 = ModernFilePickerActivity.f14784q;
                if (file.isDirectory() && !file2.isDirectory()) {
                    return -1;
                }
                if (file.isDirectory() || !file2.isDirectory()) {
                    return file.getName().compareToIgnoreCase(file2.getName());
                }
                return 1;
        }
    }
}
