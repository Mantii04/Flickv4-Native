package okhttp3.internal.ws;

import e6.C0870l;
import e6.L;
import e6.u;
import java.io.Closeable;
import java.io.IOException;
import java.util.zip.Inflater;
import kotlin.jvm.internal.j;
import okhttp3.internal.http2.Settings;

/* loaded from: classes2.dex */
public final class MessageInflater implements Closeable {
    private final C0870l deflatedBytes;
    private final Inflater inflater;
    private final u inflaterSource;
    private final boolean noContextTakeover;

    public MessageInflater(boolean z6) {
        this.noContextTakeover = z6;
        C0870l c0870l = new C0870l();
        this.deflatedBytes = c0870l;
        Inflater inflater = new Inflater(true);
        this.inflater = inflater;
        this.inflaterSource = new u((L) c0870l, inflater);
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.inflaterSource.close();
    }

    public final void inflate(C0870l buffer) throws IOException {
        j.checkNotNullParameter(buffer, "buffer");
        if (this.deflatedBytes.size() != 0) {
            throw new IllegalArgumentException("Failed requirement.");
        }
        if (this.noContextTakeover) {
            this.inflater.reset();
        }
        this.deflatedBytes.writeAll(buffer);
        this.deflatedBytes.writeInt(Settings.DEFAULT_INITIAL_WINDOW_SIZE);
        long size = this.deflatedBytes.size() + this.inflater.getBytesRead();
        do {
            this.inflaterSource.readOrInflate(buffer, Long.MAX_VALUE);
        } while (this.inflater.getBytesRead() < size);
    }
}
