package cz.msebera.android.httpclient.config;

import A.i;
import cz.msebera.android.httpclient.annotation.Contract;
import cz.msebera.android.httpclient.annotation.ThreadingBehavior;
import cz.msebera.android.httpclient.util.Args;

@Contract(threading = ThreadingBehavior.IMMUTABLE)
/* loaded from: classes2.dex */
public class SocketConfig implements Cloneable {
    public static final SocketConfig DEFAULT = new Builder().build();
    private final int backlogSize;
    private final int rcvBufSize;
    private final int sndBufSize;
    private final boolean soKeepAlive;
    private final int soLinger;
    private final boolean soReuseAddress;
    private final int soTimeout;
    private final boolean tcpNoDelay;

    public static class Builder {
        private int backlogSize;
        private int rcvBufSize;
        private int sndBufSize;
        private boolean soKeepAlive;
        private boolean soReuseAddress;
        private int soTimeout;
        private int soLinger = -1;
        private boolean tcpNoDelay = true;

        public SocketConfig build() {
            return new SocketConfig(this.soTimeout, this.soReuseAddress, this.soLinger, this.soKeepAlive, this.tcpNoDelay, this.sndBufSize, this.rcvBufSize, this.backlogSize);
        }

        public Builder setBacklogSize(int i2) {
            this.backlogSize = i2;
            return this;
        }

        public Builder setRcvBufSize(int i2) {
            this.rcvBufSize = i2;
            return this;
        }

        public Builder setSndBufSize(int i2) {
            this.sndBufSize = i2;
            return this;
        }

        public Builder setSoKeepAlive(boolean z6) {
            this.soKeepAlive = z6;
            return this;
        }

        public Builder setSoLinger(int i2) {
            this.soLinger = i2;
            return this;
        }

        public Builder setSoReuseAddress(boolean z6) {
            this.soReuseAddress = z6;
            return this;
        }

        public Builder setSoTimeout(int i2) {
            this.soTimeout = i2;
            return this;
        }

        public Builder setTcpNoDelay(boolean z6) {
            this.tcpNoDelay = z6;
            return this;
        }
    }

    public SocketConfig(int i2, boolean z6, int i7, boolean z7, boolean z8, int i8, int i9, int i10) {
        this.soTimeout = i2;
        this.soReuseAddress = z6;
        this.soLinger = i7;
        this.soKeepAlive = z7;
        this.tcpNoDelay = z8;
        this.sndBufSize = i8;
        this.rcvBufSize = i9;
        this.backlogSize = i10;
    }

    public static Builder copy(SocketConfig socketConfig) {
        Args.notNull(socketConfig, "Socket config");
        return new Builder().setSoTimeout(socketConfig.getSoTimeout()).setSoReuseAddress(socketConfig.isSoReuseAddress()).setSoLinger(socketConfig.getSoLinger()).setSoKeepAlive(socketConfig.isSoKeepAlive()).setTcpNoDelay(socketConfig.isTcpNoDelay()).setSndBufSize(socketConfig.getSndBufSize()).setRcvBufSize(socketConfig.getRcvBufSize()).setBacklogSize(socketConfig.getBacklogSize());
    }

    public static Builder custom() {
        return new Builder();
    }

    public int getBacklogSize() {
        return this.backlogSize;
    }

    public int getRcvBufSize() {
        return this.rcvBufSize;
    }

    public int getSndBufSize() {
        return this.sndBufSize;
    }

    public int getSoLinger() {
        return this.soLinger;
    }

    public int getSoTimeout() {
        return this.soTimeout;
    }

    public boolean isSoKeepAlive() {
        return this.soKeepAlive;
    }

    public boolean isSoReuseAddress() {
        return this.soReuseAddress;
    }

    public boolean isTcpNoDelay() {
        return this.tcpNoDelay;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("[soTimeout=");
        sb.append(this.soTimeout);
        sb.append(", soReuseAddress=");
        sb.append(this.soReuseAddress);
        sb.append(", soLinger=");
        sb.append(this.soLinger);
        sb.append(", soKeepAlive=");
        sb.append(this.soKeepAlive);
        sb.append(", tcpNoDelay=");
        sb.append(this.tcpNoDelay);
        sb.append(", sndBufSize=");
        sb.append(this.sndBufSize);
        sb.append(", rcvBufSize=");
        sb.append(this.rcvBufSize);
        sb.append(", backlogSize=");
        return i.m(sb, this.backlogSize, "]");
    }

    /* renamed from: clone, reason: merged with bridge method [inline-methods] */
    public SocketConfig m86clone() throws CloneNotSupportedException {
        return (SocketConfig) super.clone();
    }
}
