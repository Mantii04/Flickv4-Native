package c2;

import T1.AbstractC0338q;
import T1.L;
import android.content.Context;
import com.airbnb.lottie.network.FileExtension;
import f2.AbstractC0923d;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.zip.ZipInputStream;
import org.apache.commons.lang3.StringUtils;

/* renamed from: c2.b, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0723b {

    /* renamed from: a, reason: collision with root package name */
    public final String f8957a;

    /* renamed from: b, reason: collision with root package name */
    public final C0722a f8958b;

    public C0723b(Context context, String str, String str2) {
        Context applicationContext = context.getApplicationContext();
        this.f8957a = str;
        if (str2 == null) {
            this.f8958b = null;
        } else {
            this.f8958b = new C0722a(applicationContext);
        }
    }

    public static String b(HttpURLConnection httpURLConnection) {
        httpURLConnection.getResponseCode();
        BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(httpURLConnection.getErrorStream()));
        StringBuilder sb = new StringBuilder();
        while (true) {
            try {
                try {
                    String readLine = bufferedReader.readLine();
                    if (readLine != null) {
                        sb.append(readLine);
                        sb.append('\n');
                    } else {
                        try {
                            break;
                        } catch (Exception unused) {
                        }
                    }
                } catch (Exception e3) {
                    throw e3;
                }
            } finally {
                try {
                    bufferedReader.close();
                } catch (Exception unused2) {
                }
            }
        }
        return sb.toString();
    }

    public static L fetchSync(Context context, String str, String str2) {
        return new C0723b(context, str, str2).fetchSync();
    }

    public final L a() {
        StringBuilder sb = new StringBuilder("Fetching ");
        String str = this.f8957a;
        sb.append(str);
        AbstractC0923d.debug(sb.toString());
        HttpURLConnection httpURLConnection = (HttpURLConnection) new URL(str).openConnection();
        httpURLConnection.setRequestMethod("GET");
        try {
            httpURLConnection.connect();
            if (httpURLConnection.getErrorStream() == null && httpURLConnection.getResponseCode() == 200) {
                L c7 = c(httpURLConnection);
                StringBuilder sb2 = new StringBuilder("Completed fetch from network. Success: ");
                sb2.append(c7.getValue() != null);
                AbstractC0923d.debug(sb2.toString());
                return c7;
            }
            return new L((Throwable) new IllegalArgumentException("Unable to fetch " + str + ". Failed with " + httpURLConnection.getResponseCode() + StringUtils.LF + b(httpURLConnection)));
        } catch (Exception e3) {
            return new L((Throwable) e3);
        } finally {
            httpURLConnection.disconnect();
        }
    }

    public final L c(HttpURLConnection httpURLConnection) {
        FileExtension fileExtension;
        L fromJsonInputStreamSync;
        String contentType = httpURLConnection.getContentType();
        if (contentType == null) {
            contentType = "application/json";
        }
        boolean contains = contentType.contains("application/zip");
        C0722a c0722a = this.f8958b;
        String str = this.f8957a;
        if (contains) {
            AbstractC0923d.debug("Handling zip response.");
            fileExtension = FileExtension.ZIP;
            fromJsonInputStreamSync = c0722a == null ? AbstractC0338q.fromZipStreamSync(new ZipInputStream(httpURLConnection.getInputStream()), null) : AbstractC0338q.fromZipStreamSync(new ZipInputStream(new FileInputStream(c0722a.c(str, httpURLConnection.getInputStream(), fileExtension))), str);
        } else {
            AbstractC0923d.debug("Received json response.");
            fileExtension = FileExtension.JSON;
            fromJsonInputStreamSync = c0722a == null ? AbstractC0338q.fromJsonInputStreamSync(httpURLConnection.getInputStream(), null) : AbstractC0338q.fromJsonInputStreamSync(new FileInputStream(new File(c0722a.c(str, httpURLConnection.getInputStream(), fileExtension).getAbsolutePath())), str);
        }
        if (c0722a != null && fromJsonInputStreamSync.getValue() != null) {
            File file = new File(c0722a.b(), C0722a.a(str, fileExtension, true));
            File file2 = new File(file.getAbsolutePath().replace(".temp", ""));
            boolean renameTo = file.renameTo(file2);
            AbstractC0923d.debug("Copying temp file to real file (" + file2 + ")");
            if (!renameTo) {
                AbstractC0923d.warning("Unable to rename cache file " + file.getAbsolutePath() + " to " + file2.getAbsolutePath() + ".");
            }
        }
        return fromJsonInputStreamSync;
    }

    /* JADX WARN: Removed duplicated region for block: B:22:0x006b  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public T1.L fetchSync() {
        /*
            r9 = this;
            com.airbnb.lottie.network.FileExtension r0 = com.airbnb.lottie.network.FileExtension.ZIP
            java.lang.String r1 = r9.f8957a
            r2 = 0
            c2.a r3 = r9.f8958b
            if (r3 != 0) goto Lb
            goto L90
        Lb:
            java.io.File r4 = new java.io.File     // Catch: java.io.FileNotFoundException -> L39
            java.io.File r5 = r3.b()     // Catch: java.io.FileNotFoundException -> L39
            com.airbnb.lottie.network.FileExtension r6 = com.airbnb.lottie.network.FileExtension.JSON     // Catch: java.io.FileNotFoundException -> L39
            r7 = 0
            java.lang.String r8 = c2.C0722a.a(r1, r6, r7)     // Catch: java.io.FileNotFoundException -> L39
            r4.<init>(r5, r8)     // Catch: java.io.FileNotFoundException -> L39
            boolean r5 = r4.exists()     // Catch: java.io.FileNotFoundException -> L39
            if (r5 == 0) goto L22
            goto L37
        L22:
            java.io.File r4 = new java.io.File     // Catch: java.io.FileNotFoundException -> L39
            java.io.File r3 = r3.b()     // Catch: java.io.FileNotFoundException -> L39
            java.lang.String r5 = c2.C0722a.a(r1, r0, r7)     // Catch: java.io.FileNotFoundException -> L39
            r4.<init>(r3, r5)     // Catch: java.io.FileNotFoundException -> L39
            boolean r3 = r4.exists()     // Catch: java.io.FileNotFoundException -> L39
            if (r3 == 0) goto L36
            goto L37
        L36:
            r4 = r2
        L37:
            if (r4 != 0) goto L3b
        L39:
            r4 = r2
            goto L68
        L3b:
            java.io.FileInputStream r3 = new java.io.FileInputStream     // Catch: java.io.FileNotFoundException -> L39
            r3.<init>(r4)     // Catch: java.io.FileNotFoundException -> L39
            java.lang.String r5 = r4.getAbsolutePath()
            java.lang.String r7 = ".zip"
            boolean r5 = r5.endsWith(r7)
            if (r5 == 0) goto L4d
            r6 = r0
        L4d:
            java.lang.String r5 = "Cache hit for "
            java.lang.String r7 = " at "
            java.lang.StringBuilder r5 = A.i.t(r5, r1, r7)
            java.lang.String r4 = r4.getAbsolutePath()
            r5.append(r4)
            java.lang.String r4 = r5.toString()
            f2.AbstractC0923d.debug(r4)
            L.d r4 = new L.d
            r4.<init>(r6, r3)
        L68:
            if (r4 != 0) goto L6b
            goto L90
        L6b:
            java.lang.Object r3 = r4.f1820a
            com.airbnb.lottie.network.FileExtension r3 = (com.airbnb.lottie.network.FileExtension) r3
            java.lang.Object r4 = r4.f1821b
            java.io.InputStream r4 = (java.io.InputStream) r4
            if (r3 != r0) goto L7f
            java.util.zip.ZipInputStream r0 = new java.util.zip.ZipInputStream
            r0.<init>(r4)
            T1.L r0 = T1.AbstractC0338q.fromZipStreamSync(r0, r1)
            goto L83
        L7f:
            T1.L r0 = T1.AbstractC0338q.fromJsonInputStreamSync(r4, r1)
        L83:
            java.lang.Object r3 = r0.getValue()
            if (r3 == 0) goto L90
            java.lang.Object r0 = r0.getValue()
            r2 = r0
            T1.i r2 = (T1.C0330i) r2
        L90:
            if (r2 == 0) goto L98
            T1.L r0 = new T1.L
            r0.<init>(r2)
            return r0
        L98:
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            java.lang.String r2 = "Animation for "
            r0.<init>(r2)
            r0.append(r1)
            java.lang.String r1 = " not found in cache. Fetching from network."
            r0.append(r1)
            java.lang.String r0 = r0.toString()
            f2.AbstractC0923d.debug(r0)
            T1.L r0 = r9.a()     // Catch: java.io.IOException -> Lb3
            goto Lba
        Lb3:
            r0 = move-exception
            T1.L r1 = new T1.L
            r1.<init>(r0)
            r0 = r1
        Lba:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: c2.C0723b.fetchSync():T1.L");
    }
}
