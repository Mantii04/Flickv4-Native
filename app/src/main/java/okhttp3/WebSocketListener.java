package okhttp3;

import kotlin.jvm.internal.j;
import okio.ByteString;

/* loaded from: classes2.dex */
public abstract class WebSocketListener {
    public void onClosed(WebSocket webSocket, int i2, String reason) {
        j.checkNotNullParameter(webSocket, "webSocket");
        j.checkNotNullParameter(reason, "reason");
    }

    public void onClosing(WebSocket webSocket, int i2, String reason) {
        j.checkNotNullParameter(webSocket, "webSocket");
        j.checkNotNullParameter(reason, "reason");
    }

    public void onFailure(WebSocket webSocket, Throwable t6, Response response) {
        j.checkNotNullParameter(webSocket, "webSocket");
        j.checkNotNullParameter(t6, "t");
    }

    public void onMessage(WebSocket webSocket, String text) {
        j.checkNotNullParameter(webSocket, "webSocket");
        j.checkNotNullParameter(text, "text");
    }

    public void onOpen(WebSocket webSocket, Response response) {
        j.checkNotNullParameter(webSocket, "webSocket");
        j.checkNotNullParameter(response, "response");
    }

    public void onMessage(WebSocket webSocket, ByteString bytes) {
        j.checkNotNullParameter(webSocket, "webSocket");
        j.checkNotNullParameter(bytes, "bytes");
    }
}
