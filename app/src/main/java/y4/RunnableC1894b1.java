package y4;

import B4.RunnableC0061y;
import android.app.ProgressDialog;
import android.os.Environment;
import android.os.Handler;
import flix.com.vision.activities.SettingsActivity;
import h5.AbstractC0995i;
import java.io.File;
import java.io.FileWriter;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;

/* renamed from: y4.b1, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final /* synthetic */ class RunnableC1894b1 implements Runnable {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f21209b;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ SettingsActivity f21210e;

    /* renamed from: f, reason: collision with root package name */
    public final /* synthetic */ ProgressDialog f21211f;

    public /* synthetic */ RunnableC1894b1(SettingsActivity settingsActivity, ProgressDialog progressDialog, int i2) {
        this.f21209b = i2;
        this.f21210e = settingsActivity;
        this.f21211f = progressDialog;
    }

    @Override // java.lang.Runnable
    public final void run() {
        SettingsActivity settingsActivity = this.f21210e;
        ProgressDialog progressDialog = this.f21211f;
        switch (this.f21209b) {
            case 0:
                int i2 = SettingsActivity.f15080c2;
                progressDialog.dismiss();
                AbstractC0995i.makeToast(settingsActivity, "Restore Successful! Restarting...", true);
                new Handler().postDelayed(new Z0(settingsActivity, 2), 1500L);
                break;
            case 1:
                int i7 = SettingsActivity.f15080c2;
                settingsActivity.getClass();
                progressDialog.dismiss();
                AbstractC0995i.makeToast(settingsActivity, "Failed to read backup file", true);
                break;
            default:
                int i8 = SettingsActivity.f15080c2;
                settingsActivity.getClass();
                try {
                    String str = "FlixVision_Backup_" + new SimpleDateFormat("yyyyMMdd_HHmmss", Locale.getDefault()).format(new Date()) + ".json";
                    FileWriter fileWriter = new FileWriter(new File(Environment.getExternalStoragePublicDirectory(Environment.DIRECTORY_DOWNLOADS), str));
                    fileWriter.write(P4.b.getBackupJson());
                    fileWriter.close();
                    settingsActivity.runOnUiThread(new RunnableC0061y(settingsActivity, progressDialog, str, 11));
                    break;
                } catch (Exception e3) {
                    e3.printStackTrace();
                    settingsActivity.runOnUiThread(new RunnableC0061y(settingsActivity, progressDialog, e3, 12));
                }
        }
    }
}
