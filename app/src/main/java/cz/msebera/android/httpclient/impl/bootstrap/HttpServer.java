package cz.msebera.android.httpclient.impl.bootstrap;

import A.i;
import androidx.media3.common.util.Log;
import cz.msebera.android.httpclient.ExceptionLogger;
import cz.msebera.android.httpclient.HttpConnectionFactory;
import cz.msebera.android.httpclient.config.SocketConfig;
import cz.msebera.android.httpclient.impl.DefaultBHttpServerConnection;
import cz.msebera.android.httpclient.protocol.HttpService;
import java.io.IOException;
import java.net.InetAddress;
import java.net.ServerSocket;
import java.util.Iterator;
import java.util.concurrent.SynchronousQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicReference;
import javax.net.ServerSocketFactory;
import javax.net.ssl.SSLServerSocket;

/* loaded from: classes2.dex */
public class HttpServer {
    private final HttpConnectionFactory<? extends DefaultBHttpServerConnection> connectionFactory;
    private final ExceptionLogger exceptionLogger;
    private final HttpService httpService;
    private final InetAddress ifAddress;
    private final ThreadPoolExecutor listenerExecutorService;
    private final int port;
    private volatile RequestListener requestListener;
    private volatile ServerSocket serverSocket;
    private final ServerSocketFactory serverSocketFactory;
    private final SocketConfig socketConfig;
    private final SSLServerSetupHandler sslSetupHandler;
    private final AtomicReference<Status> status;
    private final WorkerPoolExecutor workerExecutorService;
    private final ThreadGroup workerThreads;

    public enum Status {
        READY,
        ACTIVE,
        STOPPING
    }

    public HttpServer(int i2, InetAddress inetAddress, SocketConfig socketConfig, ServerSocketFactory serverSocketFactory, HttpService httpService, HttpConnectionFactory<? extends DefaultBHttpServerConnection> httpConnectionFactory, SSLServerSetupHandler sSLServerSetupHandler, ExceptionLogger exceptionLogger) {
        this.port = i2;
        this.ifAddress = inetAddress;
        this.socketConfig = socketConfig;
        this.serverSocketFactory = serverSocketFactory;
        this.httpService = httpService;
        this.connectionFactory = httpConnectionFactory;
        this.sslSetupHandler = sSLServerSetupHandler;
        this.exceptionLogger = exceptionLogger;
        this.listenerExecutorService = new ThreadPoolExecutor(1, 1, 0L, TimeUnit.MILLISECONDS, new SynchronousQueue(), new ThreadFactoryImpl(i.f(i2, "HTTP-listener-")));
        ThreadGroup threadGroup = new ThreadGroup("HTTP-workers");
        this.workerThreads = threadGroup;
        this.workerExecutorService = new WorkerPoolExecutor(0, Log.LOG_LEVEL_OFF, 1L, TimeUnit.SECONDS, new SynchronousQueue(), new ThreadFactoryImpl("HTTP-worker", threadGroup));
        this.status = new AtomicReference<>(Status.READY);
    }

    public void awaitTermination(long j7, TimeUnit timeUnit) throws InterruptedException {
        this.workerExecutorService.awaitTermination(j7, timeUnit);
    }

    public InetAddress getInetAddress() {
        ServerSocket serverSocket = this.serverSocket;
        if (serverSocket != null) {
            return serverSocket.getInetAddress();
        }
        return null;
    }

    public int getLocalPort() {
        ServerSocket serverSocket = this.serverSocket;
        if (serverSocket != null) {
            return serverSocket.getLocalPort();
        }
        return -1;
    }

    public void shutdown(long j7, TimeUnit timeUnit) {
        stop();
        if (j7 > 0) {
            try {
                awaitTermination(j7, timeUnit);
            } catch (InterruptedException unused) {
                Thread.currentThread().interrupt();
            }
        }
        Iterator<Worker> it = this.workerExecutorService.getWorkers().iterator();
        while (it.hasNext()) {
            try {
                it.next().getConnection().shutdown();
            } catch (IOException e3) {
                this.exceptionLogger.log(e3);
            }
        }
    }

    public void start() throws IOException {
        AtomicReference<Status> atomicReference = this.status;
        Status status = Status.READY;
        Status status2 = Status.ACTIVE;
        while (!atomicReference.compareAndSet(status, status2)) {
            if (atomicReference.get() != status) {
                return;
            }
        }
        this.serverSocket = this.serverSocketFactory.createServerSocket(this.port, this.socketConfig.getBacklogSize(), this.ifAddress);
        this.serverSocket.setReuseAddress(this.socketConfig.isSoReuseAddress());
        if (this.socketConfig.getRcvBufSize() > 0) {
            this.serverSocket.setReceiveBufferSize(this.socketConfig.getRcvBufSize());
        }
        if (this.sslSetupHandler != null && (this.serverSocket instanceof SSLServerSocket)) {
            this.sslSetupHandler.initialize((SSLServerSocket) this.serverSocket);
        }
        this.requestListener = new RequestListener(this.socketConfig, this.serverSocket, this.httpService, this.connectionFactory, this.exceptionLogger, this.workerExecutorService);
        this.listenerExecutorService.execute(this.requestListener);
    }

    public void stop() {
        AtomicReference<Status> atomicReference = this.status;
        Status status = Status.ACTIVE;
        Status status2 = Status.STOPPING;
        while (!atomicReference.compareAndSet(status, status2)) {
            if (atomicReference.get() != status) {
                return;
            }
        }
        this.listenerExecutorService.shutdown();
        this.workerExecutorService.shutdown();
        RequestListener requestListener = this.requestListener;
        if (requestListener != null) {
            try {
                requestListener.terminate();
            } catch (IOException e3) {
                this.exceptionLogger.log(e3);
            }
        }
        this.workerThreads.interrupt();
    }
}
