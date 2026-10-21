package okhttp3.internal.cache2;

import e6.C0870l;
import java.io.IOException;
import java.nio.channels.FileChannel;
import kotlin.jvm.internal.j;

/* loaded from: classes2.dex */
public final class FileOperator {
    private final FileChannel fileChannel;

    public FileOperator(FileChannel fileChannel) {
        j.checkNotNullParameter(fileChannel, "fileChannel");
        this.fileChannel = fileChannel;
    }

    public final void read(long j7, C0870l sink, long j8) {
        j.checkNotNullParameter(sink, "sink");
        if (j8 < 0) {
            throw new IndexOutOfBoundsException();
        }
        long j9 = j7;
        long j10 = j8;
        while (j10 > 0) {
            long transferTo = this.fileChannel.transferTo(j9, j10, sink);
            j9 += transferTo;
            j10 -= transferTo;
        }
    }

    public final void write(long j7, C0870l source, long j8) throws IOException {
        j.checkNotNullParameter(source, "source");
        if (j8 < 0 || j8 > source.size()) {
            throw new IndexOutOfBoundsException();
        }
        long j9 = j7;
        long j10 = j8;
        while (j10 > 0) {
            long transferFrom = this.fileChannel.transferFrom(source, j9, j10);
            j9 += transferFrom;
            j10 -= transferFrom;
        }
    }
}
