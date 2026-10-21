package Z4;

import android.os.AsyncTask;
import flix.com.vision.App;
import org.greenrobot.eventbus.EventBus;

/* loaded from: classes2.dex */
public final class z extends AsyncTask {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ String f4615a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ D f4616b;

    public z(D d7, String str) {
        this.f4616b = d7;
        this.f4615a = str;
    }

    @Override // android.os.AsyncTask
    public String doInBackground(Void... voidArr) {
        D d7 = this.f4616b;
        String str = this.f4615a;
        try {
            String html = ((h6.h) ((h6.h) g6.e.connect(str)).timeout(5000)).get().html();
            if (!html.contains("Checking if the site connection is secure") && !html.contains("Checking your browser before accessing")) {
                d7.e(html, false);
                return null;
            }
            A a7 = new A();
            a7.f4519a = str;
            EventBus.getDefault().post(a7);
            return null;
        } catch (Exception unused) {
            d7.getClass();
            try {
                String string = App.get(str, str).body().string();
                if (!string.contains("Checking if the site connection is secure") && !string.contains("Checking your browser before accessing")) {
                    d7.e(string, false);
                    return null;
                }
                A a8 = new A();
                a8.f4519a = str;
                EventBus.getDefault().post(a8);
                return null;
            } catch (Exception e3) {
                e3.printStackTrace();
                A a9 = new A();
                a9.f4519a = str;
                EventBus.getDefault().post(a9);
                return null;
            }
        }
    }

    @Override // android.os.AsyncTask
    public void onPostExecute(String str) {
        super.onPostExecute((z) str);
    }
}
