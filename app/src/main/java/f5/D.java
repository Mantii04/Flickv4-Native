package f5;

import android.os.AsyncTask;
import android.widget.Toast;
import cz.msebera.android.httpclient.HttpHost;
import flix.com.vision.App;
import flix.com.vision.tv.TVCategoriesActivity;
import java.io.BufferedInputStream;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.InputStreamReader;
import java.util.Objects;

/* loaded from: classes2.dex */
public final class D extends AsyncTask {

    /* renamed from: a, reason: collision with root package name */
    public Exception f14382a = null;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ TVCategoriesActivity f14383b;

    public D(TVCategoriesActivity tVCategoriesActivity) {
        this.f14383b = tVCategoriesActivity;
    }

    @Override // android.os.AsyncTask
    public String doInBackground(String... strArr) {
        try {
            BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(new BufferedInputStream(new FileInputStream(new File(this.f14383b.f16276w)))));
            StringBuilder sb = new StringBuilder();
            int i2 = 0;
            while (true) {
                String readLine = bufferedReader.readLine();
                if (readLine == null) {
                    break;
                }
                i2++;
                if (i2 > 1000 && readLine.trim().startsWith(HttpHost.DEFAULT_SCHEME_NAME)) {
                    App.getInstance().f14434j.addAll(T4.p.parseChannels(sb.toString()));
                    publishProgress(new Void[0]);
                    sb = new StringBuilder();
                    i2 = 0;
                }
                sb.append(readLine);
                sb.append('\n');
            }
            App.getInstance().f14434j.addAll(T4.p.parseChannels(sb.toString()));
            e = null;
        } catch (Exception e3) {
            e = e3;
            e.printStackTrace();
        }
        this.f14382a = e;
        return null;
    }

    @Override // android.os.AsyncTask
    public void onPostExecute(String str) {
        TVCategoriesActivity tVCategoriesActivity = this.f14383b;
        tVCategoriesActivity.f16260E = true;
        if (App.getInstance().f14434j.size() > 0) {
            tVCategoriesActivity.e();
            tVCategoriesActivity.f16274u.notifyDataSetChanged();
            tVCategoriesActivity.f16270q.setVisibility(8);
        } else {
            Exception exc = this.f14382a;
            if (exc != null) {
                Objects.toString(exc);
            }
            tVCategoriesActivity.f16270q.setVisibility(8);
            Toast.makeText(tVCategoriesActivity.getBaseContext(), "Failed to load Channels", 1).show();
        }
    }

    @Override // android.os.AsyncTask
    public void onProgressUpdate(Void... voidArr) {
        this.f14383b.f16257B.setText(App.getInstance().f14434j.size() + " channels loaded");
    }

    @Override // android.os.AsyncTask
    public void onPreExecute() {
    }
}
