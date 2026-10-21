package okhttp3.internal.connection;

import e6.AbstractC0875q;
import e6.C0870l;
import e6.J;
import e6.L;
import e6.r;
import e6.w;
import java.io.IOException;
import java.net.ProtocolException;
import java.net.SocketException;
import kotlin.jvm.internal.j;
import okhttp3.EventListener;
import okhttp3.Headers;
import okhttp3.Request;
import okhttp3.RequestBody;
import okhttp3.Response;
import okhttp3.ResponseBody;
import okhttp3.internal.http.ExchangeCodec;
import okhttp3.internal.http.RealResponseBody;
import okhttp3.internal.ws.RealWebSocket;

/* loaded from: classes2.dex */
public final class Exchange {
    private final RealCall call;
    private final ExchangeCodec codec;
    private final RealConnection connection;
    private final EventListener eventListener;
    private final ExchangeFinder finder;
    private boolean hasFailure;
    private boolean isDuplex;

    public final class RequestBodySink extends AbstractC0875q {
        private long bytesReceived;
        private boolean closed;
        private boolean completed;
        private final long contentLength;
        final /* synthetic */ Exchange this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public RequestBodySink(Exchange exchange, J delegate, long j7) {
            super(delegate);
            j.checkNotNullParameter(delegate, "delegate");
            this.this$0 = exchange;
            this.contentLength = j7;
        }

        private final <E extends IOException> E complete(E e3) {
            if (this.completed) {
                return e3;
            }
            this.completed = true;
            return (E) this.this$0.bodyComplete(this.bytesReceived, false, true, e3);
        }

        @Override // e6.AbstractC0875q, e6.J, java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
            if (this.closed) {
                return;
            }
            this.closed = true;
            long j7 = this.contentLength;
            if (j7 != -1 && this.bytesReceived != j7) {
                throw new ProtocolException("unexpected end of stream");
            }
            try {
                super.close();
                complete(null);
            } catch (IOException e3) {
                throw complete(e3);
            }
        }

        @Override // e6.AbstractC0875q, e6.J, java.io.Flushable
        public void flush() throws IOException {
            try {
                super.flush();
            } catch (IOException e3) {
                throw complete(e3);
            }
        }

        @Override // e6.AbstractC0875q, e6.J
        public void write(C0870l source, long j7) throws IOException {
            j.checkNotNullParameter(source, "source");
            if (this.closed) {
                throw new IllegalStateException("closed");
            }
            long j8 = this.contentLength;
            if (j8 == -1 || this.bytesReceived + j7 <= j8) {
                try {
                    super.write(source, j7);
                    this.bytesReceived += j7;
                    return;
                } catch (IOException e3) {
                    throw complete(e3);
                }
            }
            throw new ProtocolException("expected " + this.contentLength + " bytes but received " + (this.bytesReceived + j7));
        }
    }

    public final class ResponseBodySource extends r {
        private long bytesReceived;
        private boolean closed;
        private boolean completed;
        private final long contentLength;
        private boolean invokeStartEvent;
        final /* synthetic */ Exchange this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public ResponseBodySource(Exchange exchange, L delegate, long j7) {
            super(delegate);
            j.checkNotNullParameter(delegate, "delegate");
            this.this$0 = exchange;
            this.contentLength = j7;
            this.invokeStartEvent = true;
            if (j7 == 0) {
                complete(null);
            }
        }

        @Override // e6.r, e6.L, java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
            if (this.closed) {
                return;
            }
            this.closed = true;
            try {
                super.close();
                complete(null);
            } catch (IOException e3) {
                throw complete(e3);
            }
        }

        public final <E extends IOException> E complete(E e3) {
            if (this.completed) {
                return e3;
            }
            this.completed = true;
            if (e3 == null && this.invokeStartEvent) {
                this.invokeStartEvent = false;
                this.this$0.getEventListener$okhttp().responseBodyStart(this.this$0.getCall$okhttp());
            }
            return (E) this.this$0.bodyComplete(this.bytesReceived, true, false, e3);
        }

        @Override // e6.r, e6.L
        public long read(C0870l sink, long j7) throws IOException {
            j.checkNotNullParameter(sink, "sink");
            if (this.closed) {
                throw new IllegalStateException("closed");
            }
            try {
                long read = delegate().read(sink, j7);
                if (this.invokeStartEvent) {
                    this.invokeStartEvent = false;
                    this.this$0.getEventListener$okhttp().responseBodyStart(this.this$0.getCall$okhttp());
                }
                if (read == -1) {
                    complete(null);
                    return -1L;
                }
                long j8 = this.bytesReceived + read;
                long j9 = this.contentLength;
                if (j9 != -1 && j8 > j9) {
                    throw new ProtocolException("expected " + this.contentLength + " bytes but received " + j8);
                }
                this.bytesReceived = j8;
                if (j8 == j9) {
                    complete(null);
                }
                return read;
            } catch (IOException e3) {
                throw complete(e3);
            }
        }
    }

    public Exchange(RealCall call, EventListener eventListener, ExchangeFinder finder, ExchangeCodec codec) {
        j.checkNotNullParameter(call, "call");
        j.checkNotNullParameter(eventListener, "eventListener");
        j.checkNotNullParameter(finder, "finder");
        j.checkNotNullParameter(codec, "codec");
        this.call = call;
        this.eventListener = eventListener;
        this.finder = finder;
        this.codec = codec;
        this.connection = codec.getConnection();
    }

    private final void trackFailure(IOException iOException) {
        this.hasFailure = true;
        this.finder.trackFailure(iOException);
        this.codec.getConnection().trackFailure$okhttp(this.call, iOException);
    }

    public final <E extends IOException> E bodyComplete(long j7, boolean z6, boolean z7, E e3) {
        if (e3 != null) {
            trackFailure(e3);
        }
        if (z7) {
            if (e3 != null) {
                this.eventListener.requestFailed(this.call, e3);
            } else {
                this.eventListener.requestBodyEnd(this.call, j7);
            }
        }
        if (z6) {
            if (e3 != null) {
                this.eventListener.responseFailed(this.call, e3);
            } else {
                this.eventListener.responseBodyEnd(this.call, j7);
            }
        }
        return (E) this.call.messageDone$okhttp(this, z7, z6, e3);
    }

    public final void cancel() {
        this.codec.cancel();
    }

    public final J createRequestBody(Request request, boolean z6) throws IOException {
        j.checkNotNullParameter(request, "request");
        this.isDuplex = z6;
        RequestBody body = request.body();
        j.checkNotNull(body);
        long contentLength = body.contentLength();
        this.eventListener.requestBodyStart(this.call);
        return new RequestBodySink(this, this.codec.createRequestBody(request, contentLength), contentLength);
    }

    public final void detachWithViolence() {
        this.codec.cancel();
        this.call.messageDone$okhttp(this, true, true, null);
    }

    public final void finishRequest() throws IOException {
        try {
            this.codec.finishRequest();
        } catch (IOException e3) {
            this.eventListener.requestFailed(this.call, e3);
            trackFailure(e3);
            throw e3;
        }
    }

    public final void flushRequest() throws IOException {
        try {
            this.codec.flushRequest();
        } catch (IOException e3) {
            this.eventListener.requestFailed(this.call, e3);
            trackFailure(e3);
            throw e3;
        }
    }

    public final RealCall getCall$okhttp() {
        return this.call;
    }

    public final RealConnection getConnection$okhttp() {
        return this.connection;
    }

    public final EventListener getEventListener$okhttp() {
        return this.eventListener;
    }

    public final ExchangeFinder getFinder$okhttp() {
        return this.finder;
    }

    public final boolean getHasFailure$okhttp() {
        return this.hasFailure;
    }

    public final boolean isCoalescedConnection$okhttp() {
        return !j.areEqual(this.finder.getAddress$okhttp().url().host(), this.connection.route().address().url().host());
    }

    public final boolean isDuplex$okhttp() {
        return this.isDuplex;
    }

    public final RealWebSocket.Streams newWebSocketStreams() throws SocketException {
        this.call.timeoutEarlyExit();
        return this.codec.getConnection().newWebSocketStreams$okhttp(this);
    }

    public final void noNewExchangesOnConnection() {
        this.codec.getConnection().noNewExchanges$okhttp();
    }

    public final void noRequestBody() {
        this.call.messageDone$okhttp(this, true, false, null);
    }

    public final ResponseBody openResponseBody(Response response) throws IOException {
        j.checkNotNullParameter(response, "response");
        try {
            String header$default = Response.header$default(response, "Content-Type", null, 2, null);
            long reportedContentLength = this.codec.reportedContentLength(response);
            return new RealResponseBody(header$default, reportedContentLength, w.buffer(new ResponseBodySource(this, this.codec.openResponseBodySource(response), reportedContentLength)));
        } catch (IOException e3) {
            this.eventListener.responseFailed(this.call, e3);
            trackFailure(e3);
            throw e3;
        }
    }

    public final Response.Builder readResponseHeaders(boolean z6) throws IOException {
        try {
            Response.Builder readResponseHeaders = this.codec.readResponseHeaders(z6);
            if (readResponseHeaders == null) {
                return readResponseHeaders;
            }
            readResponseHeaders.initExchange$okhttp(this);
            return readResponseHeaders;
        } catch (IOException e3) {
            this.eventListener.responseFailed(this.call, e3);
            trackFailure(e3);
            throw e3;
        }
    }

    public final void responseHeadersEnd(Response response) {
        j.checkNotNullParameter(response, "response");
        this.eventListener.responseHeadersEnd(this.call, response);
    }

    public final void responseHeadersStart() {
        this.eventListener.responseHeadersStart(this.call);
    }

    public final Headers trailers() throws IOException {
        return this.codec.trailers();
    }

    public final void webSocketUpgradeFailed() {
        bodyComplete(-1L, true, true, null);
    }

    public final void writeRequestHeaders(Request request) throws IOException {
        j.checkNotNullParameter(request, "request");
        try {
            this.eventListener.requestHeadersStart(this.call);
            this.codec.writeRequestHeaders(request);
            this.eventListener.requestHeadersEnd(this.call, request);
        } catch (IOException e3) {
            this.eventListener.requestFailed(this.call, e3);
            trackFailure(e3);
            throw e3;
        }
    }
}
