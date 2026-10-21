package Y4;

import J0.g;
import android.os.AsyncTask;
import flix.com.vision.App;

/* loaded from: classes2.dex */
public final class b extends AsyncTask {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ String f4390a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ c f4391b;

    public b(c cVar, String str) {
        this.f4391b = cVar;
        this.f4390a = str;
    }

    @Override // android.os.AsyncTask
    public String doInBackground(Void... voidArr) {
        try {
            String str = this.f4390a;
            App.getInstance().getRequestQueue().add(new a(this, str, new X4.a(1, this, str), new g(10)));
            return null;
        } catch (Exception e3) {
            e3.toString();
            return null;
        }
    }

    @Override // android.os.AsyncTask
    public void onPostExecute(String str) {
        super.onPostExecute((b) str);
    }
}
