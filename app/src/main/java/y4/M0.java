package y4;

import android.app.ProgressDialog;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.pm.PackageManager;
import android.net.Uri;
import android.os.AsyncTask;
import android.os.Build;
import android.os.Environment;
import androidx.core.content.FileProvider;
import e.DialogInterfaceC0839s;
import flix.com.vision.App;
import flix.com.vision.R;
import flix.com.vision.activities.SearchActivityTV;
import flix.com.vision.tv.Constant;
import java.io.BufferedInputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.net.URL;
import java.net.URLConnection;
import org.apache.commons.lang3.StringUtils;

/* loaded from: classes2.dex */
public final class M0 extends AsyncTask {

    /* renamed from: a, reason: collision with root package name */
    public String f21144a = "";

    /* renamed from: b, reason: collision with root package name */
    public String f21145b = "";

    /* renamed from: c, reason: collision with root package name */
    public String f21146c = "";

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ SearchActivityTV f21147d;

    public M0(SearchActivityTV searchActivityTV) {
        this.f21147d = searchActivityTV;
    }

    @Override // android.os.AsyncTask
    public void onCancelled() {
        try {
            File file = new File(this.f21146c);
            if (file.exists()) {
                file.delete();
            }
        } catch (Exception e3) {
            e3.printStackTrace();
        }
        super.onCancelled();
    }

    @Override // android.os.AsyncTask
    public void onPreExecute() {
        super.onPreExecute();
        SearchActivityTV searchActivityTV = this.f21147d;
        ProgressDialog progressDialog = new ProgressDialog(searchActivityTV);
        searchActivityTV.f14989H = progressDialog;
        StringBuilder sb = new StringBuilder();
        sb.append(searchActivityTV.getString(R.string.downloading_update_wait));
        sb.append(StringUtils.SPACE);
        SharedPreferences sharedPreferences = App.getInstance().f14440s;
        String str = Constant.f16184b;
        sb.append(sharedPreferences.getString("update_version_name", ""));
        progressDialog.setTitle(sb.toString());
        searchActivityTV.f14989H.setIndeterminate(false);
        searchActivityTV.f14989H.setMax(100);
        searchActivityTV.f14989H.setCancelable(false);
        searchActivityTV.f14989H.setButton(-1, searchActivityTV.getString(R.string.cancel_label), new K0(this));
        searchActivityTV.f14989H.setProgressStyle(1);
        searchActivityTV.f14989H.show();
    }

    @Override // android.os.AsyncTask
    public String doInBackground(String... strArr) {
        SearchActivityTV searchActivityTV = this.f21147d;
        String str = "";
        try {
            URL url = new URL(strArr[0]);
            URLConnection openConnection = url.openConnection();
            openConnection.connect();
            this.f21145b = Environment.getExternalStorageDirectory().getPath();
            String str2 = this.f21145b + "/FlixVision.Update" + this.f21144a.replace(StringUtils.SPACE, "").replace(".", "") + ".apk";
            this.f21146c = str2;
            try {
                int contentLength = openConnection.getContentLength();
                BufferedInputStream bufferedInputStream = new BufferedInputStream(url.openStream());
                try {
                    this.f21144a = "." + searchActivityTV.getPackageManager().getPackageInfo(searchActivityTV.getPackageName(), 0).versionName;
                } catch (PackageManager.NameNotFoundException e3) {
                    e3.printStackTrace();
                    this.f21144a = "";
                }
                FileOutputStream fileOutputStream = new FileOutputStream(this.f21146c);
                byte[] bArr = new byte[1024];
                long j7 = 0;
                while (true) {
                    int read = bufferedInputStream.read(bArr);
                    if (read == -1) {
                        fileOutputStream.flush();
                        fileOutputStream.close();
                        bufferedInputStream.close();
                        return str2;
                    }
                    j7 += read;
                    publishProgress(Integer.valueOf((int) ((100 * j7) / contentLength)));
                    fileOutputStream.write(bArr, 0, read);
                }
            } catch (Exception e7) {
                e = e7;
                str = str2;
                e.printStackTrace();
                try {
                    File file = new File(this.f21146c);
                    if (file.exists()) {
                        file.delete();
                    }
                } catch (Exception e8) {
                    e8.printStackTrace();
                }
                return str;
            }
        } catch (Exception e9) {
            e = e9;
        }
    }

    @Override // android.os.AsyncTask
    public void onPostExecute(String str) {
        SearchActivityTV searchActivityTV = this.f21147d;
        super.onPostExecute((M0) str);
        try {
            searchActivityTV.f14989H.dismiss();
        } catch (Exception e3) {
            e3.printStackTrace();
        }
        File file = new File(str);
        if (!file.exists()) {
            DialogInterfaceC0839s create = new e.r(searchActivityTV).create();
            create.setTitle("OOPPSS!!");
            create.setIcon(R.drawable.ic_action_error_outline);
            create.setMessage(searchActivityTV.getString(R.string.error_downloading_apk_mess));
            create.setButton(-1, "GOT IT", new L0());
            try {
                create.show();
                return;
            } catch (Exception e7) {
                e7.printStackTrace();
                return;
            }
        }
        try {
            if (Build.VERSION.SDK_INT >= 24) {
                Uri uriForFile = FileProvider.getUriForFile(searchActivityTV.getBaseContext(), searchActivityTV.getBaseContext().getApplicationContext().getPackageName() + ".provider", file);
                Intent intent = new Intent("android.intent.action.VIEW");
                intent.setDataAndType(uriForFile, "application/vnd.android.package-archive");
                intent.setFlags(1);
                searchActivityTV.startActivity(intent);
            } else {
                Uri fromFile = Uri.fromFile(file);
                Intent intent2 = new Intent("android.intent.action.VIEW");
                intent2.setDataAndType(fromFile, "application/vnd.android.package-archive");
                intent2.setFlags(268435456);
                searchActivityTV.startActivity(intent2);
            }
        } catch (Exception e8) {
            e8.printStackTrace();
            DialogInterfaceC0839s create2 = new e.r(searchActivityTV).create();
            create2.setTitle("OOPPSS!!");
            create2.setIcon(R.drawable.ic_action_error_outline);
            create2.setMessage(searchActivityTV.getString(R.string.apk_downloaded_but_could_not) + this.f21146c + "\n\nAnd Install the Apk manually");
            create2.setButton(-1, "GOT IT", new Z(2));
            try {
                create2.show();
            } catch (Exception e9) {
                e9.printStackTrace();
            }
        }
    }

    @Override // android.os.AsyncTask
    public void onProgressUpdate(Integer... numArr) {
        super.onProgressUpdate((Object[]) numArr);
        this.f21147d.f14989H.setProgress(numArr[0].intValue());
    }
}
