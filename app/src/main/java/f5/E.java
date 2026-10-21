package f5;

import android.os.AsyncTask;
import android.widget.TextView;
import android.widget.Toast;
import cz.msebera.android.httpclient.HttpHost;
import flix.com.vision.App;
import flix.com.vision.tv.TVCategoriesActivity;
import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import org.apache.commons.lang3.StringUtils;

/* loaded from: classes2.dex */
public final class E extends AsyncTask {

    /* renamed from: a, reason: collision with root package name */
    public Exception f14384a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ TVCategoriesActivity f14385b;

    public E(TVCategoriesActivity tVCategoriesActivity) {
        this.f14385b = tVCategoriesActivity;
    }

    public String getUrlContents(String str) {
        BufferedReader bufferedReader;
        int i2;
        StringBuilder sb = new StringBuilder();
        try {
            HttpURLConnection httpURLConnection = (HttpURLConnection) new URL(str).openConnection();
            httpURLConnection.getResponseCode();
            bufferedReader = new BufferedReader(new InputStreamReader(httpURLConnection.getInputStream()));
            i2 = 0;
        } catch (Exception e3) {
            this.f14384a = e3;
            return null;
        }
        while (true) {
            String readLine = bufferedReader.readLine();
            if (readLine == null) {
                bufferedReader.close();
                return null;
            }
            if (!readLine.contains("EXTVLCOPT")) {
                try {
                    sb.append(readLine.trim() + StringUtils.LF);
                    i2++;
                    if (i2 > 1000 && readLine.trim().startsWith(HttpHost.DEFAULT_SCHEME_NAME)) {
                        String sb2 = sb.toString();
                        int i7 = TVCategoriesActivity.f16255H;
                        App.getInstance().f14434j.addAll(T4.p.parseChannels(sb2));
                        publishProgress(new Void[0]);
                        i2 = 0;
                        sb = new StringBuilder();
                    }
                } catch (Exception e7) {
                    e7.printStackTrace();
                }
            }
            this.f14384a = e3;
            return null;
        }
    }

    @Override // android.os.AsyncTask
    public String doInBackground(String... strArr) {
        getUrlContents(strArr[0]);
        return "OK";
    }

    @Override // android.os.AsyncTask
    public void onPostExecute(String str) {
        String str2;
        int size = App.getInstance().f14434j.size();
        TVCategoriesActivity tVCategoriesActivity = this.f14385b;
        if (size > 0) {
            tVCategoriesActivity.e();
            tVCategoriesActivity.f16274u.notifyDataSetChanged();
            tVCategoriesActivity.f16270q.setVisibility(8);
        } else {
            if (this.f14384a != null) {
                str2 = "Failed to load Channels: " + this.f14384a;
            } else {
                str2 = "Failed to load Channels";
            }
            tVCategoriesActivity.f16270q.setVisibility(8);
            Toast.makeText(tVCategoriesActivity.getBaseContext(), str2, 1).show();
            tVCategoriesActivity.f16268n.setText("TV Categories · Failed");
        }
        tVCategoriesActivity.f16260E = true;
        tVCategoriesActivity.updateFavoritesBar();
    }

    @Override // android.os.AsyncTask
    public void onProgressUpdate(Void... voidArr) {
        int size = App.getInstance().f14434j.size();
        TextView textView = this.f14385b.f16257B;
        StringBuilder sb = new StringBuilder();
        sb.append(size);
        sb.append(" channels loaded (");
        sb.append(size > 12500 ? "100%" : A.i.m(new StringBuilder(), (int) ((size / 12500) * 100.0d), "%"));
        sb.append(")");
        textView.setText(sb.toString());
    }

    @Override // android.os.AsyncTask
    public void onPreExecute() {
    }
}
