package L4;

import android.content.Context;
import android.os.AsyncTask;
import java.io.BufferedInputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.net.URL;
import java.net.URLConnection;

/* loaded from: classes2.dex */
public final class f extends AsyncTask {

    /* renamed from: a, reason: collision with root package name */
    public final e f1914a;

    /* renamed from: b, reason: collision with root package name */
    public final Context f1915b;

    /* renamed from: c, reason: collision with root package name */
    public File f1916c;

    public f(Context context, e eVar) {
        this.f1915b = context;
        this.f1914a = eVar;
    }

    @Override // android.os.AsyncTask
    public void onPreExecute() {
        super.onPreExecute();
    }

    @Override // android.os.AsyncTask
    public String doInBackground(String... strArr) {
        try {
            URL url = new URL(strArr[0]);
            URLConnection openConnection = url.openConnection();
            openConnection.connect();
            openConnection.getContentLength();
            BufferedInputStream bufferedInputStream = new BufferedInputStream(url.openStream(), 8192);
            this.f1916c = new File(this.f1915b.getCacheDir(), strArr[1]);
            FileOutputStream fileOutputStream = new FileOutputStream(this.f1916c);
            byte[] bArr = new byte[1024];
            while (true) {
                int read = bufferedInputStream.read(bArr);
                if (read == -1) {
                    fileOutputStream.flush();
                    fileOutputStream.close();
                    bufferedInputStream.close();
                    return null;
                }
                fileOutputStream.write(bArr, 0, read);
            }
        } catch (Exception e3) {
            ((a) this.f1914a).onFail(e3);
            return null;
        }
    }

    @Override // android.os.AsyncTask
    public void onPostExecute(String str) {
        e eVar = this.f1914a;
        if (eVar != null) {
            ((a) eVar).onDownload(this.f1916c);
        }
    }

    @Override // android.os.AsyncTask
    public void onProgressUpdate(String... strArr) {
    }
}
