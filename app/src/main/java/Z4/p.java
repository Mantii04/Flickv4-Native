package Z4;

import android.os.AsyncTask;
import org.greenrobot.eventbus.EventBus;

/* loaded from: classes2.dex */
public final class p extends AsyncTask {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ String f4583a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ t f4584b;

    public p(t tVar, String str) {
        this.f4584b = tVar;
        this.f4583a = str;
    }

    @Override // android.os.AsyncTask
    public String doInBackground(Void... voidArr) {
        String str = this.f4583a;
        try {
            String html = ((h6.h) g6.e.connect(str)).get().html();
            if (!html.contains("Checking if the site connection is secure") && !html.contains("Checking your browser before accessing")) {
                this.f4584b.e(html, false);
                return null;
            }
            q qVar = new q();
            qVar.f4585a = str;
            EventBus.getDefault().post(qVar);
            return null;
        } catch (Exception e3) {
            e3.printStackTrace();
            q qVar2 = new q();
            qVar2.f4585a = str;
            EventBus.getDefault().post(qVar2);
            return null;
        }
    }

    @Override // android.os.AsyncTask
    public void onPostExecute(String str) {
        super.onPostExecute((p) str);
    }
}
