package P2;

import com.google.android.datatransport.Priority;

/* loaded from: classes.dex */
public abstract class c {
    public static <T> c ofData(int i2, T t6) {
        return new a(Integer.valueOf(i2), t6, Priority.f9478b);
    }

    public static <T> c ofTelemetry(int i2, T t6) {
        return new a(Integer.valueOf(i2), t6, Priority.f9479e);
    }

    public static <T> c ofUrgent(T t6) {
        return new a(null, t6, Priority.f9480f);
    }

    public abstract Integer getCode();

    public abstract Object getPayload();

    public abstract Priority getPriority();

    public static <T> c ofData(T t6) {
        return new a(null, t6, Priority.f9478b);
    }
}
