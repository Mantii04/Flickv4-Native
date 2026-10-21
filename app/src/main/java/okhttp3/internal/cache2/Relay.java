package okhttp3.internal.cache2;

import e6.C0870l;
import e6.C0873o;
import e6.L;
import e6.O;
import java.io.File;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.nio.channels.FileChannel;
import kotlin.jvm.internal.g;
import kotlin.jvm.internal.j;
import okhttp3.internal.Util;
import okio.ByteString;

/* loaded from: classes2.dex */
public final class Relay {
    public static final Companion Companion = new Companion(null);
    private static final long FILE_HEADER_SIZE = 32;
    public static final ByteString PREFIX_CLEAN;
    public static final ByteString PREFIX_DIRTY;
    private static final int SOURCE_FILE = 2;
    private static final int SOURCE_UPSTREAM = 1;
    private final C0870l buffer;
    private final long bufferMaxSize;
    private boolean complete;
    private RandomAccessFile file;
    private final ByteString metadata;
    private int sourceCount;
    private L upstream;
    private final C0870l upstreamBuffer;
    private long upstreamPos;
    private Thread upstreamReader;

    public static final class Companion {
        public /* synthetic */ Companion(g gVar) {
            this();
        }

        public final Relay edit(File file, L upstream, ByteString metadata, long j7) throws IOException {
            j.checkNotNullParameter(file, "file");
            j.checkNotNullParameter(upstream, "upstream");
            j.checkNotNullParameter(metadata, "metadata");
            RandomAccessFile randomAccessFile = new RandomAccessFile(file, "rw");
            Relay relay = new Relay(randomAccessFile, upstream, 0L, metadata, j7, null);
            randomAccessFile.setLength(0L);
            relay.writeHeader(Relay.PREFIX_DIRTY, -1L, -1L);
            return relay;
        }

        public final Relay read(File file) throws IOException {
            j.checkNotNullParameter(file, "file");
            RandomAccessFile randomAccessFile = new RandomAccessFile(file, "rw");
            FileChannel channel = randomAccessFile.getChannel();
            j.checkNotNullExpressionValue(channel, "randomAccessFile.channel");
            FileOperator fileOperator = new FileOperator(channel);
            C0870l c0870l = new C0870l();
            fileOperator.read(0L, c0870l, 32L);
            if (!j.areEqual(c0870l.readByteString(r11.size()), Relay.PREFIX_CLEAN)) {
                throw new IOException("unreadable cache file");
            }
            long readLong = c0870l.readLong();
            long readLong2 = c0870l.readLong();
            C0870l c0870l2 = new C0870l();
            fileOperator.read(32 + readLong, c0870l2, readLong2);
            return new Relay(randomAccessFile, null, readLong, c0870l2.readByteString(), 0L, null);
        }

        private Companion() {
        }
    }

    public final class RelaySource implements L {
        private FileOperator fileOperator;
        private long sourcePos;
        private final O timeout = new O();

        public RelaySource() {
            RandomAccessFile file = Relay.this.getFile();
            j.checkNotNull(file);
            FileChannel channel = file.getChannel();
            j.checkNotNullExpressionValue(channel, "file!!.channel");
            this.fileOperator = new FileOperator(channel);
        }

        @Override // e6.L, java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
            if (this.fileOperator == null) {
                return;
            }
            RandomAccessFile randomAccessFile = null;
            this.fileOperator = null;
            Relay relay = Relay.this;
            synchronized (relay) {
                relay.setSourceCount(relay.getSourceCount() - 1);
                if (relay.getSourceCount() == 0) {
                    RandomAccessFile file = relay.getFile();
                    relay.setFile(null);
                    randomAccessFile = file;
                }
            }
            if (randomAccessFile != null) {
                Util.closeQuietly(randomAccessFile);
            }
        }

        /* JADX WARN: Code restructure failed: missing block: B:17:0x0056, code lost:
        
            if (r0 != 2) goto L27;
         */
        /* JADX WARN: Code restructure failed: missing block: B:18:0x0058, code lost:
        
            r6 = java.lang.Math.min(r21, r19.this$0.getUpstreamPos() - r19.sourcePos);
            r2 = r19.fileOperator;
            kotlin.jvm.internal.j.checkNotNull(r2);
            r2.read(r19.sourcePos + 32, r20, r6);
            r19.sourcePos += r6;
         */
        /* JADX WARN: Code restructure failed: missing block: B:19:0x0075, code lost:
        
            return r6;
         */
        /* JADX WARN: Code restructure failed: missing block: B:23:0x0077, code lost:
        
            r0 = r19.this$0.getUpstream();
            kotlin.jvm.internal.j.checkNotNull(r0);
            r11 = r0.read(r19.this$0.getUpstreamBuffer(), r19.this$0.getBufferMaxSize());
         */
        /* JADX WARN: Code restructure failed: missing block: B:24:0x0092, code lost:
        
            if (r11 != (-1)) goto L41;
         */
        /* JADX WARN: Code restructure failed: missing block: B:25:0x0094, code lost:
        
            r0 = r19.this$0;
            r0.commit(r0.getUpstreamPos());
         */
        /* JADX WARN: Code restructure failed: missing block: B:26:0x009d, code lost:
        
            r2 = r19.this$0;
         */
        /* JADX WARN: Code restructure failed: missing block: B:27:0x009f, code lost:
        
            monitor-enter(r2);
         */
        /* JADX WARN: Code restructure failed: missing block: B:29:0x00a0, code lost:
        
            r2.setUpstreamReader(null);
            kotlin.jvm.internal.j.checkNotNull(r2, "null cannot be cast to non-null type java.lang.Object");
            r2.notifyAll();
         */
        /* JADX WARN: Code restructure failed: missing block: B:30:0x00ab, code lost:
        
            monitor-exit(r2);
         */
        /* JADX WARN: Code restructure failed: missing block: B:31:0x00ac, code lost:
        
            return -1;
         */
        /* JADX WARN: Code restructure failed: missing block: B:35:0x00b3, code lost:
        
            r6 = java.lang.Math.min(r11, r21);
            r19.this$0.getUpstreamBuffer().copyTo(r20, 0, r6);
            r19.sourcePos += r6;
            r13 = r19.fileOperator;
            kotlin.jvm.internal.j.checkNotNull(r13);
            r13.write(r19.this$0.getUpstreamPos() + 32, r19.this$0.getUpstreamBuffer().m88clone(), r11);
            r4 = r19.this$0;
         */
        /* JADX WARN: Code restructure failed: missing block: B:36:0x00e9, code lost:
        
            monitor-enter(r4);
         */
        /* JADX WARN: Code restructure failed: missing block: B:38:0x00ea, code lost:
        
            r4.getBuffer().write(r4.getUpstreamBuffer(), r11);
         */
        /* JADX WARN: Code restructure failed: missing block: B:39:0x0103, code lost:
        
            if (r4.getBuffer().size() <= r4.getBufferMaxSize()) goto L48;
         */
        /* JADX WARN: Code restructure failed: missing block: B:40:0x0105, code lost:
        
            r4.getBuffer().skip(r4.getBuffer().size() - r4.getBufferMaxSize());
         */
        /* JADX WARN: Code restructure failed: missing block: B:41:0x011c, code lost:
        
            r4.setUpstreamPos(r4.getUpstreamPos() + r11);
         */
        /* JADX WARN: Code restructure failed: missing block: B:42:0x0124, code lost:
        
            monitor-exit(r4);
         */
        /* JADX WARN: Code restructure failed: missing block: B:43:0x0125, code lost:
        
            r2 = r19.this$0;
         */
        /* JADX WARN: Code restructure failed: missing block: B:44:0x0127, code lost:
        
            monitor-enter(r2);
         */
        /* JADX WARN: Code restructure failed: missing block: B:46:0x0128, code lost:
        
            r2.setUpstreamReader(null);
            kotlin.jvm.internal.j.checkNotNull(r2, "null cannot be cast to non-null type java.lang.Object");
            r2.notifyAll();
         */
        /* JADX WARN: Code restructure failed: missing block: B:47:0x0133, code lost:
        
            monitor-exit(r2);
         */
        /* JADX WARN: Code restructure failed: missing block: B:48:0x0134, code lost:
        
            return r6;
         */
        /* JADX WARN: Code restructure failed: missing block: B:53:0x011a, code lost:
        
            r0 = move-exception;
         */
        /* JADX WARN: Code restructure failed: missing block: B:56:0x0139, code lost:
        
            throw r0;
         */
        /* JADX WARN: Code restructure failed: missing block: B:57:0x00b0, code lost:
        
            r0 = move-exception;
         */
        /* JADX WARN: Code restructure failed: missing block: B:58:0x013a, code lost:
        
            r2 = r19.this$0;
         */
        /* JADX WARN: Code restructure failed: missing block: B:59:0x013c, code lost:
        
            monitor-enter(r2);
         */
        /* JADX WARN: Code restructure failed: missing block: B:61:0x013d, code lost:
        
            r2.setUpstreamReader(null);
            kotlin.jvm.internal.j.checkNotNull(r2, "null cannot be cast to non-null type java.lang.Object");
            r2.notifyAll();
         */
        /* JADX WARN: Code restructure failed: missing block: B:63:0x0149, code lost:
        
            throw r0;
         */
        @Override // e6.L
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public long read(e6.C0870l r20, long r21) throws java.io.IOException {
            /*
                Method dump skipped, instructions count: 374
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: okhttp3.internal.cache2.Relay.RelaySource.read(e6.l, long):long");
        }

        @Override // e6.L
        public O timeout() {
            return this.timeout;
        }
    }

    static {
        C0873o c0873o = ByteString.f19159j;
        PREFIX_CLEAN = c0873o.encodeUtf8("OkHttp cache v1\n");
        PREFIX_DIRTY = c0873o.encodeUtf8("OkHttp DIRTY :(\n");
    }

    public /* synthetic */ Relay(RandomAccessFile randomAccessFile, L l7, long j7, ByteString byteString, long j8, g gVar) {
        this(randomAccessFile, l7, j7, byteString, j8);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void writeHeader(ByteString byteString, long j7, long j8) throws IOException {
        C0870l c0870l = new C0870l();
        c0870l.write(byteString);
        c0870l.writeLong(j7);
        c0870l.writeLong(j8);
        if (c0870l.size() != 32) {
            throw new IllegalArgumentException("Failed requirement.");
        }
        RandomAccessFile randomAccessFile = this.file;
        j.checkNotNull(randomAccessFile);
        FileChannel channel = randomAccessFile.getChannel();
        j.checkNotNullExpressionValue(channel, "file!!.channel");
        new FileOperator(channel).write(0L, c0870l, 32L);
    }

    private final void writeMetadata(long j7) throws IOException {
        C0870l c0870l = new C0870l();
        c0870l.write(this.metadata);
        RandomAccessFile randomAccessFile = this.file;
        j.checkNotNull(randomAccessFile);
        FileChannel channel = randomAccessFile.getChannel();
        j.checkNotNullExpressionValue(channel, "file!!.channel");
        new FileOperator(channel).write(32 + j7, c0870l, this.metadata.size());
    }

    public final void commit(long j7) throws IOException {
        writeMetadata(j7);
        RandomAccessFile randomAccessFile = this.file;
        j.checkNotNull(randomAccessFile);
        randomAccessFile.getChannel().force(false);
        writeHeader(PREFIX_CLEAN, j7, this.metadata.size());
        RandomAccessFile randomAccessFile2 = this.file;
        j.checkNotNull(randomAccessFile2);
        randomAccessFile2.getChannel().force(false);
        synchronized (this) {
            this.complete = true;
        }
        L l7 = this.upstream;
        if (l7 != null) {
            Util.closeQuietly(l7);
        }
        this.upstream = null;
    }

    public final C0870l getBuffer() {
        return this.buffer;
    }

    public final long getBufferMaxSize() {
        return this.bufferMaxSize;
    }

    public final boolean getComplete() {
        return this.complete;
    }

    public final RandomAccessFile getFile() {
        return this.file;
    }

    public final int getSourceCount() {
        return this.sourceCount;
    }

    public final L getUpstream() {
        return this.upstream;
    }

    public final C0870l getUpstreamBuffer() {
        return this.upstreamBuffer;
    }

    public final long getUpstreamPos() {
        return this.upstreamPos;
    }

    public final Thread getUpstreamReader() {
        return this.upstreamReader;
    }

    public final boolean isClosed() {
        return this.file == null;
    }

    public final ByteString metadata() {
        return this.metadata;
    }

    public final L newSource() {
        synchronized (this) {
            if (this.file == null) {
                return null;
            }
            this.sourceCount++;
            return new RelaySource();
        }
    }

    public final void setComplete(boolean z6) {
        this.complete = z6;
    }

    public final void setFile(RandomAccessFile randomAccessFile) {
        this.file = randomAccessFile;
    }

    public final void setSourceCount(int i2) {
        this.sourceCount = i2;
    }

    public final void setUpstream(L l7) {
        this.upstream = l7;
    }

    public final void setUpstreamPos(long j7) {
        this.upstreamPos = j7;
    }

    public final void setUpstreamReader(Thread thread) {
        this.upstreamReader = thread;
    }

    private Relay(RandomAccessFile randomAccessFile, L l7, long j7, ByteString byteString, long j8) {
        this.file = randomAccessFile;
        this.upstream = l7;
        this.upstreamPos = j7;
        this.metadata = byteString;
        this.bufferMaxSize = j8;
        this.upstreamBuffer = new C0870l();
        this.complete = this.upstream == null;
        this.buffer = new C0870l();
    }
}
