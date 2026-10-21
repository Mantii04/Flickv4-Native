package j2;

import java.io.File;
import java.io.IOException;
import java.nio.charset.Charset;

/* renamed from: j2.i, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public abstract class AbstractC1048i {

    /* renamed from: a, reason: collision with root package name */
    public static final Charset f16977a = Charset.forName("US-ASCII");

    static {
        Charset.forName("UTF-8");
    }

    public static void a(File file) {
        File[] listFiles = file.listFiles();
        if (listFiles == null) {
            throw new IOException("not a readable directory: " + file);
        }
        for (File file2 : listFiles) {
            if (file2.isDirectory()) {
                a(file2);
            }
            if (!file2.delete()) {
                throw new IOException("failed to delete file: " + file2);
            }
        }
    }
}
