package Z4;

import android.os.AsyncTask;
import org.greenrobot.eventbus.EventBus;

/* loaded from: classes2.dex */
public final class f extends AsyncTask {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ String f4549a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ j f4550b;

    public f(j jVar, String str) {
        this.f4550b = jVar;
        this.f4549a = str;
    }

    @Override // android.os.AsyncTask
    public String doInBackground(Void... voidArr) {
        String str = this.f4549a;
        try {
            String html = ((h6.h) g6.e.connect(str)).get().html();
            if (!html.contains("Checking if the site connection is secure") && !html.contains("Checking your browser before accessing")) {
                this.f4550b.e(html, false);
                return null;
            }
            g gVar = new g();
            gVar.f4551a = str;
            EventBus.getDefault().post(gVar);
            return null;
        } catch (Exception e3) {
            e3.printStackTrace();
            g gVar2 = new g();
            gVar2.f4551a = str;
            EventBus.getDefault().post(gVar2);
            return null;
        }
    }

    @Override // android.os.AsyncTask
    public void onPostExecute(String str) {
        super.onPostExecute((f) str);
    }
}
