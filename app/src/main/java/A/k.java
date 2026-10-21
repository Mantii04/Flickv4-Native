package A;

import android.net.Uri;
import androidx.core.content.FileProvider;
import com.fasterxml.jackson.core.JsonPointer;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.google.firebase.sessions.settings.RemoteSettings;
import java.io.File;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes.dex */
public final class k {

    /* renamed from: a, reason: collision with root package name */
    public final String f0a;

    /* renamed from: b, reason: collision with root package name */
    public final HashMap f1b = new HashMap();

    public k(String str) {
        this.f0a = str;
    }

    public static boolean a(String str, String str2) {
        String a7 = FileProvider.a(str);
        String a8 = FileProvider.a(str2);
        if (a7.equals(a8)) {
            return true;
        }
        StringBuilder sb = new StringBuilder();
        sb.append(a8);
        sb.append(JsonPointer.SEPARATOR);
        return a7.startsWith(sb.toString());
    }

    public File getFileForUri(Uri uri) {
        String encodedPath = uri.getEncodedPath();
        int indexOf = encodedPath.indexOf(47, 1);
        String decode = Uri.decode(encodedPath.substring(1, indexOf));
        String decode2 = Uri.decode(encodedPath.substring(indexOf + 1));
        File file = (File) this.f1b.get(decode);
        if (file == null) {
            throw new IllegalArgumentException(b.c.k("Unable to find configured root for ", uri));
        }
        File file2 = new File(file, decode2);
        try {
            File canonicalFile = file2.getCanonicalFile();
            if (a(canonicalFile.getPath(), file.getPath())) {
                return canonicalFile;
            }
            throw new SecurityException("Resolved path jumped beyond configured root");
        } catch (IOException unused) {
            throw new IllegalArgumentException("Failed to resolve canonical path for " + file2);
        }
    }

    public Uri getUriForFile(File file) {
        try {
            String canonicalPath = file.getCanonicalPath();
            Map.Entry entry = null;
            for (Map.Entry entry2 : this.f1b.entrySet()) {
                String path = ((File) entry2.getValue()).getPath();
                if (a(canonicalPath, path) && (entry == null || path.length() > ((File) entry.getValue()).getPath().length())) {
                    entry = entry2;
                }
            }
            if (entry == null) {
                throw new IllegalArgumentException(i.k("Failed to find configured root that contains ", canonicalPath));
            }
            String path2 = ((File) entry.getValue()).getPath();
            return new Uri.Builder().scheme(FirebaseAnalytics.Param.CONTENT).authority(this.f0a).encodedPath(Uri.encode((String) entry.getKey()) + JsonPointer.SEPARATOR + Uri.encode(path2.endsWith(RemoteSettings.FORWARD_SLASH_STRING) ? canonicalPath.substring(path2.length()) : canonicalPath.substring(path2.length() + 1), RemoteSettings.FORWARD_SLASH_STRING)).build();
        } catch (IOException unused) {
            throw new IllegalArgumentException("Failed to resolve canonical path for " + file);
        }
    }
}
