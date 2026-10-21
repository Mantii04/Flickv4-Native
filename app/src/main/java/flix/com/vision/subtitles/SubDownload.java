package flix.com.vision.subtitles;

import android.content.Context;
import android.os.AsyncTask;
import android.widget.Toast;
import com.google.firebase.sessions.settings.RemoteSettings;
import flix.com.vision.models.CastAction;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import org.greenrobot.eventbus.EventBus;

/* loaded from: classes2.dex */
public class SubDownload {
    private static final int BUFFER_SIZE = 4096;
    public static String SUB_PATH = "";

    public static boolean checkSubFolder(Context context) {
        try {
            SUB_PATH = context.getExternalCacheDir().getAbsolutePath() + "/subs/";
            File file = new File(SUB_PATH);
            if (file.exists()) {
                return true;
            }
            file.mkdir();
            return true;
        } catch (Exception e3) {
            e3.printStackTrace();
            Toast.makeText(context, e3.getMessage(), 0).show();
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean downloadFileAndUnzip(Context context, String str) throws IOException {
        String substring;
        try {
            HttpURLConnection httpURLConnection = (HttpURLConnection) new URL(str).openConnection();
            if (httpURLConnection.getResponseCode() != 200) {
                httpURLConnection.disconnect();
                CastAction castAction = new CastAction();
                castAction.file = null;
                EventBus.getDefault().post(castAction);
                return false;
            }
            String headerField = httpURLConnection.getHeaderField("Content-Disposition");
            httpURLConnection.getContentType();
            httpURLConnection.getContentLength();
            if (headerField != null) {
                int indexOf = headerField.indexOf("filename=");
                substring = indexOf > 0 ? A.i.d(1, indexOf + 10, headerField) : "";
            } else {
                substring = str.substring(str.lastIndexOf(RemoteSettings.FORWARD_SLASH_STRING) + 1, str.length());
            }
            InputStream inputStream = httpURLConnection.getInputStream();
            String o6 = A.i.o(new StringBuilder(), SUB_PATH, substring);
            if (o6.endsWith(".zi")) {
                o6 = o6.concat("p");
            }
            String str2 = SUB_PATH + substring.replace(".zip", "");
            File file = new File(str2);
            if (file.exists()) {
                for (File file2 : file.listFiles()) {
                    if (file2.isFile() && file2.getName().endsWith(".srt")) {
                        CastAction castAction2 = new CastAction();
                        StringBuilder s6 = A.i.s(str2, RemoteSettings.FORWARD_SLASH_STRING);
                        s6.append(file2.getName());
                        castAction2.file = s6.toString();
                        EventBus.getDefault().post(castAction2);
                        return true;
                    }
                }
            } else {
                file.mkdir();
            }
            FileOutputStream fileOutputStream = new FileOutputStream(o6);
            byte[] bArr = new byte[4096];
            while (true) {
                int read = inputStream.read(bArr);
                if (read == -1) {
                    fileOutputStream.close();
                    inputStream.close();
                    System.out.println("File downloaded");
                    httpURLConnection.disconnect();
                    unZipFileGZIP(o6, str2);
                    return true;
                }
                fileOutputStream.write(bArr, 0, read);
            }
        } catch (IOException e3) {
            e3.printStackTrace();
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean downloadFileDirect(Context context, String str) throws IOException {
        String substring;
        try {
            HttpURLConnection httpURLConnection = (HttpURLConnection) new URL(str).openConnection();
            int responseCode = httpURLConnection.getResponseCode();
            if (responseCode != 200) {
                System.out.println("Failed to ownload subtitle. HTTP code: " + responseCode);
                httpURLConnection.disconnect();
                return false;
            }
            String headerField = httpURLConnection.getHeaderField("Content-Disposition");
            if (headerField != null) {
                int indexOf = headerField.indexOf("filename=");
                substring = indexOf > 0 ? A.i.d(1, indexOf + 10, headerField) : "";
            } else {
                substring = str.substring(str.lastIndexOf(RemoteSettings.FORWARD_SLASH_STRING) + 1, str.length());
            }
            InputStream inputStream = httpURLConnection.getInputStream();
            String o6 = A.i.o(new StringBuilder(), SUB_PATH, substring);
            new File(A.i.o(new StringBuilder(), SUB_PATH, substring));
            FileOutputStream fileOutputStream = new FileOutputStream(o6);
            byte[] bArr = new byte[4096];
            while (true) {
                int read = inputStream.read(bArr);
                if (read == -1) {
                    fileOutputStream.close();
                    inputStream.close();
                    System.out.println("File downloaded");
                    httpURLConnection.disconnect();
                    CastAction castAction = new CastAction();
                    castAction.file = o6;
                    EventBus.getDefault().post(castAction);
                    return true;
                }
                fileOutputStream.write(bArr, 0, read);
            }
        } catch (IOException e3) {
            e3.printStackTrace();
            return false;
        }
    }

    public static void downloadSubtitle(final Context context, final String str) {
        if (checkSubFolder(context)) {
            new AsyncTask<String, String, String>() { // from class: flix.com.vision.subtitles.SubDownload.2
                @Override // android.os.AsyncTask
                public String doInBackground(String... strArr) {
                    try {
                        SubDownload.downloadFileAndUnzip(context, str);
                        return "";
                    } catch (Exception e3) {
                        e3.printStackTrace();
                        return "";
                    }
                }
            }.execute("");
        }
    }

    public static void downloadSubtitleDirect(final Context context, final String str) {
        if (checkSubFolder(context)) {
            new AsyncTask<String, String, String>() { // from class: flix.com.vision.subtitles.SubDownload.1
                @Override // android.os.AsyncTask
                public String doInBackground(String... strArr) {
                    try {
                        SubDownload.downloadFileDirect(context, str);
                        return "";
                    } catch (Exception e3) {
                        e3.printStackTrace();
                        return "";
                    }
                }
            }.execute("");
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x006f A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:23:0x0070  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void unZipFileGZIP(java.lang.String r6, java.lang.String r7) {
        /*
            r0 = 1024(0x400, float:1.435E-42)
            byte[] r0 = new byte[r0]
            r1 = 0
            java.io.FileInputStream r2 = new java.io.FileInputStream     // Catch: java.io.IOException -> L2b
            r2.<init>(r6)     // Catch: java.io.IOException -> L2b
            java.util.zip.ZipInputStream r3 = new java.util.zip.ZipInputStream     // Catch: java.io.IOException -> L2b
            r3.<init>(r2)     // Catch: java.io.IOException -> L2b
            r2 = r1
        L10:
            java.util.zip.ZipEntry r4 = r3.getNextEntry()     // Catch: java.io.IOException -> L2b
            if (r4 == 0) goto L2d
            java.lang.String r2 = r4.getName()     // Catch: java.io.IOException -> L2b
            java.lang.String r4 = ".srt"
            boolean r4 = r2.contains(r4)     // Catch: java.io.IOException -> L2b
            if (r4 != 0) goto L2d
            java.lang.String r4 = ".wtt"
            boolean r4 = r2.contains(r4)     // Catch: java.io.IOException -> L2b
            if (r4 == 0) goto L10
            goto L2d
        L2b:
            r6 = move-exception
            goto L69
        L2d:
            java.lang.StringBuilder r4 = new java.lang.StringBuilder     // Catch: java.io.IOException -> L2b
            r4.<init>()     // Catch: java.io.IOException -> L2b
            r4.append(r7)     // Catch: java.io.IOException -> L2b
            java.lang.String r7 = "/"
            r4.append(r7)     // Catch: java.io.IOException -> L2b
            r4.append(r2)     // Catch: java.io.IOException -> L2b
            java.lang.String r7 = r4.toString()     // Catch: java.io.IOException -> L2b
            java.io.FileOutputStream r2 = new java.io.FileOutputStream     // Catch: java.io.IOException -> L2b
            r2.<init>(r7)     // Catch: java.io.IOException -> L2b
        L46:
            int r4 = r3.read(r0)     // Catch: java.io.IOException -> L2b
            if (r4 <= 0) goto L51
            r5 = 0
            r2.write(r0, r5, r4)     // Catch: java.io.IOException -> L2b
            goto L46
        L51:
            r3.close()     // Catch: java.io.IOException -> L2b
            r2.close()     // Catch: java.io.IOException -> L2b
            java.io.PrintStream r0 = java.lang.System.out     // Catch: java.io.IOException -> L67
            java.lang.String r1 = "The file was decompressed successfully!"
            r0.println(r1)     // Catch: java.io.IOException -> L67
            java.io.File r0 = new java.io.File     // Catch: java.io.IOException -> L67
            r0.<init>(r6)     // Catch: java.io.IOException -> L67
            r0.delete()     // Catch: java.io.IOException -> L67
            goto L6d
        L67:
            r6 = move-exception
            r1 = r7
        L69:
            r6.printStackTrace()
            r7 = r1
        L6d:
            if (r7 != 0) goto L70
            return
        L70:
            flix.com.vision.models.CastAction r6 = new flix.com.vision.models.CastAction
            r6.<init>()
            r6.file = r7
            org.greenrobot.eventbus.EventBus r7 = org.greenrobot.eventbus.EventBus.getDefault()
            r7.post(r6)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: flix.com.vision.subtitles.SubDownload.unZipFileGZIP(java.lang.String, java.lang.String):void");
    }
}
