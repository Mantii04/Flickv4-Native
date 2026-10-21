package cz.msebera.android.httpclient.concurrent;

/* loaded from: classes2.dex */
public interface FutureCallback<T> {
    void cancelled();

    void completed(T t6);

    void failed(Exception exc);
}
