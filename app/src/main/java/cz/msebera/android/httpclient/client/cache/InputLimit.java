package cz.msebera.android.httpclient.client.cache;

/* loaded from: classes2.dex */
public class InputLimit {
    private boolean reached = false;
    private final long value;

    public InputLimit(long j7) {
        this.value = j7;
    }

    public long getValue() {
        return this.value;
    }

    public boolean isReached() {
        return this.reached;
    }

    public void reached() {
        this.reached = true;
    }
}
