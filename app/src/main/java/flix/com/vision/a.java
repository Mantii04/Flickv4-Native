package flix.com.vision;

import android.os.AsyncTask;
import flix.com.vision.utils.JsonUtils;
import okhttp3.Response;

/* loaded from: classes2.dex */
public final class a extends AsyncTask {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ App f14448a;

    public a(App app) {
        this.f14448a = app;
    }

    @Override // android.os.AsyncTask
    public String doInBackground(Void... voidArr) {
        String string = App.getInstance().getResources().getString(R.string.config_uri);
        try {
            Response response = App.get(string, string);
            boolean isSuccessful = response.isSuccessful();
            App app = this.f14448a;
            if (isSuccessful) {
                app.parseRemoteConfig(JsonUtils.parse(response.body().string()).getAsJsonObject());
            } else {
                String string2 = App.getInstance().getResources().getString(R.string.config_uri_backup);
                app.parseRemoteConfig(JsonUtils.parse(App.get(string2, string2).body().string()).getAsJsonObject());
            }
            return null;
        } catch (Exception e3) {
            e3.printStackTrace();
            return null;
        }
    }

    @Override // android.os.AsyncTask
    public void onPostExecute(String str) {
        super.onPostExecute((a) str);
    }
}
