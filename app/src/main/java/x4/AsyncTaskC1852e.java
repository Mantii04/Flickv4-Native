package x4;

import android.os.AsyncTask;
import flix.com.vision.App;

/* renamed from: x4.e, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class AsyncTaskC1852e extends AsyncTask {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ App f20929a;

    public AsyncTaskC1852e(App app) {
        this.f20929a = app;
    }

    @Override // android.os.AsyncTask
    public String doInBackground(String... strArr) {
        App app = this.f20929a;
        try {
        } catch (Exception e3) {
            e3.printStackTrace();
        }
        if (app.f14440s.getBoolean("data_type10", false)) {
            return null;
        }
        app.downloadFileAndUnzipNew(T4.f.f3688b, false);
        return null;
    }
}
