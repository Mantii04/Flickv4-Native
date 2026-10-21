package f5;

import android.app.ProgressDialog;
import android.os.AsyncTask;
import android.widget.Toast;
import flix.com.vision.App;
import flix.com.vision.models.ChannelTv;
import flix.com.vision.tv.TVChannelSearchActivity;

/* loaded from: classes2.dex */
public final class H extends AsyncTask {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ String f14388a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ TVChannelSearchActivity f14389b;

    public H(TVChannelSearchActivity tVChannelSearchActivity, String str) {
        this.f14389b = tVChannelSearchActivity;
        this.f14388a = str;
    }

    @Override // android.os.AsyncTask
    public String doInBackground(Void... voidArr) {
        for (int i2 = 0; i2 < App.getInstance().f14434j.size(); i2++) {
            try {
                if (((ChannelTv) App.getInstance().f14434j.get(i2)).label.toLowerCase().contains(this.f14388a.toLowerCase())) {
                    this.f14389b.f16290j.add((ChannelTv) App.getInstance().f14434j.get(i2));
                }
            } catch (Exception e3) {
                e3.printStackTrace();
                return null;
            }
        }
        return null;
    }

    @Override // android.os.AsyncTask
    public void onPostExecute(String str) {
        super.onPostExecute((H) str);
        TVChannelSearchActivity tVChannelSearchActivity = this.f14389b;
        if (tVChannelSearchActivity.f16290j.size() > 0) {
            tVChannelSearchActivity.f16289f.notifyDataSetChanged();
        } else {
            Toast.makeText(tVChannelSearchActivity.getBaseContext(), "Nothing found!", 0).show();
        }
        ProgressDialog progressDialog = tVChannelSearchActivity.f16291m;
        if (progressDialog != null) {
            try {
                if (progressDialog.isShowing()) {
                    tVChannelSearchActivity.f16291m.dismiss();
                }
            } catch (Exception unused) {
            }
        }
    }
}
