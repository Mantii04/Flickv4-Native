package d5;

import android.os.AsyncTask;
import android.util.Log;
import flix.com.vision.activities.MovieDetailActivity;

/* renamed from: d5.b, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class AsyncTaskC0812b extends AsyncTask {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ String f13587a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ f f13588b;

    public AsyncTaskC0812b(f fVar, String str) {
        this.f13588b = fVar;
        this.f13587a = str;
    }

    @Override // android.os.AsyncTask
    public String doInBackground(Void... voidArr) {
        f fVar = this.f13588b;
        try {
            fVar.GetStreamLinkHindi(fVar.domain + "/play/" + this.f13587a);
            return null;
        } catch (Exception e3) {
            Log.d(MovieDetailActivity.class.toString(), "", e3);
            return null;
        }
    }

    @Override // android.os.AsyncTask
    public void onPostExecute(String str) {
        super.onPostExecute((AsyncTaskC0812b) str);
    }
}
