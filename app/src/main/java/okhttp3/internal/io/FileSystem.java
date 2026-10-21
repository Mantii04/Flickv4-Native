package okhttp3.internal.io;

import e6.J;
import e6.L;
import e6.w;
import e6.x;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import kotlin.jvm.internal.j;

/* loaded from: classes2.dex */
public interface FileSystem {
    public static final Companion Companion = Companion.$$INSTANCE;
    public static final FileSystem SYSTEM = new Companion.SystemFileSystem();

    public static final class Companion {
        static final /* synthetic */ Companion $$INSTANCE = new Companion();

        public static final class SystemFileSystem implements FileSystem {
            @Override // okhttp3.internal.io.FileSystem
            public J appendingSink(File file) throws FileNotFoundException {
                j.checkNotNullParameter(file, "file");
                try {
                    return w.appendingSink(file);
                } catch (FileNotFoundException unused) {
                    file.getParentFile().mkdirs();
                    return w.appendingSink(file);
                }
            }

            @Override // okhttp3.internal.io.FileSystem
            public void delete(File file) throws IOException {
                j.checkNotNullParameter(file, "file");
                if (file.delete() || !file.exists()) {
                    return;
                }
                throw new IOException("failed to delete " + file);
            }

            @Override // okhttp3.internal.io.FileSystem
            public void deleteContents(File directory) throws IOException {
                j.checkNotNullParameter(directory, "directory");
                File[] listFiles = directory.listFiles();
                if (listFiles == null) {
                    throw new IOException("not a readable directory: " + directory);
                }
                for (File file : listFiles) {
                    if (file.isDirectory()) {
                        j.checkNotNullExpressionValue(file, "file");
                        deleteContents(file);
                    }
                    if (!file.delete()) {
                        throw new IOException("failed to delete " + file);
                    }
                }
            }

            @Override // okhttp3.internal.io.FileSystem
            public boolean exists(File file) {
                j.checkNotNullParameter(file, "file");
                return file.exists();
            }

            @Override // okhttp3.internal.io.FileSystem
            public void rename(File from, File to) throws IOException {
                j.checkNotNullParameter(from, "from");
                j.checkNotNullParameter(to, "to");
                delete(to);
                if (from.renameTo(to)) {
                    return;
                }
                throw new IOException("failed to rename " + from + " to " + to);
            }

            @Override // okhttp3.internal.io.FileSystem
            public J sink(File file) throws FileNotFoundException {
                J sink$default;
                J sink$default2;
                j.checkNotNullParameter(file, "file");
                try {
                    sink$default2 = x.sink$default(file, false, 1, null);
                    return sink$default2;
                } catch (FileNotFoundException unused) {
                    file.getParentFile().mkdirs();
                    sink$default = x.sink$default(file, false, 1, null);
                    return sink$default;
                }
            }

            @Override // okhttp3.internal.io.FileSystem
            public long size(File file) {
                j.checkNotNullParameter(file, "file");
                return file.length();
            }

            @Override // okhttp3.internal.io.FileSystem
            public L source(File file) throws FileNotFoundException {
                j.checkNotNullParameter(file, "file");
                return w.source(file);
            }

            public String toString() {
                return "FileSystem.SYSTEM";
            }
        }

        private Companion() {
        }
    }

    J appendingSink(File file) throws FileNotFoundException;

    void delete(File file) throws IOException;

    void deleteContents(File file) throws IOException;

    boolean exists(File file);

    void rename(File file, File file2) throws IOException;

    J sink(File file) throws FileNotFoundException;

    long size(File file);

    L source(File file) throws FileNotFoundException;
}
