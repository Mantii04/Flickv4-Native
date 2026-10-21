package okhttp3.internal.cache;

import e6.J;
import java.io.IOException;

/* loaded from: classes2.dex */
public interface CacheRequest {
    void abort();

    J body() throws IOException;
}
