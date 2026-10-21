package T4;

import android.app.Activity;
import android.app.ProgressDialog;
import android.os.Handler;
import android.os.Looper;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

/* loaded from: classes2.dex */
public final class r {

    /* renamed from: a, reason: collision with root package name */
    public final Activity f3720a;

    /* renamed from: b, reason: collision with root package name */
    public final ExecutorService f3721b = Executors.newSingleThreadExecutor();

    /* renamed from: c, reason: collision with root package name */
    public final Handler f3722c = new Handler(Looper.getMainLooper());

    /* renamed from: d, reason: collision with root package name */
    public ProgressDialog f3723d;

    public r(Activity activity) {
        this.f3720a = activity;
    }

    public void startDownload(String str) {
        ProgressDialog progressDialog = new ProgressDialog(this.f3720a);
        this.f3723d = progressDialog;
        progressDialog.setTitle("Downloading Update...");
        this.f3723d.setProgressStyle(1);
        this.f3723d.setCancelable(false);
        this.f3723d.setMax(100);
        this.f3723d.show();
        this.f3721b.execute(new q(this, str, 0));
    }
}
