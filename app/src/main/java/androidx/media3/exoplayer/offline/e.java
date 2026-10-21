package androidx.media3.exoplayer.offline;

import androidx.media3.datasource.cache.CacheWriter;
import androidx.media3.exoplayer.scheduler.RequirementsWatcher;

/* loaded from: classes.dex */
public final /* synthetic */ class e implements RequirementsWatcher.Listener, CacheWriter.ProgressListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ Object f7453a;

    public /* synthetic */ e(Object obj) {
        this.f7453a = obj;
    }

    @Override // androidx.media3.datasource.cache.CacheWriter.ProgressListener
    public void onProgress(long j7, long j8, long j9) {
        ((ProgressiveDownloader) this.f7453a).onProgress(j7, j8, j9);
    }

    @Override // androidx.media3.exoplayer.scheduler.RequirementsWatcher.Listener
    public void onRequirementsStateChanged(RequirementsWatcher requirementsWatcher, int i2) {
        ((DownloadManager) this.f7453a).onRequirementsStateChanged(requirementsWatcher, i2);
    }
}
