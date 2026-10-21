package y4;

import android.app.FragmentManager;
import android.app.ProgressDialog;
import android.content.SharedPreferences;
import android.widget.Toast;
import flix.com.vision.App;
import flix.com.vision.R;
import flix.com.vision.activities.SettingsActivity;
import flix.com.vision.tv.Constant;

/* loaded from: classes2.dex */
public final /* synthetic */ class Z0 implements Runnable {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f21198b;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ SettingsActivity f21199e;

    public /* synthetic */ Z0(SettingsActivity settingsActivity, int i2) {
        this.f21198b = i2;
        this.f21199e = settingsActivity;
    }

    @Override // java.lang.Runnable
    public final void run() {
        SettingsActivity settingsActivity = this.f21199e;
        switch (this.f21198b) {
            case 0:
                int i2 = SettingsActivity.f15080c2;
                settingsActivity.getClass();
                try {
                    SharedPreferences sharedPreferences = App.getInstance().f14440s;
                    String str = Constant.f16184b;
                    if (!sharedPreferences.getBoolean("update_available", false) || App.getInstance().f14440s.getString("update_url", "").length() <= 5) {
                        Toast.makeText(settingsActivity.getBaseContext(), "No Update available", 1).show();
                    } else {
                        FragmentManager fragmentManager = settingsActivity.getFragmentManager();
                        Q4.d newInstance = Q4.d.newInstance(settingsActivity, true);
                        newInstance.setTitle("Update " + App.getInstance().f14440s.getString("update_version_name", "N/A") + " available");
                        newInstance.setMessage(settingsActivity.getString(R.string.new_update_message) + App.getInstance().f14440s.getString("update_message", "") + settingsActivity.getString(R.string.make_sure_you_get_it_mess));
                        newInstance.setButton1("LATER", new A4.q(8));
                        newInstance.setButton2("RESTART NOW", new W0(settingsActivity, 21));
                        try {
                            newInstance.show(fragmentManager, "");
                        } catch (Exception e3) {
                            e3.printStackTrace();
                        }
                    }
                    ProgressDialog progressDialog = settingsActivity.f15209t;
                    if (progressDialog != null) {
                        progressDialog.dismiss();
                        break;
                    }
                } catch (Exception unused) {
                    return;
                }
                break;
            case 1:
                settingsActivity.f15100G0.setEnabled(true);
                break;
            default:
                int i7 = SettingsActivity.f15080c2;
                settingsActivity.finish();
                App.getInstance().restartApp();
                break;
        }
    }
}
