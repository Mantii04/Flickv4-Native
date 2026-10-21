package S2;

import android.util.Base64;
import com.google.android.datatransport.Priority;

/* loaded from: classes.dex */
public abstract class E {
    public static D builder() {
        return new m().setPriority(Priority.f9478b);
    }

    public abstract String getBackendName();

    public abstract byte[] getExtras();

    public abstract Priority getPriority();

    public boolean shouldUploadClientHealthMetrics() {
        return getExtras() != null;
    }

    public final String toString() {
        String backendName = getBackendName();
        Priority priority = getPriority();
        String encodeToString = getExtras() == null ? "" : Base64.encodeToString(getExtras(), 2);
        StringBuilder sb = new StringBuilder("TransportContext(");
        sb.append(backendName);
        sb.append(", ");
        sb.append(priority);
        sb.append(", ");
        return A.i.o(sb, encodeToString, ")");
    }

    public E withPriority(Priority priority) {
        return builder().setBackendName(getBackendName()).setPriority(priority).setExtras(getExtras()).build();
    }
}
