package Z4;

import android.os.AsyncTask;
import flix.com.vision.App;
import org.greenrobot.eventbus.EventBus;

/* loaded from: classes2.dex */
public final class u extends AsyncTask {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ String f4600a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ y f4601b;

    public u(y yVar, String str) {
        this.f4601b = yVar;
        this.f4600a = str;
    }

    @Override // android.os.AsyncTask
    public String doInBackground(Void... voidArr) {
        y yVar = this.f4601b;
        String str = this.f4600a;
        try {
            String html = ((h6.h) ((h6.h) g6.e.connect(str)).timeout(5000)).get().html();
            if (!html.contains("Checking if the site connection is secure") && !html.contains("Checking your browser before accessing")) {
                yVar.e(html, false);
                return null;
            }
            v vVar = new v();
            vVar.f4602a = str;
            EventBus.getDefault().post(vVar);
            return null;
        } catch (Exception unused) {
            yVar.getClass();
            try {
                String string = App.get(str, str).body().string();
                if (!string.contains("Checking if the site connection is secure") && !string.contains("Checking your browser before accessing")) {
                    yVar.e(string, false);
                    return null;
                }
                v vVar2 = new v();
                vVar2.f4602a = str;
                EventBus.getDefault().post(vVar2);
                return null;
            } catch (Exception e3) {
                e3.printStackTrace();
                v vVar3 = new v();
                vVar3.f4602a = str;
                EventBus.getDefault().post(vVar3);
                return null;
            }
        }
    }

    @Override // android.os.AsyncTask
    public void onPostExecute(String str) {
        super.onPostExecute((u) str);
    }
}
