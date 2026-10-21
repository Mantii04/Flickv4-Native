package androidx.media3.exoplayer.offline;

import androidx.media3.exoplayer.offline.DownloadHelper;
import androidx.media3.exoplayer.offline.DownloadService;
import java.io.IOException;

/* loaded from: classes.dex */
public final /* synthetic */ class h implements Runnable {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f7454b;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Object f7455e;

    /* renamed from: f, reason: collision with root package name */
    public final /* synthetic */ Object f7456f;

    public /* synthetic */ h(int i2, Object obj, Object obj2) {
        this.f7454b = i2;
        this.f7455e = obj;
        this.f7456f = obj2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f7454b) {
            case 0:
                ((DownloadService.DownloadManagerHelper) this.f7455e).lambda$attachService$0((DownloadService) this.f7456f);
                break;
            case 1:
                ((DownloadHelper) this.f7455e).lambda$onMediaPreparationFailed$3((IOException) this.f7456f);
                break;
            default:
                ((DownloadHelper) this.f7455e).lambda$prepare$1((DownloadHelper.Callback) this.f7456f);
                break;
        }
    }
}
