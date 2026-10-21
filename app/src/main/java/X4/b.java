package X4;

import android.os.AsyncTask;
import flix.com.vision.App;
import h2.t;
import h6.h;
import java.io.IOException;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* loaded from: classes2.dex */
public final class b extends AsyncTask {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ String f4238a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ c f4239b;

    public b(c cVar, String str) {
        this.f4239b = cVar;
        this.f4238a = str;
    }

    @Override // android.os.AsyncTask
    public String doInBackground(Void... voidArr) {
        try {
            Matcher matcher = Pattern.compile("setVideoHLS\\('(.*?)'").matcher(((h) g6.e.connect(this.f4238a)).get().toString());
            while (matcher.find()) {
                String group = matcher.group(1);
                App.getInstance().getRequestQueue().add(new t(0, group, new a(0, this, group), new J0.g(9)));
            }
            return null;
        } catch (IOException e3) {
            e3.printStackTrace();
            return null;
        } catch (Exception unused) {
            return null;
        }
    }

    @Override // android.os.AsyncTask
    public void onPostExecute(String str) {
        super.onPostExecute((b) str);
    }
}
