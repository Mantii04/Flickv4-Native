package C2;

/* loaded from: classes.dex */
public interface d {
    boolean canNotifyCleared(c cVar);

    boolean canNotifyStatusChanged(c cVar);

    boolean canSetImage(c cVar);

    d getRoot();

    boolean isAnyResourceSet();

    void onRequestFailed(c cVar);

    void onRequestSuccess(c cVar);
}
