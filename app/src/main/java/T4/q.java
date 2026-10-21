package T4;

import android.app.Activity;
import android.app.ProgressDialog;
import android.content.Intent;
import android.net.Uri;
import android.os.Build;
import android.os.Environment;
import android.os.Handler;
import android.util.Log;
import android.widget.Toast;
import androidx.core.content.FileProvider;
import java.io.BufferedInputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.net.URL;
import java.net.URLConnection;

/* loaded from: classes2.dex */
public final /* synthetic */ class q implements Runnable {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f3717b;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ r f3718e;

    /* renamed from: f, reason: collision with root package name */
    public final /* synthetic */ String f3719f;

    public /* synthetic */ q(r rVar, String str, int i2) {
        this.f3717b = i2;
        this.f3718e = rVar;
        this.f3719f = str;
    }

    @Override // java.lang.Runnable
    public final void run() {
        String str;
        int contentLength;
        File file;
        BufferedInputStream bufferedInputStream;
        FileOutputStream fileOutputStream;
        Uri fromFile;
        boolean canRequestPackageInstalls;
        switch (this.f3717b) {
            case 0:
                String str2 = this.f3719f;
                r rVar = this.f3718e;
                Handler handler = rVar.f3722c;
                try {
                    URL url = new URL(str2);
                    URLConnection openConnection = url.openConnection();
                    openConnection.connect();
                    contentLength = openConnection.getContentLength();
                    file = new File(rVar.f3720a.getExternalFilesDir(Environment.DIRECTORY_DOWNLOADS), "FlixVision_Update.apk");
                    if (file.exists()) {
                        file.delete();
                    }
                    bufferedInputStream = new BufferedInputStream(url.openStream());
                    try {
                        fileOutputStream = new FileOutputStream(file);
                    } finally {
                    }
                } catch (Exception e3) {
                    Log.e("UpdateManager", "Error downloading APK", e3);
                    str = null;
                }
                try {
                    byte[] bArr = new byte[8192];
                    long j7 = 0;
                    while (true) {
                        int read = bufferedInputStream.read(bArr);
                        if (read == -1) {
                            fileOutputStream.flush();
                            fileOutputStream.close();
                            bufferedInputStream.close();
                            str = file.getAbsolutePath();
                            handler.post(new q(rVar, str, 1));
                            return;
                        }
                        j7 += read;
                        handler.post(new C.q(rVar, (int) ((100 * j7) / contentLength), 3));
                        fileOutputStream.write(bArr, 0, read);
                    }
                } finally {
                }
            default:
                r rVar2 = this.f3718e;
                ProgressDialog progressDialog = rVar2.f3723d;
                if (progressDialog != null && progressDialog.isShowing()) {
                    rVar2.f3723d.dismiss();
                }
                String str3 = this.f3719f;
                Activity activity = rVar2.f3720a;
                if (str3 == null) {
                    Toast.makeText(activity, "Download failed. Please try again.", 1).show();
                    return;
                }
                File file2 = new File(str3);
                if (file2.exists()) {
                    int i2 = Build.VERSION.SDK_INT;
                    if (i2 >= 26) {
                        canRequestPackageInstalls = activity.getPackageManager().canRequestPackageInstalls();
                        if (!canRequestPackageInstalls) {
                            Toast.makeText(activity, "Please allow 'Install Unknown Apps' for FlixVision", 1).show();
                            activity.startActivity(new Intent("android.settings.MANAGE_UNKNOWN_APP_SOURCES", Uri.parse("package:" + activity.getPackageName())));
                            return;
                        }
                    }
                    if (i2 >= 24) {
                        fromFile = FileProvider.getUriForFile(activity, activity.getPackageName() + ".provider", file2);
                    } else {
                        fromFile = Uri.fromFile(file2);
                    }
                    Intent intent = new Intent("android.intent.action.VIEW");
                    intent.setDataAndType(fromFile, "application/vnd.android.package-archive");
                    intent.addFlags(1);
                    intent.addFlags(268435456);
                    try {
                        activity.startActivity(intent);
                        return;
                    } catch (Exception e7) {
                        Log.e("UpdateManager", "Installation failed", e7);
                        Toast.makeText(activity, "Unable to open APK. Try installing manually from Downloads.", 1).show();
                        return;
                    }
                }
                return;
        }
    }
}
