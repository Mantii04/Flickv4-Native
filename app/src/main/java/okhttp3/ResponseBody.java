package okhttp3;

import A.i;
import F5.a;
import H5.l;
import P5.c;
import e6.C0870l;
import e6.InterfaceC0872n;
import java.io.Closeable;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.Reader;
import java.nio.charset.Charset;
import kotlin.jvm.internal.g;
import kotlin.jvm.internal.j;
import okhttp3.internal.Util;
import okio.ByteString;
import u5.C1711j;

/* loaded from: classes2.dex */
public abstract class ResponseBody implements Closeable {
    public static final Companion Companion = new Companion(null);
    private Reader reader;

    public static final class BomAwareReader extends Reader {
        private final Charset charset;
        private boolean closed;
        private Reader delegate;
        private final InterfaceC0872n source;

        public BomAwareReader(InterfaceC0872n source, Charset charset) {
            j.checkNotNullParameter(source, "source");
            j.checkNotNullParameter(charset, "charset");
            this.source = source;
            this.charset = charset;
        }

        @Override // java.io.Reader, java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
            C1711j c1711j;
            this.closed = true;
            Reader reader = this.delegate;
            if (reader != null) {
                reader.close();
                c1711j = C1711j.f20329a;
            } else {
                c1711j = null;
            }
            if (c1711j == null) {
                this.source.close();
            }
        }

        @Override // java.io.Reader
        public int read(char[] cbuf, int i2, int i7) throws IOException {
            j.checkNotNullParameter(cbuf, "cbuf");
            if (this.closed) {
                throw new IOException("Stream closed");
            }
            Reader reader = this.delegate;
            if (reader == null) {
                reader = new InputStreamReader(this.source.inputStream(), Util.readBomAsCharset(this.source, this.charset));
                this.delegate = reader;
            }
            return reader.read(cbuf, i2, i7);
        }
    }

    public static final class Companion {
        public /* synthetic */ Companion(g gVar) {
            this();
        }

        public static /* synthetic */ ResponseBody create$default(Companion companion, String str, MediaType mediaType, int i2, Object obj) {
            if ((i2 & 1) != 0) {
                mediaType = null;
            }
            return companion.create(str, mediaType);
        }

        public final ResponseBody create(String str, MediaType mediaType) {
            j.checkNotNullParameter(str, "<this>");
            Charset charset = c.f2725b;
            if (mediaType != null) {
                Charset charset$default = MediaType.charset$default(mediaType, null, 1, null);
                if (charset$default == null) {
                    mediaType = MediaType.Companion.parse(mediaType + "; charset=utf-8");
                } else {
                    charset = charset$default;
                }
            }
            C0870l writeString = new C0870l().writeString(str, charset);
            return create(writeString, mediaType, writeString.size());
        }

        private Companion() {
        }

        public static /* synthetic */ ResponseBody create$default(Companion companion, byte[] bArr, MediaType mediaType, int i2, Object obj) {
            if ((i2 & 1) != 0) {
                mediaType = null;
            }
            return companion.create(bArr, mediaType);
        }

        public static /* synthetic */ ResponseBody create$default(Companion companion, ByteString byteString, MediaType mediaType, int i2, Object obj) {
            if ((i2 & 1) != 0) {
                mediaType = null;
            }
            return companion.create(byteString, mediaType);
        }

        public static /* synthetic */ ResponseBody create$default(Companion companion, InterfaceC0872n interfaceC0872n, MediaType mediaType, long j7, int i2, Object obj) {
            if ((i2 & 1) != 0) {
                mediaType = null;
            }
            if ((i2 & 2) != 0) {
                j7 = -1;
            }
            return companion.create(interfaceC0872n, mediaType, j7);
        }

        public final ResponseBody create(byte[] bArr, MediaType mediaType) {
            j.checkNotNullParameter(bArr, "<this>");
            return create(new C0870l().write(bArr), mediaType, bArr.length);
        }

        public final ResponseBody create(ByteString byteString, MediaType mediaType) {
            j.checkNotNullParameter(byteString, "<this>");
            return create(new C0870l().write(byteString), mediaType, byteString.size());
        }

        public final ResponseBody create(final InterfaceC0872n interfaceC0872n, final MediaType mediaType, final long j7) {
            j.checkNotNullParameter(interfaceC0872n, "<this>");
            return new ResponseBody() { // from class: okhttp3.ResponseBody$Companion$asResponseBody$1
                @Override // okhttp3.ResponseBody
                public long contentLength() {
                    return j7;
                }

                @Override // okhttp3.ResponseBody
                public MediaType contentType() {
                    return MediaType.this;
                }

                @Override // okhttp3.ResponseBody
                public InterfaceC0872n source() {
                    return interfaceC0872n;
                }
            };
        }

        public final ResponseBody create(MediaType mediaType, String content) {
            j.checkNotNullParameter(content, "content");
            return create(content, mediaType);
        }

        public final ResponseBody create(MediaType mediaType, byte[] content) {
            j.checkNotNullParameter(content, "content");
            return create(content, mediaType);
        }

        public final ResponseBody create(MediaType mediaType, ByteString content) {
            j.checkNotNullParameter(content, "content");
            return create(content, mediaType);
        }

        public final ResponseBody create(MediaType mediaType, long j7, InterfaceC0872n content) {
            j.checkNotNullParameter(content, "content");
            return create(content, mediaType, j7);
        }
    }

    private final Charset charset() {
        Charset charset;
        MediaType contentType = contentType();
        return (contentType == null || (charset = contentType.charset(c.f2725b)) == null) ? c.f2725b : charset;
    }

    private final <T> T consumeSource(l lVar, l lVar2) {
        long contentLength = contentLength();
        if (contentLength > 2147483647L) {
            throw new IOException(i.i("Cannot buffer entire body for content length: ", contentLength));
        }
        InterfaceC0872n source = source();
        try {
            T t6 = (T) lVar.invoke(source);
            kotlin.jvm.internal.i.finallyStart(1);
            a.closeFinally(source, null);
            kotlin.jvm.internal.i.finallyEnd(1);
            int intValue = ((Number) lVar2.invoke(t6)).intValue();
            if (contentLength == -1 || contentLength == intValue) {
                return t6;
            }
            throw new IOException("Content-Length (" + contentLength + ") and stream length (" + intValue + ") disagree");
        } finally {
        }
    }

    public static final ResponseBody create(InterfaceC0872n interfaceC0872n, MediaType mediaType, long j7) {
        return Companion.create(interfaceC0872n, mediaType, j7);
    }

    public final InputStream byteStream() {
        return source().inputStream();
    }

    public final ByteString byteString() throws IOException {
        long contentLength = contentLength();
        if (contentLength > 2147483647L) {
            throw new IOException(i.i("Cannot buffer entire body for content length: ", contentLength));
        }
        InterfaceC0872n source = source();
        try {
            ByteString readByteString = source.readByteString();
            a.closeFinally(source, null);
            int size = readByteString.size();
            if (contentLength == -1 || contentLength == size) {
                return readByteString;
            }
            throw new IOException("Content-Length (" + contentLength + ") and stream length (" + size + ") disagree");
        } finally {
        }
    }

    public final byte[] bytes() throws IOException {
        long contentLength = contentLength();
        if (contentLength > 2147483647L) {
            throw new IOException(i.i("Cannot buffer entire body for content length: ", contentLength));
        }
        InterfaceC0872n source = source();
        try {
            byte[] readByteArray = source.readByteArray();
            a.closeFinally(source, null);
            int length = readByteArray.length;
            if (contentLength == -1 || contentLength == length) {
                return readByteArray;
            }
            throw new IOException("Content-Length (" + contentLength + ") and stream length (" + length + ") disagree");
        } finally {
        }
    }

    public final Reader charStream() {
        Reader reader = this.reader;
        if (reader != null) {
            return reader;
        }
        BomAwareReader bomAwareReader = new BomAwareReader(source(), charset());
        this.reader = bomAwareReader;
        return bomAwareReader;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        Util.closeQuietly(source());
    }

    public abstract long contentLength();

    public abstract MediaType contentType();

    public abstract InterfaceC0872n source();

    public final String string() throws IOException {
        InterfaceC0872n source = source();
        try {
            String readString = source.readString(Util.readBomAsCharset(source, charset()));
            a.closeFinally(source, null);
            return readString;
        } finally {
        }
    }

    public static final ResponseBody create(String str, MediaType mediaType) {
        return Companion.create(str, mediaType);
    }

    public static final ResponseBody create(MediaType mediaType, long j7, InterfaceC0872n interfaceC0872n) {
        return Companion.create(mediaType, j7, interfaceC0872n);
    }

    public static final ResponseBody create(MediaType mediaType, String str) {
        return Companion.create(mediaType, str);
    }

    public static final ResponseBody create(MediaType mediaType, ByteString byteString) {
        return Companion.create(mediaType, byteString);
    }

    public static final ResponseBody create(MediaType mediaType, byte[] bArr) {
        return Companion.create(mediaType, bArr);
    }

    public static final ResponseBody create(ByteString byteString, MediaType mediaType) {
        return Companion.create(byteString, mediaType);
    }

    public static final ResponseBody create(byte[] bArr, MediaType mediaType) {
        return Companion.create(bArr, mediaType);
    }
}
