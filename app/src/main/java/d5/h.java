package d5;

import android.os.AsyncTask;
import android.util.Log;
import flix.com.vision.activities.MovieDetailActivity;

/* loaded from: classes2.dex */
public final class h extends AsyncTask {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ String f13599a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ l f13600b;

    public h(l lVar, String str) {
        this.f13600b = lVar;
        this.f13599a = str;
    }

    @Override // android.os.AsyncTask
    public String doInBackground(Void... voidArr) {
        l lVar = this.f13600b;
        try {
            lVar.GetStreamLinkHindi(lVar.domain + "/play/" + this.f13599a);
            return null;
        } catch (Exception e3) {
            Log.d(MovieDetailActivity.class.toString(), "", e3);
            return null;
        }
    }

    @Override // android.os.AsyncTask
    public void onPostExecute(String str) {
        super.onPostExecute((h) str);
    }
}
