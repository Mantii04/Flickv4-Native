package b4;

import android.content.Context;
import android.support.v4.media.session.PlaybackStateCompat;
import androidx.media3.exoplayer.ExoPlayer;
import java.io.File;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.Iterator;
import java.util.List;

/* renamed from: b4.k, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C0661k {

    /* renamed from: a, reason: collision with root package name */
    public final File f8504a;

    public C0661k(Context context) {
        File dir = context.getDir("dex", 0);
        this.f8504a = dir;
        if (dir.exists()) {
            return;
        }
        dir.mkdirs();
    }

    public final void a(C0654d c0654d) {
        String format;
        StringBuilder sb = new StringBuilder();
        sb.append(c0654d.f8475a);
        sb.append("-");
        File file = new File(this.f8504a, A.i.o(sb, c0654d.f8476b, ".jar"));
        if (file.exists()) {
            AbstractC0664n.a("Already downloaded: " + file.getName());
            return;
        }
        HttpURLConnection httpURLConnection = (HttpURLConnection) new URL(c0654d.f8477c).openConnection();
        httpURLConnection.setConnectTimeout(15000);
        httpURLConnection.setReadTimeout(ExoPlayer.DEFAULT_STUCK_PLAYING_NOT_ENDING_TIMEOUT_MS);
        try {
            InputStream inputStream = httpURLConnection.getInputStream();
            try {
                FileOutputStream fileOutputStream = new FileOutputStream(file);
                try {
                    byte[] bArr = new byte[8192];
                    while (true) {
                        int read = inputStream.read(bArr);
                        if (read == -1) {
                            break;
                        } else {
                            fileOutputStream.write(bArr, 0, read);
                        }
                    }
                    fileOutputStream.close();
                    inputStream.close();
                    httpURLConnection.disconnect();
                    file.setReadable(true, true);
                    file.setWritable(false, false);
                    file.setReadOnly();
                    StringBuilder sb2 = new StringBuilder("Saved: ");
                    sb2.append(file.getAbsolutePath());
                    sb2.append(", Size: ");
                    long length = file.length();
                    if (length < 1024) {
                        format = length + " B";
                    } else {
                        double d7 = length;
                        format = length < PlaybackStateCompat.ACTION_SET_CAPTIONING_ENABLED ? String.format("%.1f KB", Double.valueOf(d7 / 1024.0d)) : String.format("%.1f MB", Double.valueOf(d7 / 1048576.0d));
                    }
                    sb2.append(format);
                    AbstractC0664n.a(sb2.toString());
                } finally {
                }
            } finally {
            }
        } catch (Throwable th) {
            httpURLConnection.disconnect();
            throw th;
        }
    }

    public void b(List list) {
        File[] listFiles;
        File file = this.f8504a;
        if (file == null || !file.exists() || (listFiles = file.listFiles()) == null) {
            return;
        }
        for (File file2 : listFiles) {
            if (file2.isFile() && file2.getName().endsWith(".jar")) {
                String name = file2.getName();
                Iterator it = list.iterator();
                while (true) {
                    if (it.hasNext()) {
                        C0654d c0654d = (C0654d) it.next();
                        if (name.equals(c0654d.f8475a + "-" + c0654d.f8476b + ".jar")) {
                            break;
                        }
                    } else {
                        boolean delete = file2.delete();
                        StringBuilder t6 = A.i.t("Purged old JAR: ", name, " â†’ ");
                        t6.append(delete ? "deleted" : "failed");
                        AbstractC0664n.a(t6.toString());
                    }
                }
            }
        }
    }

    public void a(List list) {
        b(list);
        Iterator it = list.iterator();
        while (it.hasNext()) {
            C0654d c0654d = (C0654d) it.next();
            try {
                a(c0654d);
            } catch (Exception e3) {
                AbstractC0664n.a("Download failed: " + c0654d.f8475a, e3);
            }
        }
    }
}
